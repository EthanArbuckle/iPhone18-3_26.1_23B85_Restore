@interface VisitRetentionDurationViewController
- (_TtC4Maps36VisitRetentionDurationViewController)initWithCoder:(id)coder;
- (_TtC4Maps36VisitRetentionDurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleDismissAction:(id)action;
- (void)viewDidLoad;
@end

@implementation VisitRetentionDurationViewController

- (_TtC4Maps36VisitRetentionDurationViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_100460900();
}

- (void)handleDismissAction:(id)action
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(ContaineeViewController *)&v6 handleDismissAction:selfCopy];

  sub_10004E3D0(v7);
}

- (_TtC4Maps36VisitRetentionDurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end