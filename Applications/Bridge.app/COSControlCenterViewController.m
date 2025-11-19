@interface COSControlCenterViewController
- (COSControlCenterViewController)initWithCoder:(id)a3;
- (COSControlCenterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)presentRearrangeController:(id)a3;
- (void)resetControlCenterConfirmed:;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSControlCenterViewController

- (void)presentRearrangeController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10013ACAC();
}

- (id)specifiers
{
  v2 = self;
  sub_10014C8A8();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_10014D63C(v3);
}

- (COSControlCenterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ControlCenterViewController();
  v9 = [(COSControlCenterViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (COSControlCenterViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlCenterViewController();
  v4 = a3;
  v5 = [(COSControlCenterViewController *)&v7 initWithCoder:v4];

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