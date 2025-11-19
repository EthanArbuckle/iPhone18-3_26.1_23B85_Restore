@interface ADMNotificationVendor
+ (id)canonical;
- (ADMNotificationVendor)init;
- (BOOL)deregisterListenerWithRegistrationResults:(id)a3;
- (id)registerBoolListenerWithNotificationKey:(id)a3 listenerCallback:(id)a4;
@end

@implementation ADMNotificationVendor

- (id)registerBoolListenerWithNotificationKey:(id)a3 listenerCallback:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = sub_223BF454C();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = self;
  v12 = sub_223B6DE50(v7, v9, sub_223B70FDC, v10);

  _Block_release(a4);

  return v12;
}

- (BOOL)deregisterListenerWithRegistrationResults:(id)a3
{
  if (*(a3 + OBJC_IVAR___ADMListenerRegistrationResults_state + 16) != 1)
  {
    return 0;
  }

  v4 = *(a3 + OBJC_IVAR___ADMListenerRegistrationResults_state);
  v5 = a3;
  v6 = self;
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