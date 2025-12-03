@interface B332SetupViewController
- (_TtC18SharingViewService23B332SetupViewController)initWithCoder:(id)coder;
- (_TtC18SharingViewService23B332SetupViewController)initWithMainController:(id)controller;
- (_TtC18SharingViewService23B332SetupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B332SetupViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000B3C30(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000B3F44(appear);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_10006709C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_1000B4AC8();
  sub_100025EF4(v8, v7);
}

- (_TtC18SharingViewService23B332SetupViewController)initWithMainController:(id)controller
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for B332SetupViewController();
  return [(SVSBaseViewController *)&v6 initWithMainController:controller];
}

- (_TtC18SharingViewService23B332SetupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for B332SetupViewController();
  v9 = [(B332SetupViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18SharingViewService23B332SetupViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for B332SetupViewController();
  coderCopy = coder;
  v6 = [(B332SetupViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end