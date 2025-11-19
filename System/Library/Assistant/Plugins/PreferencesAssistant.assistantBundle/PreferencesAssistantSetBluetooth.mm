@interface PreferencesAssistantSetBluetooth
- (PreferencesAssistantSetBluetooth)init;
- (void)_finish;
- (void)availableChanged:(id)a3;
- (void)dealloc;
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantSetBluetooth

- (PreferencesAssistantSetBluetooth)init
{
  v3 = PALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[PreferencesAssistantSetBluetooth init]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "######## %s", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = PreferencesAssistantSetBluetooth;
  v4 = [(PreferencesAssistantSetBluetooth *)&v7 init];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"availableChanged:" name:BluetoothAvailabilityChangedNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = PALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[PreferencesAssistantSetBluetooth dealloc]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "######## %s", buf, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = PreferencesAssistantSetBluetooth;
  [(PreferencesAssistantSetBluetooth *)&v5 dealloc];
}

- (void)performWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3DF4;
  v4[3] = &unk_10598;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_finish
{
  v3 = PALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[PreferencesAssistantSetBluetooth _finish]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "######## %s", &v9, 0xCu);
  }

  v4 = objc_alloc_init(SASettingBooleanEntity);
  [v4 setValue:self->_targetEnabledState];
  v5 = [NSNumber numberWithBool:!self->_targetEnabledState];
  [v4 setPreviousValue:v5];

  v6 = objc_alloc_init(SASettingSetBoolResponse);
  [v6 setSetting:v4];
  completion = self->_completion;
  v8 = [v6 dictionary];
  completion[2](completion, v8);
}

- (void)availableChanged:(id)a3
{
  v4 = a3;
  v5 = PALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 object];
    v7 = +[BluetoothManager sharedInstance];
    v11 = 138412546;
    v12 = v6;
    v13 = 1024;
    v14 = [v7 available];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "######## BT available note: %@; available: %d", &v11, 0x12u);
  }

  if (self->_waitingOnBT)
  {
    v8 = [v4 object];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      self->_waitingOnBT = 0;
      v10 = +[BluetoothManager sharedInstance];
      [v10 setEnabled:self->_targetEnabledState];

      [(PreferencesAssistantSetBluetooth *)self _finish];
    }
  }
}

@end