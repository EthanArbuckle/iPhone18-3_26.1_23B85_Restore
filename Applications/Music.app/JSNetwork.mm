@interface JSNetwork
- (void)dealloc;
@end

@implementation JSNetwork

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  sharedMonitor = [v4 sharedMonitor];
  [sharedMonitor unregisterObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(JSObject *)&v7 dealloc];
}

@end