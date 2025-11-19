@interface SEStorageViewController
- (_TtC15SESUIServiceApp23SEStorageViewController)initWithCoder:(id)a3;
- (_TtC15SESUIServiceApp23SEStorageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)blockInput;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)present;
- (void)viewDidLoad;
@end

@implementation SEStorageViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100002CCC();
}

- (void)present
{
  v2 = self;
  sub_100002EC8();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_1000039D0(a3, v6, v7);
  sub_100003ED4(v6);
}

- (void)blockInput
{
  v3 = OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 1;
  v7 = self;
  v4 = [(SEStorageViewController *)v7 viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 layer];

    [v6 setHitTestsAsOpaque:*(&self->super.super.super.super.isa + v3)];
  }
}

- (_TtC15SESUIServiceApp23SEStorageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SEStorageViewController();
  v9 = [(SEStorageViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC15SESUIServiceApp23SEStorageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SEStorageViewController();
  v4 = a3;
  v5 = [(SEStorageViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end