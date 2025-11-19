@interface XboxWirelessGamepadHIDServicePlugin
- (void)activate;
- (void)cancel;
- (void)dispatchPowerOnMessageCompletion:(id)a3;
- (void)handleVirtualKeyPayload:(int64_t)a3 withData:(id)a4 timestamp:(unint64_t)a5;
- (void)setupRawReportHandling;
@end

@implementation XboxWirelessGamepadHIDServicePlugin

- (void)activate
{
  v3 = _os_activity_create(&dword_0, "Activate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v6.receiver = self;
  v6.super_class = XboxWirelessGamepadHIDServicePlugin;
  [(GCGamepadHIDServicePlugin *)&v6 activate];
  v4 = [(GCGamepadHIDServicePlugin *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_222C;
  block[3] = &unk_10560;
  block[4] = self;
  dispatch_async(v4, block);

  os_activity_scope_leave(&state);
}

- (void)cancel
{
  v3 = _os_activity_create(&dword_0, "Cancel", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4.receiver = self;
  v4.super_class = XboxWirelessGamepadHIDServicePlugin;
  [(GCGamepadHIDServicePlugin *)&v4 cancel];
  os_activity_scope_leave(&state);
}

- (void)setupRawReportHandling
{
  objc_initWeak(&location, self);
  v3 = [(GCGamepadHIDServicePlugin *)self device];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_23A4;
  v4[3] = &unk_10588;
  objc_copyWeak(&v5, &location);
  [v3 setInputReportHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleVirtualKeyPayload:(int64_t)a3 withData:(id)a4 timestamp:(unint64_t)a5
{
  v8 = a4;
  v9 = a4;
  v10 = [v9 bytes];
  v11 = [v9 length];

  if (v11 <= 5)
  {
    sub_8470();
  }

  else
  {
    [(GCGamepadHIDServicePlugin *)self dispatchHomeButtonEventWithValue:v10[4] != 0 timestamp:a5];
    v17 = 0;
    v16 = 0;
    v13 = 8193;
    v14 = v10[2];
    v15 = 9;
    *(&v16 + 1) = 139271;
    sub_808C(self, &v13, 13, v12, 0);
  }
}

- (void)dispatchPowerOnMessageCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10F8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2F78(&dword_0, v6, v7, "Power on", v8, v9, v10, v11, v15, v16, 0);
  }

  *(&v16 + 3) = 8197;
  sequence = self->_sequence;
  do
  {
    v14 = sequence;
    sequence = 1;
  }

  while (!v14);
  self->_sequence = v14 + 1;
  BYTE5(v16) = v14;
  HIWORD(v16) = 1;
  sub_808C(self, &v16 + 3, 5, v12, v4);
}

@end