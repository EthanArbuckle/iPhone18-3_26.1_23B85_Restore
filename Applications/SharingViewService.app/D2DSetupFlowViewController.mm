@interface D2DSetupFlowViewController
- (_TtC18SharingViewService26D2DSetupFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation D2DSetupFlowViewController

- (_TtC18SharingViewService26D2DSetupFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10009B1EC(v5, v7, a4);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10006709C;
  }

  v7 = a3;
  v8 = self;
  sub_10009B5F8(a3, v6);
  sub_100012050(v6);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10009C6CC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10009C8A8(a3);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000670A4();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  if (*(&self->super + OBJC_IVAR____TtC18SharingViewService26D2DSetupFlowViewController_router))
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1000963C8(v4);
    swift_unknownObjectRelease();
  }
}

@end