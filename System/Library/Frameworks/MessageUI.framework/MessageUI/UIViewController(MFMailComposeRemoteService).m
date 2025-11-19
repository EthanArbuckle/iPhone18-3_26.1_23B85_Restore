@interface UIViewController(MFMailComposeRemoteService)
- (id)mf_dataForUICustomization;
- (void)mf_setDataForUICustomization:()MFMailComposeRemoteService;
@end

@implementation UIViewController(MFMailComposeRemoteService)

- (id)mf_dataForUICustomization
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 mf_keyPathsMapForUICustomization];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [a1 valueForKeyPath:v8];
        if (v9)
        {
          [v3 setObject:v9 forKey:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v3 mf_filterUsingMap:v2 inverse:0];
  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];

  return v11;
}

- (void)mf_setDataForUICustomization:()MFMailComposeRemoteService
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:0];
  v6 = [a1 mf_classesForUICustomization];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:*MEMORY[0x1E696A508]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a1 mf_keyPathsMapForUICustomization];
    v9 = [v7 mf_filterUsingMap:v8 inverse:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__UIViewController_MFMailComposeRemoteService__mf_setDataForUICustomization___block_invoke;
    v10[3] = &unk_1E806CA88;
    v10[4] = a1;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Unexpected format for UI customization data.", buf, 2u);
    }
  }
}

@end