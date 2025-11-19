@interface BUIChargingStateProvider
- (BOOL)shouldShowCardForType:(signed __int16)a3;
- (BUIChargingStateProvider)init;
- (LastChargeInfoDelegate)lastChargeInfoDelegate;
- (id)debugDescription;
- (void)dealloc;
- (void)lastChargeInfoChanged;
- (void)stateCalculation;
@end

@implementation BUIChargingStateProvider

- (BUIChargingStateProvider)init
{
  v14.receiver = self;
  v14.super_class = BUIChargingStateProvider;
  v2 = [(ChargingStateProvider *)&v14 init];
  if (v2)
  {
    v3 = [PowerUISmartChargeClient alloc];
    v4 = [v3 initWithClientName:PowerUISmartChargeClientSettings];
    chargingClient = v2->_chargingClient;
    v2->_chargingClient = v4;

    objc_initWeak(&location, v2);
    if (!v2->_lastChargeToValuesChangedNotifyToken)
    {
      v6 = &_dispatch_main_q;
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_7328;
      v11 = &unk_163E28;
      objc_copyWeak(&v12, &location);
      notify_register_dispatch("com.apple.PerfPowerServices.lastChargingValueNotification", &v2->_lastChargeToValuesChangedNotifyToken, &_dispatch_main_q, &v8);

      objc_destroyWeak(&v12);
    }

    [(ChargingStateProvider *)v2 refreshData:v8];
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)stateCalculation
{
  v17.receiver = self;
  v17.super_class = BUIChargingStateProvider;
  [(ChargingStateProvider *)&v17 stateCalculation];
  [(BUIChargingStateProvider *)self setIsCriticalLevel:[(ChargingStateProvider *)self uisocLevel]<= +[PLModelingUtilities criticalBatteryLevel]];
  if ([(ChargingStateProvider *)self isExternallyConnected]|| ![(BUIChargingStateProvider *)self isCriticalLevel])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(ChargingStateProvider *)self isLowPowerModeEnabled]^ 1;
  }

  [(BUIChargingStateProvider *)self setShouldShowLowPowerModeCard:v3];
  if ([(ChargingStateProvider *)self isExternallyConnected]&& [(BUIChargingStateProvider *)self isOverridableType:[(ChargingStateProvider *)self chargingState]])
  {
    v4 = [(BUIChargingStateProvider *)self shouldShowCardForType:[(ChargingStateProvider *)self chargingState]];
    if (!v4)
    {
      [(ChargingStateProvider *)self setChargingState:1];
      [(ChargingStateProvider *)self setIsPaused:0];
      [(ChargingStateProvider *)self setIsEoc:0];
    }
  }

  else
  {
    v4 = 0;
  }

  [(BUIChargingStateProvider *)self setShouldShowOverrideCard:v4];
  if ([(ChargingStateProvider *)self isExternallyConnected])
  {
    [(BUIChargingStateProvider *)self setLastChargeTimeInterval:0];
    [(BUIChargingStateProvider *)self setLastChargeLevel:0];
  }

  else
  {
    v5 = [PLBatteryUIUtilities getDefaultValueForKey:@"lastChargingSystemTimestamp"];
    v6 = [PLBatteryUIUtilities getDefaultValueForKey:@"lastChargingValue"];
    v7 = v6;
    if (!self->_connectedStatusJustChanged)
    {
      goto LABEL_19;
    }

    v8 = [v6 intValue];
    if (v8 != [(ChargingStateProvider *)self uisocLevel])
    {
      goto LABEL_18;
    }

    v9 = +[NSDate date];
    [v9 timeIntervalSince1970];
    v11 = v10;
    [v5 doubleValue];
    v13 = v11 - v12;

    v14 = -v13;
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    if (v5 && v14 > 60.0)
    {
LABEL_18:
      v15 = 0;
      v16 = 0;
    }

    else
    {
LABEL_19:
      v15 = v5;
      v16 = v7;
    }

    [(BUIChargingStateProvider *)self setLastChargeTimeInterval:v15];
    [(BUIChargingStateProvider *)self setLastChargeLevel:v16];
  }
}

- (void)lastChargeInfoChanged
{
  [(ChargingStateProvider *)self computeStates];
  v3 = [(BUIChargingStateProvider *)self lastChargeInfoDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(BUIChargingStateProvider *)self lastChargeInfoDelegate];
    v5 = [(BUIChargingStateProvider *)self lastChargeLevel];
    v6 = [(BUIChargingStateProvider *)self lastChargeTimeInterval];
    [v7 lastChargeInfoChangedWithLevel:v5 dateInterval:v6];
  }
}

- (BOOL)shouldShowCardForType:(signed __int16)a3
{
  v3 = a3;
  v5 = [(BUIChargingStateProvider *)self isOverridableType:?];
  if (!v5)
  {
    return v5;
  }

  if (v3 > 7)
  {
    if (v3 != 8)
    {
      if (v3 == 10)
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      goto LABEL_15;
    }

    chargingClient = self->_chargingClient;
    v15 = 0;
    v7 = &v15;
    v8 = [(PowerUISmartChargeClient *)chargingClient isMCLCurrentlyEnabled:&v15];
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 7)
      {
        v6 = self->_chargingClient;
        v16 = 0;
        v7 = &v16;
        v8 = [(PowerUISmartChargeClient *)v6 isCECCurrentlyEnabled:&v16];
        goto LABEL_11;
      }

LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    v9 = self->_chargingClient;
    v17 = 0;
    v7 = &v17;
    v8 = [(PowerUISmartChargeClient *)v9 isSmartChargingCurrentlyEnabled:&v17];
  }

LABEL_11:
  v11 = v8;
  v12 = *v7;
  LOBYTE(v5) = v11 == &dword_0 + 1;
  if (v12)
  {
    v13 = BUILogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10F718(v12, v3, v13);
    }

    goto LABEL_15;
  }

  return v5;
}

- (id)debugDescription
{
  v11.receiver = self;
  v11.super_class = BUIChargingStateProvider;
  v3 = [(ChargingStateProvider *)&v11 debugDescription];
  v4 = [(BUIChargingStateProvider *)self isCriticalLevel];
  v5 = [(BUIChargingStateProvider *)self shouldShowOverrideCard];
  v6 = [(BUIChargingStateProvider *)self shouldShowLowPowerModeCard];
  v7 = [(BUIChargingStateProvider *)self lastChargeTimeInterval];
  v8 = [(BUIChargingStateProvider *)self lastChargeLevel];
  v9 = [v3 stringByAppendingFormat:@", isCriticalLevel: %d, shouldShowOverrideCard: %d, shouldShowLowPowerModeCard: %d, lastChargeTimeInterval: %@, lastChargeLevel: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (void)dealloc
{
  notify_cancel(self->_lastChargeToValuesChangedNotifyToken);
  v3.receiver = self;
  v3.super_class = BUIChargingStateProvider;
  [(ChargingStateProvider *)&v3 dealloc];
}

- (LastChargeInfoDelegate)lastChargeInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lastChargeInfoDelegate);

  return WeakRetained;
}

@end