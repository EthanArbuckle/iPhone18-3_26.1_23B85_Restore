@interface AFSetSettingsRequest
- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)a3;
@end

@implementation AFSetSettingsRequest

- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)a3
{
  v28 = a3;
  v29 = self;
  v4 = [(AFSetSettingsRequest *)self settings];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 type];
        v13 = sub_10012A9D8(v12);
        v14 = [STSettingChange alloc];
        v15 = [v11 value];
        v16 = [v14 initWithSettingType:v12 valueBeforeUpdate:v13 valueAfterUpdate:v15];

        [v5 addObject:v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  if ([(AFSetSettingsRequest *)v29 applyChanges])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v5;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          v23 = [v22 valueAfterUpdate];
          v24 = [v23 BOOLValue];

          v25 = [v22 settingType];
          if (v25 == 2)
          {
            _AXSVoiceOverTouchSetEnabled();
          }

          else
          {
            if (v25 != 1)
            {
              objc_exception_throw([[NSException alloc] initWithName:NSInvalidArgumentException reason:@"Unable to set setting with type Unknown" userInfo:&__NSDictionary0__struct]);
            }

            v26 = objc_alloc_init(RadiosPreferences);
            [v26 setAirplaneMode:v24];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }
  }

  if (v28)
  {
    v27 = [(AFSetSettingsRequest *)v29 createResponseWithSettingChanges:v5];
    v28[2](v28, v27, 0);
  }
}

@end