@interface COSControlCenterViewController
- (COSControlCenterViewController)initWithCoder:(id)coder;
- (COSControlCenterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)presentRearrangeController:(id)controller;
- (void)resetControlCenterConfirmed:;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSControlCenterViewController

- (void)presentRearrangeController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10013ACAC();
}

- (id)specifiers
{
  selfCopy = self;
  sub_10014C8A8();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_10014D63C(appearCopy);
}

- (COSControlCenterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ControlCenterViewController();
  v9 = [(COSControlCenterViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (COSControlCenterViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlCenterViewController();
  coderCopy = coder;
  v5 = [(COSControlCenterViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)resetControlCenterConfirmed:
{
  v0 = objc_allocWithZone(NPSDomainAccessor);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithDomain:v1];

  if (v2)
  {
    v3 = [objc_allocWithZone(NPSManager) init];
    v4 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v4];

    v5 = String._bridgeToObjectiveC()();
    sub_10014F604(&off_10026D518);
    sub_10014F8F4(&unk_10026D538);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v3 synchronizeNanoDomain:v5 keys:isa];
  }

  else
  {
    __break(1u);
  }
}

@end