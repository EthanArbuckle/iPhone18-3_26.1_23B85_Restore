@interface AAUIQuotaResponse
- (NSArray)iCloudMediaUsage;
@end

@implementation AAUIQuotaResponse

- (NSArray)iCloudMediaUsage
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  [(AAQuotaInfoResponse *)self usage];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"media_key"];
        v10 = [v8 objectForKey:@"usage_in_bytes"];
        [v10 floatValue];
        v12 = v11;

        v13 = MEMORY[0x1E69DC888];
        v14 = [v8 objectForKey:@"display_color"];
        v15 = [v13 aaui_colorWithHexString:v14];

        v16 = [v8 objectForKey:@"display_label"];
        v17 = [AAUIiCloudMediaUsageInfo alloc];
        LODWORD(v18) = v12;
        v19 = [(AAUIiCloudMediaUsageInfo *)v17 initWithMediaType:v9 representativeColor:v15 bytesUsed:v18];
        [(AAUIiCloudMediaUsageInfo *)v19 setDisplayLabel:v16];
        [v3 addObject:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = [v3 copy];

  return v20;
}

@end