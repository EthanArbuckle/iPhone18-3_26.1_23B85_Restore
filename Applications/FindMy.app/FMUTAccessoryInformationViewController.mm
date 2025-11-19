@interface FMUTAccessoryInformationViewController
- (_TtC6FindMy38FMUTAccessoryInformationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelAction;
- (void)continueOnDisableWebsiteAction;
- (void)continueOnWebsiteAction;
- (void)doneAction;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMUTAccessoryInformationViewController

- (void)viewDidLoad
{
  v3 = type metadata accessor for FMIPUnknownItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMUTAccessoryInformationViewController();
  v11.receiver = self;
  v11.super_class = v7;
  v8 = self;
  [(FMUTAccessoryInformationViewController *)&v11 viewDidLoad];
  v9 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  (*(v4 + 16))(v6, v8 + v9, v3);
  sub_100186CEC(v6);

  (*(v4 + 8))(v6, v3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMUTAccessoryInformationViewController();
  v4 = v7.receiver;
  [(FMUTAccessoryInformationViewController *)&v7 viewDidAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_mediator] + 24);

  v6 = sub_1003F373C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_devicesSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001814C4(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMUTAccessoryInformationViewController();
  [(FMUTAccessoryInformationViewController *)&v4 viewWillAppear:v3];
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollHandler);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_100062900(v3);
    v3(v5);

    sub_10001835C(v3);
  }
}

- (void)doneAction
{
  v2 = self;
  sub_100184FEC();
}

- (void)cancelAction
{
  v2 = self;
  sub_100185040();
}

- (void)continueOnWebsiteAction
{
  v2 = self;
  sub_10018519C();
}

- (void)continueOnDisableWebsiteAction
{
  v2 = self;
  sub_100185558();
}

- (_TtC6FindMy38FMUTAccessoryInformationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end