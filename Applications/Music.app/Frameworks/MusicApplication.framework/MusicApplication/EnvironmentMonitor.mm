@interface EnvironmentMonitor
- (void)dealloc;
@end

@implementation EnvironmentMonitor

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedMonitor];
  [v6 unregisterObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(EnvironmentMonitor *)&v7 dealloc];
}

@end