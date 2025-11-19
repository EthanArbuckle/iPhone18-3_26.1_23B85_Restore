@interface MBAppPlugin
- (NSArray)allAppGroupContainers;
- (NSArray)groups;
- (NSString)entitlementsRelativePath;
- (id)domain;
@end

@implementation MBAppPlugin

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

- (id)domain
{
  v3 = [(MBContainer *)self identifier];
  v4 = [(MBContainer *)self volumeMountPoint];
  v5 = [(MBContainer *)self containerDir];
  v6 = [MBDomain appPluginDomainWithIdentifier:v3 volumeMountPoint:v4 rootPath:v5];

  v7 = sub_2D38();
  [v6 setRelativePathsToBackupAndRestore:v7];

  v8 = sub_2D7C();
  [v6 setRelativePathsNotToBackup:v8];

  v9 = sub_2DC0();
  [v6 setRelativePathsNotToRestore:v9];

  [v6 setShouldDigest:0];

  return v6;
}

- (NSString)entitlementsRelativePath
{
  v2 = [(MBAppPlugin *)self bundleDir];
  v3 = sub_2484(v2);

  return v3;
}

- (NSArray)allAppGroupContainers
{
  v3 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(MBAppPlugin *)self groups];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 length];

        if (v11)
        {
          [v3 addObject:v9];
        }

        else
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(MBContainer *)self identifier];
            *buf = 138412546;
            v22 = v9;
            v23 = 2112;
            v24 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Found empty app group container identifier for %@ (%@)", buf, 0x16u);

            [(MBContainer *)self identifier];
            v16 = v15 = v9;
            _MBLog();
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  return v3;
}

@end