@interface AFGetSettingsRequest
- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)a3;
@end

@implementation AFGetSettingsRequest

- (void)_ad_handleSettingsRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(AFGetSettingsRequest *)self settings];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) integerValue];
          v12 = objc_alloc_init(STSetting);
          [v12 setType:v11];
          v13 = sub_10012A9D8(v11);
          [v12 setValue:v13];

          [v5 addObject:v12];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v14 = [(AFGetSettingsRequest *)self createResponse];
    [v14 setSettings:v5];
    v4[2](v4, v14, 0);
  }
}

@end