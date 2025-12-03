@interface MIAppUserDataMigrator
- (BOOL)performMigration;
- (MIAppUserDataMigrator)init;
@end

@implementation MIAppUserDataMigrator

- (MIAppUserDataMigrator)init
{
  v3.receiver = self;
  v3.super_class = MIAppUserDataMigrator;
  result = [(MIAppUserDataMigrator *)&v3 init];
  if (result)
  {
    result->_countItemsToMigrate = 0;
  }

  return result;
}

- (BOOL)performMigration
{
  selfCopy = self;
  countItemsToMigrate = [(MIAppUserDataMigrator *)self countItemsToMigrate];
  _DMLogFunc();
  if (![(MIAppUserDataMigrator *)selfCopy countItemsToMigrate])
  {
    v20 = 1;
    if (container_perform_data_migration_for_current_user())
    {
      return v20;
    }

    goto LABEL_14;
  }

  v3 = 0;
  v29 = 1;
  v4 = &_DMLogFunc_ptr;
  v5 = &_DMLogFunc_ptr;
  v28 = selfCopy;
  do
  {
    v6 = [v4[50] stringWithUTF8String:{0, v23, v24, path4, v27}];
    v7 = objc_alloc(v5[44]);
    v31 = 0;
    v8 = [v7 initWithBundleIdentifier:v6 allowPlaceholder:1 error:&v31];
    v9 = v31;
    if (v8 && ([v8 dataContainerURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      dataContainerURL2 = [NSURL fileURLWithFileSystemRepresentation:0 isDirectory:0 relativeToURL:0];
      dataContainerURL = [v8 dataContainerURL];
      v13 = [v4[50] stringWithFileSystemRepresentation:0];
      v14 = [dataContainerURL URLByAppendingPathComponent:v13];

      path = [dataContainerURL2 path];
      path2 = [v14 path];
      _DMLogFunc();

      v16 = [MIFileManager defaultManager:v6];
      v30 = v9;
      v17 = [v16 moveItemIfExistsAtURL:dataContainerURL2 toURL:v14 error:&v30];
      v18 = v30;

      if ((v17 & 1) == 0)
      {
        path3 = [dataContainerURL2 path];
        path4 = [v14 path];
        v27 = v18;
        v23 = v6;
        v24 = path3;
        _DMLogFunc();

        v29 = 0;
      }

      v9 = v18;
      selfCopy = v28;
      v4 = &_DMLogFunc_ptr;
      v5 = &_DMLogFunc_ptr;
    }

    else
    {
      dataContainerURL2 = [v8 dataContainerURL];
      v24 = dataContainerURL2;
      path4 = v9;
      v23 = v6;
      _DMLogFunc();
      v29 = 0;
    }

    ++v3;
  }

  while (v3 < [(MIAppUserDataMigrator *)selfCopy countItemsToMigrate]);
  if ((container_perform_data_migration_for_current_user() & 1) == 0)
  {
LABEL_14:
    _DMLogFunc();
    goto LABEL_15;
  }

  if ((v29 & 1) == 0)
  {
LABEL_15:
    _DMLogFunc();
    return 0;
  }

  return 1;
}

@end