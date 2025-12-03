@interface NSDictionary(MFMailComposeRemoteService)
- (id)mf_filterUsingMap:()MFMailComposeRemoteService inverse:;
@end

@implementation NSDictionary(MFMailComposeRemoteService)

- (id)mf_filterUsingMap:()MFMailComposeRemoteService inverse:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [self allKeys];
  obj = allKeys;
  v7 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v9 = *v26;
    *&v8 = 138412546;
    v21 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v5 objectForKey:{v11, v21}];
        if (!v12)
        {
          v13 = MFLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v11;
            _os_log_impl(&dword_1BE819000, v13, OS_LOG_TYPE_DEFAULT, "#Warning Unexpected key (%@).", buf, 0xCu);
          }

          goto LABEL_23;
        }

        v13 = [self objectForKey:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = MFLogGeneral();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              *buf = v21;
              v30 = v13;
              v31 = 2112;
              v32 = v17;
              _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Value (%@) of unexpected class (%@).", buf, 0x16u);
            }

LABEL_22:

LABEL_23:
            v18 = 0;
            goto LABEL_24;
          }

          v14 = [v13 mf_filterUsingMap:v12 inverse:a4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v12 transformValue:v13 inverse:a4];
          }

          else
          {
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = MFLogGeneral();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v19 = NSStringFromClass(v12);
                *buf = v21;
                v30 = v13;
                v31 = 2112;
                v32 = v19;
                _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Value (%@) of unexpected class (%@).", buf, 0x16u);
              }

              goto LABEL_22;
            }

            v14 = v13;
          }
        }

        v18 = v14;

        if (v18)
        {
          [v22 setObject:v18 forKey:v11];
        }

LABEL_24:
      }

      allKeys = obj;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  return v22;
}

@end