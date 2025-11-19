@interface SoftwareUpdateRequiredFlow
- (_TtC14HDSViewService26SoftwareUpdateRequiredFlow)initWithCoder:(id)a3;
- (_TtC14HDSViewService26SoftwareUpdateRequiredFlow)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SoftwareUpdateRequiredFlow

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();

    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10005F53C(a3);
}

- (_TtC14HDSViewService26SoftwareUpdateRequiredFlow)initWithNibName:(id)a3 bundle:(id)a4
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
  v10 = [(SoftwareUpdateRequiredFlow *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC14HDSViewService26SoftwareUpdateRequiredFlow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(SoftwareUpdateRequiredFlow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)proxCardFlowDidDismiss
{
  v3 = self;
  v2 = sub_10005F41C();
  if (v2)
  {
    [v2 dismiss];
    swift_unknownObjectRelease();
  }
}

@end