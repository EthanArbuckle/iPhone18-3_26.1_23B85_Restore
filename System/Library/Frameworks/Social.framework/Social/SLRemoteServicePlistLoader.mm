@interface SLRemoteServicePlistLoader
+ (id)allServices;
+ (id)loadRemoteServicesFromPlistResourceName:(id)a3 inBundle:(id)a4;
@end

@implementation SLRemoteServicePlistLoader

+ (id)allServices
{
  v2 = objc_opt_class();
  v3 = SLSocialFrameworkBundle();
  v4 = [v2 loadRemoteServicesFromPlistResourceName:@"SystemRemoteServices-iOS" inBundle:v3];

  return v4;
}

+ (id)loadRemoteServicesFromPlistResourceName:(id)a3 inBundle:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 pathForResource:a3 ofType:@"plist"];
  v8 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v7];
  if (v8)
  {
    v17 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [[SLRemoteService alloc] initWithServiceBundle:v6 socialInfoDictionary:v14];
            if (v15)
            {
              [v17 addObject:v15];
            }
          }

          else
          {
            _SLLog(v4, 3, @"Incorrect type for service info dict, service entries must be dictionaries");
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    _SLLog(v4, 3, @"Unable to load remote service info dicts from %@");
    v17 = 0;
  }

  return v17;
}

@end