@interface PAOpenCellularData
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PAOpenCellularData

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
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
    [helperCopy openSensitiveURL:v10];

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

  dictionary = [v11 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end