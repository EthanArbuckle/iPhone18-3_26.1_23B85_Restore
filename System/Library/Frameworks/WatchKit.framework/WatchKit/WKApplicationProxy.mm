@interface WKApplicationProxy
+ (id)applicationsForContainerProxy:(id)proxy;
+ (id)gizmoAppBundleUrlWithPluginUrl:(id)url;
+ (id)watchAppBundleUrlWithContainerUrl:(id)url;
- (WKApplicationProxy)initWithBundleURL:(id)l;
@end

@implementation WKApplicationProxy

- (WKApplicationProxy)initWithBundleURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = WKApplicationProxy;
  v5 = [(WKApplicationProxy *)&v8 init];
  bundleURL = v5->_bundleURL;
  v5->_bundleURL = lCopy;

  return v5;
}

+ (id)applicationsForContainerProxy:(id)proxy
{
  v36 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  v34 = 0;
  bundleURL = [proxyCopy bundleURL];
  path = [bundleURL path];
  v7 = [path stringByAppendingPathComponent:@"Watch"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(path) = [defaultManager fileExistsAtPath:v7 isDirectory:&v34];
  v9 = v34;

  if (!path || (v9 & 1) == 0)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    plugInKitPlugins = [proxyCopy plugInKitPlugins];
    v18 = [plugInKitPlugins countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      selfCopy = self;
      v20 = *v31;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(plugInKitPlugins);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          protocol = [v22 protocol];
          v24 = [protocol isEqualToString:@"com.apple.watchkit"];

          if (v24)
          {
            bundleURL2 = [v22 bundleURL];
            v16 = [selfCopy gizmoAppBundleUrlWithPluginUrl:bundleURL2];

            if (v16)
            {
              v26 = [[WKApplicationProxy alloc] initWithBundleURL:v16];
              array = [MEMORY[0x277CBEB18] array];
              [array addObject:v26];
            }

            else
            {
              array = 0;
            }

            goto LABEL_17;
          }
        }

        v19 = [plugInKitPlugins countByEnumeratingWithState:&v30 objects:v35 count:16];
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
  bundleURL3 = [proxyCopy bundleURL];
  path2 = [bundleURL3 path];
  v13 = [path2 stringByAppendingPathComponent:@"Watch"];
  v14 = [v10 fileURLWithPath:v13];
  plugInKitPlugins = [self watchAppBundleUrlWithContainerUrl:v14];

  if (!plugInKitPlugins)
  {
LABEL_13:
    array = 0;
    goto LABEL_18;
  }

  v16 = [[WKApplicationProxy alloc] initWithBundleURL:plugInKitPlugins];
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:v16];
LABEL_17:

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)watchAppBundleUrlWithContainerUrl:(id)url
{
  urlCopy = url;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.app'"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [urlCopy path];
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:0];

  v9 = [v8 filteredArrayUsingPredicate:v5];
  if ([v9 count])
  {
    pathComponents = [urlCopy pathComponents];
    v11 = [pathComponents mutableCopy];

    firstObject = [v9 firstObject];
    [v11 addObject:firstObject];

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

+ (id)gizmoAppBundleUrlWithPluginUrl:(id)url
{
  urlCopy = url;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.app'"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [urlCopy path];
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:0];

  v9 = [v8 filteredArrayUsingPredicate:v5];
  if ([v9 count])
  {
    pathComponents = [urlCopy pathComponents];
    v11 = [pathComponents mutableCopy];

    firstObject = [v9 firstObject];
    [v11 addObject:firstObject];

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