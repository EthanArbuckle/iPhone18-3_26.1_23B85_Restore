@interface WKApplicationProxy
+ (id)applicationsForContainerProxy:(id)a3;
+ (id)gizmoAppBundleUrlWithPluginUrl:(id)a3;
+ (id)watchAppBundleUrlWithContainerUrl:(id)a3;
- (WKApplicationProxy)initWithBundleURL:(id)a3;
@end

@implementation WKApplicationProxy

- (WKApplicationProxy)initWithBundleURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WKApplicationProxy;
  v5 = [(WKApplicationProxy *)&v8 init];
  bundleURL = v5->_bundleURL;
  v5->_bundleURL = v4;

  return v5;
}

+ (id)applicationsForContainerProxy:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = 0;
  v5 = [v4 bundleURL];
  v6 = [v5 path];
  v7 = [v6 stringByAppendingPathComponent:@"Watch"];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v6) = [v8 fileExistsAtPath:v7 isDirectory:&v34];
  v9 = v34;

  if (!v6 || (v9 & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v4 plugInKitPlugins];
    v18 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v29 = a1;
      v20 = *v31;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          v23 = [v22 protocol];
          v24 = [v23 isEqualToString:@"com.apple.watchkit"];

          if (v24)
          {
            v25 = [v22 bundleURL];
            v16 = [v29 gizmoAppBundleUrlWithPluginUrl:v25];

            if (v16)
            {
              v26 = [[WKApplicationProxy alloc] initWithBundleURL:v16];
              v17 = [MEMORY[0x277CBEB18] array];
              [v17 addObject:v26];
            }

            else
            {
              v17 = 0;
            }

            goto LABEL_17;
          }
        }

        v19 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

  v10 = MEMORY[0x277CBEBC0];
  v11 = [v4 bundleURL];
  v12 = [v11 path];
  v13 = [v12 stringByAppendingPathComponent:@"Watch"];
  v14 = [v10 fileURLWithPath:v13];
  v15 = [a1 watchAppBundleUrlWithContainerUrl:v14];

  if (!v15)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_18;
  }

  v16 = [[WKApplicationProxy alloc] initWithBundleURL:v15];
  v17 = [MEMORY[0x277CBEB18] array];
  [v17 addObject:v16];
LABEL_17:

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)watchAppBundleUrlWithContainerUrl:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.app'"];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v3 path];
  v8 = [v6 contentsOfDirectoryAtPath:v7 error:0];

  v9 = [v8 filteredArrayUsingPredicate:v5];
  if ([v9 count])
  {
    v10 = [v3 pathComponents];
    v11 = [v10 mutableCopy];

    v12 = [v9 firstObject];
    [v11 addObject:v12];

    v13 = [v11 componentsJoinedByString:@"/"];
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13 isDirectory:1];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v14;
}

+ (id)gizmoAppBundleUrlWithPluginUrl:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.app'"];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v3 path];
  v8 = [v6 contentsOfDirectoryAtPath:v7 error:0];

  v9 = [v8 filteredArrayUsingPredicate:v5];
  if ([v9 count])
  {
    v10 = [v3 pathComponents];
    v11 = [v10 mutableCopy];

    v12 = [v9 firstObject];
    [v11 addObject:v12];

    v13 = [v11 componentsJoinedByString:@"/"];
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13 isDirectory:1];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v14;
}

@end