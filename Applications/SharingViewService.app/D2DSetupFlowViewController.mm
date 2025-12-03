@interface D2DSetupFlowViewController
- (_TtC18SharingViewService26D2DSetupFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation D2DSetupFlowViewController

- (_TtC18SharingViewService26D2DSetupFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10009B1EC(v5, v7, bundle);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10006709C;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10009B5F8(context, v6);
  sub_100012050(v6);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10009C6CC(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10009C8A8(disappear);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
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
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1000963C8(v4);
    swift_unknownObjectRelease();
  }
}

@end