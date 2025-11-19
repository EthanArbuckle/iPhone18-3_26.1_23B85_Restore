@interface PDDashboardAppRegisterState
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (NSString)description;
- (PDDashboardAppRegisterState)init;
- (PDDashboardAppRegisterState)initWithDatabaseRow:(id)a3;
- (PDDatabaseValue)identityValue;
- (void)bindTo:(id)a3;
@end

@implementation PDDashboardAppRegisterState

- (PDDashboardAppRegisterState)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = PDDashboardAppRegisterState;
  v3 = [(PDDashboardAppRegisterState *)&v9 description];
  if (self)
  {
    v4 = self->_appIdentifier;
    state = self->_state;
  }

  else
  {
    v4 = 0;
    state = 0;
  }

  v6 = [NSNumber numberWithInteger:state];
  v7 = [NSString stringWithFormat:@"%@ appIdentifier: %@ state: %@", v3, v4, v6];

  return v7;
}

- (PDDashboardAppRegisterState)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = sub_10016D778(v4, @"appIdentifier");
  v6 = sub_100145108(self, v5);

  if (v6)
  {
    v7 = sub_10016D778(v4, @"state");
    v6->_state = [v7 integerValue];
  }

  return v6;
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = 1;
  }

  else if (sub_1000B9298(v7, @"create table PDDashboardAppRegisterState(   appIdentifier text not null,    state integer not null)", 0, 0, 0) && sub_1000B9298(v8, @"create unique index PDDashboardAppRegisterState_appIdentifier on PDDashboardAppRegisterState (appIdentifier)", 0, 0, 0))
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

  v5 = a3;
  sub_1000982FC(v5, appIdentifier, @"appIdentifier");
  v6 = [NSNumber numberWithInteger:self->_state];
  sub_1000982FC(v5, v6, @"state");
}

@end