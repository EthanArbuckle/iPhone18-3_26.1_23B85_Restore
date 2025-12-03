@interface SEStorageViewController
- (_TtC15SESUIServiceApp23SEStorageViewController)initWithCoder:(id)coder;
- (_TtC15SESUIServiceApp23SEStorageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)blockInput;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)present;
- (void)viewDidLoad;
@end

@implementation SEStorageViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002CCC();
}

- (void)present
{
  selfCopy = self;
  sub_100002EC8();
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100003F1C;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_1000039D0(animated, v6, v7);
  sub_100003ED4(v6);
}

- (void)blockInput
{
  v3 = OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 1;
  selfCopy = self;
  viewIfLoaded = [(SEStorageViewController *)selfCopy viewIfLoaded];
  if (viewIfLoaded)
  {
    v5 = viewIfLoaded;
    layer = [viewIfLoaded layer];

    [layer setHitTestsAsOpaque:*(&self->super.super.super.super.isa + v3)];
  }
}

- (_TtC15SESUIServiceApp23SEStorageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SEStorageViewController();
  v9 = [(SEStorageViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC15SESUIServiceApp23SEStorageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SEStorageViewController();
  coderCopy = coder;
  v5 = [(SEStorageViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end