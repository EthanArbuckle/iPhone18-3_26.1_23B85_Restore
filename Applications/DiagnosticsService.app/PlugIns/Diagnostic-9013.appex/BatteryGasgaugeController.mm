@interface BatteryGasgaugeController
- (BOOL)isGasgaugeLocked:(id *)a3;
- (BOOL)lockGasgauge:(id *)a3;
- (BOOL)openSmcAndConfirmKeyAvailable:(unsigned int *)a3 outError:(id *)a4;
- (id)runWithInputs:(id)a3 results:(id *)a4;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation BatteryGasgaugeController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[BatteryGasgaugeController setupWithInputs:responder:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v15, 0x20u);
  }

  v9 = objc_alloc_init(CRSmcController);
  smcCtrl = self->_smcCtrl;
  self->_smcCtrl = v9;

  v11 = handleForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_smcCtrl;
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SMC controller: %@", &v15, 0xCu);
  }

  [(BatteryGasgaugeController *)self setInputs:v6];
  v13 = [(BatteryGasgaugeController *)self inputs];

  if (!v13)
  {
    v14 = [(BatteryGasgaugeController *)self result];
    [v14 setStatusCode:&off_100004400];

    [(BatteryGasgaugeController *)self setFinished:1];
  }
}

- (id)runWithInputs:(id)a3 results:(id *)a4
{
  v6 = a3;
  v7 = [(BatteryGasgaugeController *)self inputs];

  if (!v7)
  {
    [(BatteryGasgaugeController *)self setInputs:v6];
  }

  v8 = [v6 ggLock];
  v9 = [v6 ggReset];
  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v38 = v8;
    v39 = 1024;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "doGgLock: %d, doGgReset: %d", buf, 0xEu);
  }

  if (v8)
  {
    v34 = 0;
    v11 = [(BatteryGasgaugeController *)self isGasgaugeLocked:&v34];
    v12 = v34;
    v13 = handleForCategory(0);
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000024D4(v12);
      }

LABEL_10:
      v31 = [v12 code];
      v15 = 0;
      v16 = 0;
      goto LABEL_14;
    }

    v29 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Gasgauge already locked, exiting...", buf, 2u);
      }

      v12 = 0;
      v31 = 0;
      v15 = 1;
      v16 = 1;
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Locking gasgauge...", buf, 2u);
      }

      v33 = 0;
      v30 = [(BatteryGasgaugeController *)self lockGasgauge:&v33];
      v12 = v33;
      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }

      v16 = 0;
      v31 = 0;
      v15 = 1;
    }
  }

  else
  {
    v17 = handleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Gasgauge locking not required, exiting...", buf, 2u);
    }

    v12 = 0;
    v15 = 0;
    v16 = 0;
    v31 = 0;
  }

LABEL_14:
  v35[0] = @"error";
  v18 = [v12 description];
  v19 = v18;
  if (!v18)
  {
    v19 = +[NSNull null];
  }

  v20 = a4;
  v36[0] = v19;
  v35[1] = @"errorCode";
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 code]);
  v22 = v21;
  if (!v21)
  {
    v22 = +[NSNull null];
  }

  v36[1] = v22;
  v35[2] = @"previousGasgaugeLockStatus";
  v23 = [NSNumber numberWithBool:v16];
  v36[2] = v23;
  v35[3] = @"currentGasgaugeLockStatus";
  v24 = [NSNumber numberWithBool:v15];
  v36[3] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];

  if (!v21)
  {
  }

  if (!v18)
  {
  }

  if (v20)
  {
    v26 = v25;
    *v20 = v25;
  }

  v27 = [NSNumber numberWithInteger:v32];

  return v27;
}

- (void)start
{
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[BatteryGasgaugeController start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(BatteryGasgaugeController *)self inputs];
  v9 = 0;
  v5 = [(BatteryGasgaugeController *)self runWithInputs:v4 results:&v9];
  v6 = v9;

  v7 = [(BatteryGasgaugeController *)self result];
  [v7 setStatusCode:v5];

  v8 = [(BatteryGasgaugeController *)self result];
  [v8 setData:v6];

  [(BatteryGasgaugeController *)self setFinished:1];
}

- (BOOL)isGasgaugeLocked:(id *)a3
{
  v22 = 0;
  v21 = 0;
  v5 = [(BatteryGasgaugeController *)self openSmcAndConfirmKeyAvailable:&v22 outError:&v21];
  v6 = v21;
  if (v5)
  {
    v7 = [(BatteryGasgaugeController *)self smcCtrl];
    v20 = 0;
    v8 = [v7 readSMCKey:v22 keyName:@"BMFL" rval:&v20];
    v9 = v20;

    v10 = handleForCategory(0);
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100002638();
      }

      v25 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithFormat:@"Failed to read SMC key %@, error: %d", @"BMFL", v8];
      v26 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v14 = [NSError errorWithDomain:@"com.apple.corerepair" code:-6 userInfo:v13];

      v15 = 0;
      v6 = v14;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v9 intValue];
        *buf = 67109120;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "rval: 0x%X", buf, 8u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 intValue] != 42300)
      {
        v12 = handleForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Gasgauge is unlocked", buf, 2u);
        }

        v15 = 0;
      }

      else
      {
        v12 = handleForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Gasgauge is locked", buf, 2u);
        }

        v15 = 1;
      }
    }
  }

  else
  {
    v12 = handleForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100002570(v6);
    }

    v15 = 0;
    v9 = 0;
  }

  if (v22)
  {
    v17 = [(BatteryGasgaugeController *)self smcCtrl];
    [v17 closeAppleSMC:v22];
  }

  if (a3)
  {
    v18 = v6;
    *a3 = v6;
  }

  return v15;
}

- (BOOL)lockGasgauge:(id *)a3
{
  v28 = 0;
  v27 = -23236;
  v26 = 0;
  v5 = [(BatteryGasgaugeController *)self openSmcAndConfirmKeyAvailable:&v28 outError:&v26];
  v6 = v26;
  if (v5)
  {
    v7 = [(BatteryGasgaugeController *)self smcCtrl];
    v8 = [v7 writeSMCKey:v28 keyName:@"BMFL" data:&v27 size:2];

    if (v8)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000026B4();
      }

      v33 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithFormat:@"Failed to write SMC key %@, error: %d", @"BMFL", v8];
      v34 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v12 = [NSError errorWithDomain:@"com.apple.corerepair" code:-1 userInfo:v11];

      v13 = 0;
      v14 = 0;
      goto LABEL_22;
    }

    v15 = [(BatteryGasgaugeController *)self smcCtrl];
    v25 = 0;
    v16 = [v15 readSMCKey:v28 keyName:@"BMFL" rval:&v25];
    v14 = v25;

    if (v16)
    {
      v17 = handleForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100002638();
      }

      v31 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithFormat:@"Failed to read SMC key %@, error: %d", @"BMFL", v16];
      v32 = v10;
      v18 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v12 = [NSError errorWithDomain:@"com.apple.corerepair" code:-1 userInfo:v18];

LABEL_21:
      v13 = 0;
LABEL_22:
      v6 = v12;
      goto LABEL_23;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 intValue] != 42300)
    {
      v19 = handleForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100002730();
      }

      v29 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithFormat:@"Failed to lock Gasgauge, rval: %@", v14];
      v30 = v10;
      v20 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v12 = [NSError errorWithDomain:@"com.apple.corerepair" code:-1 userInfo:v20];

      goto LABEL_21;
    }

    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enable Gasgauge Manufacturing Lock successfully", buf, 2u);
    }

    v13 = 1;
  }

  else
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100002570(v6);
    }

    v13 = 0;
    v14 = 0;
  }

LABEL_23:

  if (v28)
  {
    v21 = [(BatteryGasgaugeController *)self smcCtrl];
    [v21 closeAppleSMC:v28];
  }

  if (a3)
  {
    v22 = v6;
    *a3 = v6;
  }

  return v13;
}

- (BOOL)openSmcAndConfirmKeyAvailable:(unsigned int *)a3 outError:(id *)a4
{
  if (a3)
  {
    *a3 = 0;
    v7 = [(BatteryGasgaugeController *)self smcCtrl];
    v8 = [v7 openAppleSMC:a3 withRetry:2];

    if (v8)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000027A4();
      }

      v22 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithFormat:@"Failed to open SMC service, error: %d", v8];
      v23 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = -3;
    }

    else
    {
      v14 = [(BatteryGasgaugeController *)self smcCtrl];
      v15 = [v14 isSMCKeyAvailable:*a3 keyName:@"BMFL"];

      if (v15)
      {
        v13 = 0;
        v16 = 1;
        if (!a4)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v17 = handleForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100002818();
      }

      v10 = [NSString stringWithFormat:@"SMC key %@ is not available", @"BMFL", NSLocalizedDescriptionKey];
      v21 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = -4;
    }

    v13 = [NSError errorWithDomain:@"com.apple.corerepair" code:v12 userInfo:v11];
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"No input buffer provided for SMC port";
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.corerepair" code:-8 userInfo:v10];
  }

  v16 = 0;
  if (a4)
  {
LABEL_15:
    v18 = v13;
    *a4 = v13;
  }

LABEL_16:

  return v16;
}

@end