@interface VisitRetentionDurationViewController
- (_TtC4Maps36VisitRetentionDurationViewController)initWithCoder:(id)a3;
- (_TtC4Maps36VisitRetentionDurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleDismissAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation VisitRetentionDurationViewController

- (_TtC4Maps36VisitRetentionDurationViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100460900();
}

- (void)handleDismissAction:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(ContaineeViewController *)&v6 handleDismissAction:v5];

  sub_10004E3D0(v7);
}

- (_TtC4Maps36VisitRetentionDurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end