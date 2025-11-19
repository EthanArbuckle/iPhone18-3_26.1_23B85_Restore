@interface PDBlockedApp
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDBlockedApp)init;
- (PDBlockedApp)initWithDatabaseRow:(id)a3;
- (PDDatabaseValue)identityValue;
- (void)bindTo:(id)a3;
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

- (PDBlockedApp)initWithDatabaseRow:(id)a3
{
  v4 = sub_10016D778(a3, @"appIdentifier");
  v5 = sub_1000D52FC(self, v4);

  return v5;
}

- (void)bindTo:(id)a3
{
  if (self)
  {
    appIdentifier = self->_appIdentifier;
  }

  else
  {
    appIdentifier = 0;
  }

  sub_1000982FC(a3, appIdentifier, @"appIdentifier");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table PDBlockedApp(   appIdentifier text not null)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDBlockedApp_appIdentifier on PDBlockedApp (appIdentifier)", 0, 0, 0))
  {
    v9 = 1;
    *a4 = 1;
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