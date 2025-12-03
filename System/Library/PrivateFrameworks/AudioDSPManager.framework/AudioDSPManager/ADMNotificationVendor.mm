@interface ADMNotificationVendor
+ (id)canonical;
- (ADMNotificationVendor)init;
- (BOOL)deregisterListenerWithRegistrationResults:(id)results;
- (id)registerBoolListenerWithNotificationKey:(id)key listenerCallback:(id)callback;
@end

@implementation ADMNotificationVendor

- (id)registerBoolListenerWithNotificationKey:(id)key listenerCallback:(id)callback
{
  v6 = _Block_copy(callback);
  v7 = sub_223BF454C();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  selfCopy = self;
  v12 = sub_223B6DE50(v7, v9, sub_223B70FDC, v10);

  _Block_release(callback);

  return v12;
}

- (BOOL)deregisterListenerWithRegistrationResults:(id)results
{
  if (*(results + OBJC_IVAR___ADMListenerRegistrationResults_state + 16) != 1)
  {
    return 0;
  }

  v4 = *(results + OBJC_IVAR___ADMListenerRegistrationResults_state);
  resultsCopy = results;
  selfCopy = self;
  sub_223B6E27C(v4);
  v7 = 1;

  return v7;
}

+ (id)canonical
{
  v2 = sub_223B70A84();

  return v2;
}

- (ADMNotificationVendor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end