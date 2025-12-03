@interface EnvironmentMonitor
- (void)dealloc;
@end

@implementation EnvironmentMonitor

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  sharedMonitor = [v4 sharedMonitor];
  [sharedMonitor unregisterObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(EnvironmentMonitor *)&v7 dealloc];
}

@end