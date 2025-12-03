@interface PDBlockedApp
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDBlockedApp)init;
- (PDBlockedApp)initWithDatabaseRow:(id)row;
- (PDDatabaseValue)identityValue;
- (void)bindTo:(id)to;
@end

@implementation PDBlockedApp

- (PDBlockedApp)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (PDBlockedApp)initWithDatabaseRow:(id)row
{
  v4 = sub_10016D778(row, @"appIdentifier");
  v5 = sub_1000D52FC(self, v4);

  return v5;
}

- (void)bindTo:(id)to
{
  if (self)
  {
    appIdentifier = self->_appIdentifier;
  }

  else
  {
    appIdentifier = 0;
  }

  sub_1000982FC(to, appIdentifier, @"appIdentifier");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(databaseCopy, @"create table PDBlockedApp(   appIdentifier text not null)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDBlockedApp_appIdentifier on PDBlockedApp (appIdentifier)", 0, 0, 0))
  {
    v9 = 1;
    *finalVersion = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PDDatabaseValue)identityValue
{
  if (self)
  {
    self = self->_appIdentifier;
  }

  return self;
}

@end