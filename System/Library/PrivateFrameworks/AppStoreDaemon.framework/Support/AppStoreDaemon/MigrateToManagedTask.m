@interface MigrateToManagedTask
- (MigrateToManagedTask)init;
- (void)main;
@end

@implementation MigrateToManagedTask

- (MigrateToManagedTask)init
{
  v6.receiver = self;
  v6.super_class = MigrateToManagedTask;
  v2 = [(Task *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9appstored6LogKey);
    logKey = v2->_logKey;
    v2->_logKey = v3;
  }

  return v2;
}

- (void)main
{
  v3 = +[LSDatabaseContext sharedDatabaseContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10025D230;
  v5[3] = &unk_10051B348;
  v5[4] = self;
  [v3 accessUsingBlock:v5];

  if (self)
  {
    self->super._success = 1;
    objc_setProperty_atomic_copy(self, v4, 0, 32);
  }
}

@end