@interface AFSetSettingsRequest
- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)handler;
@end

@implementation AFSetSettingsRequest

- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  settings = [(AFSetSettingsRequest *)self settings];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(settings, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = settings;
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
        type = [v11 type];
        v13 = sub_10012A9D8(type);
        v14 = [STSettingChange alloc];
        value = [v11 value];
        v16 = [v14 initWithSettingType:type valueBeforeUpdate:v13 valueAfterUpdate:value];

        [v5 addObject:v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  if ([(AFSetSettingsRequest *)selfCopy applyChanges])
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
          valueAfterUpdate = [v22 valueAfterUpdate];
          bOOLValue = [valueAfterUpdate BOOLValue];

          settingType = [v22 settingType];
          if (settingType == 2)
          {
            _AXSVoiceOverTouchSetEnabled();
          }

          else
          {
            if (settingType != 1)
            {
              objc_exception_throw([[NSException alloc] initWithName:NSInvalidArgumentException reason:@"Unable to set setting with type Unknown" userInfo:&__NSDictionary0__struct]);
            }

            v26 = objc_alloc_init(RadiosPreferences);
            [v26 setAirplaneMode:bOOLValue];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }
  }

  if (handlerCopy)
  {
    v27 = [(AFSetSettingsRequest *)selfCopy createResponseWithSettingChanges:v5];
    handlerCopy[2](handlerCopy, v27, 0);
  }
}

@end