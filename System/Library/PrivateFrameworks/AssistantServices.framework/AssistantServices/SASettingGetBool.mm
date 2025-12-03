@interface SASettingGetBool
- (void)_ad_getSettingsRequestForHandler:(id)handler completion:(id)completion;
@end

@implementation SASettingGetBool

- (void)_ad_getSettingsRequestForHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    _ad_settingType = [(SASettingGetBool *)self _ad_settingType];
    if (_ad_settingType)
    {
      v7 = _ad_settingType;
      v8 = objc_alloc_init(AFGetSettingsRequest);
      v9 = [NSNumber numberWithInteger:v7];
      v11 = v9;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      [v8 setSettings:v10];
    }

    else
    {
      v8 = 0;
    }

    completionCopy[2](completionCopy, v8);
  }
}

@end