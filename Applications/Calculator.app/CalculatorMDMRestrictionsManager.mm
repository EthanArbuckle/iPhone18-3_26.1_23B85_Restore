@interface CalculatorMDMRestrictionsManager
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation CalculatorMDMRestrictionsManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  sharedConnection = [v4 sharedConnection];
  if (sharedConnection)
  {
    v7 = sharedConnection;
    [sharedConnection unregisterObserver:selfCopy];

    v8.receiver = selfCopy;
    v8.super_class = ObjectType;
    [(CalculatorMDMRestrictionsManager *)&v8 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if (info)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_10007197C(notification);
}

@end