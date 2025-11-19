@interface MBApp
+ (id)appWithPropertyList:(id)a3;
+ (id)safeHarborWithPath:(id)a3;
+ (void)_addContainer:(id)a3 toArray:(id)a4 visited:(id)a5;
- (BOOL)isAppUpdating;
- (BOOL)isPlaceholder;
- (BOOL)isSystemApp;
- (NSArray)containers;
- (NSArray)groups;
- (NSArray)plugins;
- (NSString)entitlementsRelativePath;
- (id)domain;
@end

@implementation MBApp

+ (id)appWithPropertyList:(id)a3
{
  v3 = a3;
  v4 = [(MBContainer *)[MBApp alloc] initWithPropertyList:v3 volumeMountPoint:0];

  return v4;
}

+ (id)safeHarborWithPath:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:kMBSafeHarborInfoDirName];
  v4 = [v3 stringByAppendingPathComponent:kMBSafeHarborInfoPlistFilename];

  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];
  if (v5)
  {
    v6 = [MBApp appWithPropertyList:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)entitlementsRelativePath
{
  v2 = [(MBApp *)self bundleDir];
  v3 = sub_2484(v2);

  return v3;
}

- (NSArray)groups
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"GroupContainers", 0];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MBAppGroup alloc];
        v11 = [(MBContainer *)self volumeMountPoint];
        v12 = [(MBContainer *)v10 initWithPropertyList:v9 volumeMountPoint:v11];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)plugins
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"Plugins", 0];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MBAppPlugin alloc];
        v11 = [(MBContainer *)self volumeMountPoint];
        v12 = [(MBContainer *)v10 initWithPropertyList:v9 volumeMountPoint:v11];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (void)_addContainer:(id)a3 toArray:(id)a4 visited:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v10 identifier];
  if (([v8 containsObject:v9] & 1) == 0)
  {
    [v7 addObject:v10];
    [v8 addObject:v9];
  }
}

- (NSArray)containers
{
  v3 = objc_opt_new();
  v4 = +[NSMutableArray array];
  [v4 addObject:self];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(MBApp *)self groups];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [objc_opt_class() _addContainer:*(*(&v30 + 1) + 8 * i) toArray:v4 visited:v3];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(MBApp *)self plugins];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = *v27;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * j);
        [objc_opt_class() _addContainer:v13 toArray:v4 visited:v3];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v14 = [v13 groups];
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v23;
          do
          {
            for (k = 0; k != v16; k = k + 1)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [objc_opt_class() _addContainer:*(*(&v22 + 1) + 8 * k) toArray:v4 visited:v3];
            }

            v16 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
          }

          while (v16);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v11);
  }

  return v4;
}

- (BOOL)isAppUpdating
{
  v2 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"IsUpdating"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPlaceholder
{
  v2 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"IsPlaceholder"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isSystemApp
{
  v2 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"ApplicationType"];
  if ([v2 isEqualToString:@"System"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"Internal"];
  }

  return v3;
}

- (id)domain
{
  v3 = [(MBApp *)self bundleID];
  v4 = [(MBContainer *)self volumeMountPoint];
  v5 = [(MBContainer *)self containerDir];
  v6 = [MBDomain appDomainWithIdentifier:v3 volumeMountPoint:v4 rootPath:v5];

  v7 = sub_2D38();
  [v6 setRelativePathsToBackupAndRestore:v7];

  v8 = sub_2D7C();
  [v6 setRelativePathsNotToBackup:v8];

  v9 = sub_2DC0();
  [v6 setRelativePathsNotToRestore:v9];

  [v6 setShouldDigest:0];

  return v6;
}

@end