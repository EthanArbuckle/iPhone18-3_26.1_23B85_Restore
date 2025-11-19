@interface DAUserInterruptAlertFactory
+ (id)sharedInstance;
+ (void)activateAlertForSuiteName:(id)a3 withHandler:(id)a4;
+ (void)reset;
- (DAUserInterruptAlertFactory)init;
- (void)activateAlertForSuiteName:(id)a3 withHandler:(id)a4;
@end

@implementation DAUserInterruptAlertFactory

+ (id)sharedInstance
{
  if (qword_100202DA8 != -1)
  {
    sub_100158A84();
  }

  v3 = qword_100202DA0;

  return v3;
}

+ (void)activateAlertForSuiteName:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedInstance];
  [v8 activateAlertForSuiteName:v7 withHandler:v6];
}

+ (void)reset
{
  v4 = [a1 sharedInstance];
  v2 = [v4 alertVisibleLock];
  [v2 lock];

  [v4 setVisibleAlert:0];
  v3 = [v4 alertVisibleLock];
  [v3 unlock];
}

- (DAUserInterruptAlertFactory)init
{
  v6.receiver = self;
  v6.super_class = DAUserInterruptAlertFactory;
  v2 = [(DAUserInterruptAlertFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    alertVisibleLock = v2->_alertVisibleLock;
    v2->_alertVisibleLock = v3;
  }

  return v2;
}

- (void)activateAlertForSuiteName:(id)a3 withHandler:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
  [v7 lock];

  v8 = [(DAUserInterruptAlertFactory *)self visibleAlert];

  if (!v8)
  {
    v9 = [[DAUserInterruptAlert alloc] initWithSuiteName:v14 withHandler:v6];
    [(DAUserInterruptAlertFactory *)self setVisibleAlert:v9];

    v10 = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
    [v10 unlock];

    v11 = [(DAUserInterruptAlertFactory *)self visibleAlert];
    [v11 activate];

    v12 = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
    [v12 lock];

    [(DAUserInterruptAlertFactory *)self setVisibleAlert:0];
  }

  v13 = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
  [v13 unlock];
}

@end