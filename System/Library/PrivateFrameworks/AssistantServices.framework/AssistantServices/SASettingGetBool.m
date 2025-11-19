@interface SASettingGetBool
- (void)_ad_getSettingsRequestForHandler:(id)a3 completion:(id)a4;
@end

@implementation SASettingGetBool

- (void)_ad_getSettingsRequestForHandler:(id)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(SASettingGetBool *)self _ad_settingType];
    if (v6)
    {
      v7 = v6;
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

    v5[2](v5, v8);
  }
}

@end