@interface PAOpenCellularData
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation PAOpenCellularData

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PSCellularDataSettingsDetail deviceSupportsCellularData];
  v8 = PALogForCategory(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "########## PAOpenCellularData", buf, 2u);
    }

    v10 = +[PSCellularDataSettingsDetail preferencesURL];
    [v5 openSensitiveURL:v10];

    v11 = objc_alloc_init(SACommandSucceeded);
    v12 = 0;
  }

  else
  {
    if (v9)
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "########## Device does not support Cellular Data", v15, 2u);
    }

    v13 = objc_alloc_init(SACommandFailed);
    [v13 setErrorCode:SASettingPropertyUnsupportedByDeviceErrorCode];
    [v13 setReason:@"Device does not support Cellular Data"];
    v12 = v13;
    v11 = v12;
  }

  v14 = [v11 dictionary];
  v6[2](v6, v14);
}

@end