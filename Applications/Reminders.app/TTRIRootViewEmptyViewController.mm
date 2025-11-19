@interface TTRIRootViewEmptyViewController
- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithCoder:(id)a3;
- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation TTRIRootViewEmptyViewController

- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIRootViewEmptyViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRIRootViewEmptyViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end