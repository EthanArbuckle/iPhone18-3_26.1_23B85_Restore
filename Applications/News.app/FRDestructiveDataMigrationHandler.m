@interface FRDestructiveDataMigrationHandler
- (FRDestructiveDataMigrationHandler)init;
- (FRDestructiveDataMigrationHandler)initWithPrivateDataActionProvider:(id)a3 defaultsDataDestructionItems:(id)a4;
- (void)handleMigration;
@end

@implementation FRDestructiveDataMigrationHandler

- (void)handleMigration
{
  v3 = [(FRDestructiveDataMigrationHandler *)self privateDataActionProvider];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004D04;
  v4[3] = &unk_1000C5C60;
  v4[4] = self;
  [v3 consumeActionsUpToDestructiveActionSyncWithBlock:v4];
}

- (FRDestructiveDataMigrationHandler)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRDestructiveDataMigrationHandler init]";
    v8 = 2080;
    v9 = "FRDestructiveDataMigrationHandler.m";
    v10 = 1024;
    v11 = 29;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRDestructiveDataMigrationHandler init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRDestructiveDataMigrationHandler)initWithPrivateDataActionProvider:(id)a3 defaultsDataDestructionItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073C10();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100073CF0();
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = FRDestructiveDataMigrationHandler;
  v9 = [(FRDestructiveDataMigrationHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_privateDataActionProvider, a3);
    v11 = [v8 copy];
    defaultsDataDestructionItems = v10->_defaultsDataDestructionItems;
    v10->_defaultsDataDestructionItems = v11;
  }

  return v10;
}

@end