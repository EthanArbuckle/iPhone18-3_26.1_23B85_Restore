@interface AFGetSettingsRequest
- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)handler;
@end

@implementation AFGetSettingsRequest

- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    settings = [(AFGetSettingsRequest *)self settings];
    v7 = [settings countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(settings);
          }

          integerValue = [*(*(&v15 + 1) + 8 * v10) integerValue];
          v12 = objc_alloc_init(STSetting);
          [v12 setType:integerValue];
          v13 = sub_10012A9D8(integerValue);
          [v12 setValue:v13];

          [v5 addObject:v12];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [settings countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    createResponse = [(AFGetSettingsRequest *)self createResponse];
    [createResponse setSettings:v5];
    handlerCopy[2](handlerCopy, createResponse, 0);
  }
}

@end