@interface CRLScenesViewController_iv
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)keyCommands;
- (UIResponder)nextResponder;
- (_TtC8Freeform26CRLScenesViewController_iv)initWithCoder:(id)coder;
- (_TtC8Freeform26CRLScenesViewController_iv)initWithNibName:(id)name bundle:(id)bundle;
- (void)delete:(id)delete;
- (void)deleteForward:(id)forward;
- (void)dismissScenesPopoverWithAnimated:(BOOL)animated completion:(id)completion;
- (void)presentScenesPopoverWith:(id)with at:(id)at passthroughViews:(id)views;
- (void)viewDidLoad;
@end

@implementation CRLScenesViewController_iv

- (_TtC8Freeform26CRLScenesViewController_iv)initWithCoder:(id)coder
{
  *&self->hostingController[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_scenesDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_isTornDown) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100696BA4();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10069742C(action, v10);

  sub_1005E09AC(v10);
  return v8 & 1;
}

- (void)delete:(id)delete
{
  if (delete)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10069762C();

  sub_1005E09AC(v6);
}

- (void)deleteForward:(id)forward
{
  if (forward)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10069778C(v6);

  sub_1005E09AC(v6);
}

- (NSArray)keyCommands
{
  sub_1005B981C(&unk_1019F4D60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10146CE00;
  v4 = objc_opt_self();
  selfCopy = self;
  *(v3 + 32) = [v4 keyCommandWithInput:UIKeyInputDelete modifierFlags:0 action:"delete:"];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 keyCommandWithInput:v6 modifierFlags:0 action:"deleteForward:"];

  *(v3 + 40) = v7;
  sub_100006370(0, &qword_101A001C0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (UIResponder)nextResponder
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_icc);
  selfCopy = self;
  layerHost = [v2 layerHost];
  if (layerHost)
  {
    v5 = layerHost;
    if ([layerHost respondsToSelector:"asiOSCVC"])
    {
      asiOSCVC = [v5 asiOSCVC];

      swift_unknownObjectRelease();
      v7 = asiOSCVC;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)presentScenesPopoverWith:(id)with at:(id)at passthroughViews:(id)views
{
  viewsCopy = views;
  if (views)
  {
    sub_100006370(0, &qword_1019F6D00);
    viewsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  withCopy = with;
  atCopy = at;
  selfCopy = self;
  sub_100697B40(withCopy, atCopy, viewsCopy);
}

- (void)dismissScenesPopoverWithAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100699760;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_100697F30(animated, v6, v7);
  sub_1000C1014(v6);
}

- (_TtC8Freeform26CRLScenesViewController_iv)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end