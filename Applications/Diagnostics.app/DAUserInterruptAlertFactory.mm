@interface DAUserInterruptAlertFactory
+ (id)sharedInstance;
+ (void)activateAlertForSuiteName:(id)name withHandler:(id)handler;
+ (void)reset;
- (DAUserInterruptAlertFactory)init;
- (void)activateAlertForSuiteName:(id)name withHandler:(id)handler;
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

+ (void)activateAlertForSuiteName:(id)name withHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  sharedInstance = [self sharedInstance];
  [sharedInstance activateAlertForSuiteName:nameCopy withHandler:handlerCopy];
}

+ (void)reset
{
  sharedInstance = [self sharedInstance];
  alertVisibleLock = [sharedInstance alertVisibleLock];
  [alertVisibleLock lock];

  [sharedInstance setVisibleAlert:0];
  alertVisibleLock2 = [sharedInstance alertVisibleLock];
  [alertVisibleLock2 unlock];
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

- (void)activateAlertForSuiteName:(id)name withHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  alertVisibleLock = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
  [alertVisibleLock lock];

  visibleAlert = [(DAUserInterruptAlertFactory *)self visibleAlert];

  if (!visibleAlert)
  {
    v9 = [[DAUserInterruptAlert alloc] initWithSuiteName:nameCopy withHandler:handlerCopy];
    [(DAUserInterruptAlertFactory *)self setVisibleAlert:v9];

    alertVisibleLock2 = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
    [alertVisibleLock2 unlock];

    visibleAlert2 = [(DAUserInterruptAlertFactory *)self visibleAlert];
    [visibleAlert2 activate];

    alertVisibleLock3 = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
    [alertVisibleLock3 lock];

    [(DAUserInterruptAlertFactory *)self setVisibleAlert:0];
  }

  alertVisibleLock4 = [(DAUserInterruptAlertFactory *)self alertVisibleLock];
  [alertVisibleLock4 unlock];
}

@end