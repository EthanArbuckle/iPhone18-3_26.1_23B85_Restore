@interface WISServicePredictionRelayAdaptor
+ (id)create;
- (WISServicePredictionRelayAdaptor)init;
- (WISServicePredictionRelayAdaptorDelegate)delegate;
- (id)cellFromCellMonitorInfo:(id)a3;
- (unint64_t)_CTRadioStateToRadioState:(int)a3;
- (unint64_t)_registrationStringToRegistrationState:(id)a3;
- (unint64_t)fetchedRegistrationState;
- (unint64_t)registrationState;
- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5;
- (void)triggerAirplaneModeFetch;
@end

@implementation WISServicePredictionRelayAdaptor

- (WISServicePredictionRelayAdaptorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)create
{
  v2 = objc_alloc_init(WISServicePredictionRelayAdaptor);
  v3 = +[TelephonyStateRelay sharedInstance];
  [v3 addTelephonyStateDelegate:v2 withQueue:{dispatch_get_global_queue(0, 0)}];

  return v2;
}

- (WISServicePredictionRelayAdaptor)init
{
  v3.receiver = self;
  v3.super_class = WISServicePredictionRelayAdaptor;
  return [(WISServicePredictionRelayAdaptor *)&v3 init];
}

- (void)triggerAirplaneModeFetch
{
  v3 = +[TelephonyStateRelay sharedInstance];
  [v3 getAirplaneModeStatus:self];
}

- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(WISServicePredictionRelayAdaptor *)self delegate];
  v11 = +[TelephonyStateRelay sharedInstance];
  if (a4 <= 7)
  {
    if (a4)
    {
      if (a4 != 3)
      {
        if (a4 == 7)
        {
          [v10 airplaneModeDidUpdate:{objc_msgSend(v9, "BOOLValue")}];
        }

        goto LABEL_28;
      }

      if (![WISTelephonyUtils isValidContext:v8])
      {
        goto LABEL_28;
      }

      v12 = [v11 fetchDataSimRegistrationStatus];
      [v10 registrationStatusDidUpdateWithState:{-[WISServicePredictionRelayAdaptor _registrationStringToRegistrationState:](self, "_registrationStringToRegistrationState:", v12)}];
    }

    else
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      if (!v9)
      {
        goto LABEL_28;
      }

      v15 = [v8 uuid];
      v16 = [v11 lastDataSimContext];
      v17 = [v16 uuid];
      v18 = [v15 isEqual:v17];

      if (!v18)
      {
        goto LABEL_28;
      }

      v12 = [v9 legacyInfo];
      v19 = [(WISServicePredictionRelayAdaptor *)self cellFromCellMonitorInfo:v12];
      [v10 didChangeCellTo:v19];
    }

LABEL_25:

    goto LABEL_28;
  }

  if (a4 == 8)
  {
    if (!v8)
    {
      goto LABEL_28;
    }

    v12 = v9;
    v20 = [v8 uuid];
    v21 = [v11 lastDataSimContext];
    v22 = [v21 uuid];
    v23 = [v20 isEqual:v22];

    if (v23)
    {
      v24 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_1001FCFD0(v12, v24);
      }

      [v10 registrationStatusDidUpdateWithState:{-[WISServicePredictionRelayAdaptor _registrationStringToRegistrationState:](self, "_registrationStringToRegistrationState:", v12)}];
    }

    goto LABEL_25;
  }

  if (a4 != 14)
  {
    if (a4 != 18)
    {
      goto LABEL_28;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    v12 = v9;
    v13 = [v12 displayBars];
    if ([v13 intValue] < 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [v10 didUpdateSignalStrength:v14];
    goto LABEL_25;
  }

  if (v9)
  {
    [v10 radioStateDidChangeTo:{-[WISServicePredictionRelayAdaptor _CTRadioStateToRadioState:](self, "_CTRadioStateToRadioState:", objc_msgSend(v9, "intValue"))}];
  }

LABEL_28:
}

- (unint64_t)_registrationStringToRegistrationState:(id)a3
{
  v3 = a3;
  if ([WISTelephonyUtils isRegistrationDisplayStatusLimitedService:v3])
  {
    v4 = 2;
  }

  else if ([WISTelephonyUtils isRegistrationDisplayStatusRegisteredHome:v3])
  {
    v4 = 0;
  }

  else if ([WISTelephonyUtils isRegistrationDisplayStatusRegisteredRoaming:v3])
  {
    v4 = 1;
  }

  else if ([WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v3])
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (unint64_t)registrationState
{
  v3 = +[TelephonyStateRelay sharedInstance];
  v4 = [v3 lastDataSimRegistrationStatus];
  v5 = [(WISServicePredictionRelayAdaptor *)self _registrationStringToRegistrationState:v4];

  return v5;
}

- (unint64_t)fetchedRegistrationState
{
  v3 = +[TelephonyStateRelay sharedInstance];
  v4 = [v3 fetchDataSimRegistrationStatus];
  v5 = [(WISServicePredictionRelayAdaptor *)self _registrationStringToRegistrationState:v4];

  return v5;
}

- (id)cellFromCellMonitorInfo:(id)a3
{
  v3 = [WISTelephonyUtils getServingCellInfoFromArray:a3];
  if (v3)
  {
    v24 = 0;
    v4 = [WISTelephonyUtils extractCellInfoValue:v3 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:&v24];
    v5 = v24;
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v23 = 0;
      v9 = [WISTelephonyUtils extractCellInfoValue:v3 key:kCTCellMonitorMNC expectedClass:objc_opt_class() error:&v23];
      v10 = v23;
      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v22 = 0;
        v12 = [WISTelephonyUtils extractCellInfoValue:v3 key:kCTCellMonitorMCC expectedClass:objc_opt_class() error:&v22];
        v13 = v22;
        v7 = v13;
        v8 = 0;
        if (v12 && !v13)
        {
          v21 = 0;
          v14 = [WISTelephonyUtils extractCellInfoValue:v3 key:kCTCellMonitorBandInfo expectedClass:objc_opt_class() error:&v21];
          v15 = v21;
          v7 = v15;
          v8 = 0;
          if (v14 && !v15)
          {
            v20 = 0;
            v16 = [WISTelephonyUtils getArfcnFromCellInfo:v3 error:&v20];
            v17 = v20;
            if (v17)
            {
              v18 = v17;

              v16 = 0;
            }

            v8 = [[WISRelayAdaptorCell alloc] initWithMCC:v12 mnc:v9 rat:v4 band:v14 frequency:v16];

            v7 = 0;
          }
        }
      }

      else
      {
        v7 = v10;
        v8 = 0;
      }
    }

    else
    {
      v7 = v5;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_CTRadioStateToRadioState:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 6)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

@end