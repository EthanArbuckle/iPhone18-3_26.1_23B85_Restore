@interface BackdropViewController
- (_TtC13MediaRemoteUI22BackdropViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateImage:(id)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BackdropViewController

- (_TtC13MediaRemoteUI22BackdropViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10000B514(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for BackdropViewController();
  [(BackdropViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for BackdropViewController();
  v4 = v6.receiver;
  [(BackdropViewController *)&v6 viewWillAppear:v3];
  sub_10000CA44();
  v5 = v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen];
  v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen] = 1;
  if ((v5 & 1) == 0)
  {
    sub_10000C368();
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000BB3C(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackdropViewController();
  v4 = v7.receiver;
  v5 = a3;
  [(BackdropViewController *)&v7 didMoveToParentViewController:v5];
  if (v5)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];

    swift_unknownObjectWeakAssign();
  }
}

- (void)updateImage:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10000BF24(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000C24C(a3);
}

@end