@interface TTRIRootViewEmptyViewController
- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithCoder:(id)coder;
- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation TTRIRootViewEmptyViewController

- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIRootViewEmptyViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC9RemindersP33_FA7497EFB9442A0772420FA2AEB0251131TTRIRootViewEmptyViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIRootViewEmptyViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end