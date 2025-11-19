@interface CalculatorMDMRestrictionsManager
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation CalculatorMDMRestrictionsManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedConnection];
  if (v6)
  {
    v7 = v6;
    [v6 unregisterObserver:v5];

    v8.receiver = v5;
    v8.super_class = ObjectType;
    [(CalculatorMDMRestrictionsManager *)&v8 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_10007197C(a3);
}

@end