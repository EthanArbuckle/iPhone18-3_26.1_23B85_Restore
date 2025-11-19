@interface CRLScenesViewController_iv
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSArray)keyCommands;
- (UIResponder)nextResponder;
- (_TtC8Freeform26CRLScenesViewController_iv)initWithCoder:(id)a3;
- (_TtC8Freeform26CRLScenesViewController_iv)initWithNibName:(id)a3 bundle:(id)a4;
- (void)delete:(id)a3;
- (void)deleteForward:(id)a3;
- (void)dismissScenesPopoverWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentScenesPopoverWith:(id)a3 at:(id)a4 passthroughViews:(id)a5;
- (void)viewDidLoad;
@end

@implementation CRLScenesViewController_iv

- (_TtC8Freeform26CRLScenesViewController_iv)initWithCoder:(id)a3
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
  v2 = self;
  sub_100696BA4();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10069742C(a3, v10);

  sub_1005E09AC(v10);
  return v8 & 1;
}

- (void)delete:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10069762C();

  sub_1005E09AC(v6);
}

- (void)deleteForward:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
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
  v5 = self;
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
  v3 = self;
  v4 = [v2 layerHost];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector:"asiOSCVC"])
    {
      v6 = [v5 asiOSCVC];

      swift_unknownObjectRelease();
      v7 = v6;
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

- (void)presentScenesPopoverWith:(id)a3 at:(id)a4 passthroughViews:(id)a5
{
  v5 = a5;
  if (a5)
  {
    sub_100006370(0, &qword_1019F6D00);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100697B40(v9, v10, v5);
}

- (void)dismissScenesPopoverWithAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_100697F30(a3, v6, v7);
  sub_1000C1014(v6);
}

- (_TtC8Freeform26CRLScenesViewController_iv)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end