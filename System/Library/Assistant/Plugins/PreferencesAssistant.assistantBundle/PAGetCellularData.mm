@interface PAGetCellularData
- (void)performWithCompletion:(id)completion;
@end

@implementation PAGetCellularData

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[PSCellularDataSettingsDetail deviceSupportsCellularData])
  {
    v4 = +[PSCellularDataSettingsDetail isEnabled];
    v5 = objc_alloc_init(SASettingBooleanEntity);
    [v5 setValue:v4];
    v6 = objc_alloc_init(SASettingGetBoolResponse);
    [v6 setSetting:v5];
    v7 = PALogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"OFF";
      if (v4)
      {
        v8 = @"ON";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PAGetCellularData (%@)", &v10, 0xCu);
    }
  }

  else
  {
    v6 = objc_alloc_init(SACommandFailed);
    [v6 setErrorCode:SASettingPropertyUnsupportedByDeviceErrorCode];
    [v6 setReason:@"Device does not support Cellular Data"];
  }

  dictionary = [v6 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end