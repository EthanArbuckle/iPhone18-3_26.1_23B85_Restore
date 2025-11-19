@interface RootViewController
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (RootViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4;
- (RootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismiss;
- (void)setAdamID:(id)a3;
- (void)setBalloonPlugin:(id)a3;
- (void)setBalloonPluginDataSource:(id)a3;
- (void)setPresentationViewController:(id)a3;
- (void)setSendDelegate:(id)a3;
- (void)setStoreLaunchURL:(id)a3 sourceApplication:(id)a4;
- (void)shieldViewUnlockButtonPressed:(id)a3;
- (void)storeRootViewController:(id)a3 didComplete:(id)a4;
- (void)storeRootViewController:(id)a3 openApp:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RootViewController

- (RootViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RootViewController *)self initWithBalloonPlugin:v6];

  if (v8)
  {

    v9 = *(&v8->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource);
    *(&v8->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource) = v7;
    v7 = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RootViewController();
  v2 = v6.receiver;
  [(RootViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewWillAppear:v3];
  sub_4A890();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewIsAppearing:v3];
  if ([*&v4[OBJC_IVAR___RootViewController_appProtectionSubject] isLocked])
  {
    sub_4AC88();
  }

  else
  {
    sub_4AA34();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewDidAppear:v3];
  if (([*&v4[OBJC_IVAR___RootViewController_appProtectionSubject] isLocked] & 1) == 0)
  {
    sub_4AFA4();
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setAdamID:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_adamID);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_adamID) = a3;
  v3 = a3;
}

- (void)setPresentationViewController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_presentationViewController);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_presentationViewController) = a3;
  v3 = a3;
}

- (CKBrowserViewControllerSendDelegate)sendDelegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSendDelegate:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_sendDelegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setBalloonPlugin:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPlugin);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPlugin) = a3;
  v3 = a3;
}

- (void)setBalloonPluginDataSource:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource) = a3;
  v3 = a3;
}

- (void)dismiss
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_sendDelegate);
  if (v2)
  {
    [v2 dismiss];
  }

  else
  {
    __break(1u);
  }
}

- (void)setStoreLaunchURL:(id)a3 sourceApplication:(id)a4
{
  v7 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (a3)
  {
    sub_757060();
    v10 = sub_7570A0();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_7570A0();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  if (a4)
  {
    v12 = sub_769240();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = self;
  sub_4B9B8(v9, v12, a4);

  sub_10A2C(v9, &unk_93FD30);
}

- (void)storeRootViewController:(id)a3 didComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_4CB3C(v7);
}

- (void)storeRootViewController:(id)a3 openApp:(id)a4
{
  if (*(&self->super.super.super.isa + OBJC_IVAR___RootViewController_sendDelegate))
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector:"openAppExtensionWithAdamID:"])
      {
        [v6 openAppExtensionWithAdamID:a4];
      }
    }
  }
}

- (void)shieldViewUnlockButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_4BE28(v4);
}

- (RootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end