@interface MagneticCoexIODelegateImpl
- (MagneticCoexIODelegateImpl)init;
- (id).cxx_construct;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation MagneticCoexIODelegateImpl

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 6) = 0;
  *(self + 14) = 0;
  return self;
}

- (void)stopObserving
{
  selfCopy = self;
  v3 = *sub_5544(25);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "MagneticCoexIODelegate.mm";
    *&buf[12] = 1024;
    *&buf[14] = 85;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unregistering WRM_UCMInterface client", buf, 0x12u);
  }

  v10 = &selfCopy;
  fObj = self->queue.fObj.fObj;
  v7 = v6 = fObj;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_37A13C;
  v13 = &unk_6DC438;
  v14 = &v10;
  dispatch_sync(v7, buf);

  v8 = *sub_5544(25);
  v9 = v8;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "MagneticCoexIODelegate.mm";
    *&buf[12] = 1024;
    *&buf[14] = 87;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopped magnetic coex mitigation listener", buf, 0x12u);
  }
}

- (void)startObserving
{
  v3 = objc_alloc_init(WRM_UCMInterface);
  iClient = self->iClient;
  self->iClient = v3;

  v5 = *sub_5544(25);
  v6 = v5;
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315394;
    v32 = "MagneticCoexIODelegate.mm";
    v33 = 1024;
    v34 = 56;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Registering WRM_UCMInterface client", &v31, 0x12u);
  }

  v7 = self->iClient;
  v8 = self->queue.fObj.fObj;
  [(WRM_UCMInterface *)v7 registerClient:41 queue:v8];

  v9 = [(WRM_UCMInterface *)self->iClient getWirelessFrequencyBandUpdatesForMIC:sub_37A5CC];
  v10 = [v9 objectForKeyedSubscript:@"NRBand41Enabled"];
  self->initialRFFlags.mitigateNRBand41 = [v10 BOOLValue];

  v11 = [v9 objectForKeyedSubscript:@"NRBand7xEnabled"];
  self->initialRFFlags.mitigateNRBand7x = [v11 BOOLValue];

  v12 = [v9 objectForKeyedSubscript:@"LTEBand40Enabled"];
  self->initialRFFlags.mitigateLTEBand40 = [v12 BOOLValue];

  v13 = [v9 objectForKeyedSubscript:@"LTEBand41Enabled"];
  self->initialRFFlags.mitigateLTEBand41 = [v13 BOOLValue];

  v14 = [v9 objectForKeyedSubscript:@"LTEBand42Enabled"];
  self->initialRFFlags.mitigateLTEBand42 = [v14 BOOLValue];

  v15 = [v9 objectForKeyedSubscript:@"LTEBand48Enabled"];
  self->initialRFFlags.mitigateLTEBand48 = [v15 BOOLValue];

  v16 = *sub_5544(25);
  v17 = v16;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315394;
    v32 = "MagneticCoexIODelegate.mm";
    v33 = 1024;
    v34 = 67;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started magnetic coex mitigation listener", &v31, 0x12u);
  }

  v18 = *sub_5544(25);
  v19 = v18;
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    mitigateNRBand41 = self->initialRFFlags.mitigateNRBand41;
    v21 = "false";
    v32 = "MagneticCoexIODelegate.mm";
    mitigateNRBand7x = self->initialRFFlags.mitigateNRBand7x;
    if (mitigateNRBand41)
    {
      v23 = "true";
    }

    else
    {
      v23 = "false";
    }

    v31 = 136315906;
    v33 = 1024;
    if (mitigateNRBand7x)
    {
      v21 = "true";
    }

    v34 = 72;
    v35 = 2080;
    v36 = v23;
    v37 = 2080;
    v38 = v21;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d The initial magnetic coex mitigation requirement was set to %s for NRBand41 and %s for NRBand7x", &v31, 0x26u);
  }

  v24 = *sub_5544(25);
  v25 = v24;
  if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v26 = "false";
    if (self->initialRFFlags.mitigateLTEBand40)
    {
      v27 = "true";
    }

    else
    {
      v27 = "false";
    }

    if (self->initialRFFlags.mitigateLTEBand41)
    {
      v28 = "true";
    }

    else
    {
      v28 = "false";
    }

    v32 = "MagneticCoexIODelegate.mm";
    mitigateLTEBand48 = self->initialRFFlags.mitigateLTEBand48;
    if (self->initialRFFlags.mitigateLTEBand42)
    {
      v30 = "true";
    }

    else
    {
      v30 = "false";
    }

    v31 = 136316418;
    v33 = 1024;
    if (mitigateLTEBand48)
    {
      v26 = "true";
    }

    v34 = 80;
    v35 = 2080;
    v36 = v27;
    v37 = 2080;
    v38 = v28;
    v39 = 2080;
    v40 = v30;
    v41 = 2080;
    v42 = v26;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d The initial magnetic coex mitigation requirement was set to %s for LTEBand40, %s for LTEBand41, %s for LTEBand42, %s for LTEBand48", &v31, 0x3Au);
  }
}

- (MagneticCoexIODelegateImpl)init
{
  v7.receiver = self;
  v7.super_class = MagneticCoexIODelegateImpl;
  v2 = [(MagneticCoexIODelegateImpl *)&v7 init];
  if (v2)
  {
    v3 = [NSString stringWithUTF8String:"com.apple.virtualaudio.wirelesscoexmanager"];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    fObj = v2->queue.fObj.fObj;
    v2->queue.fObj.fObj = v4;
  }

  return v2;
}

@end