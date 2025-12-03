@interface RootViewController
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (RootViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source;
- (RootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismiss;
- (void)setAdamID:(id)d;
- (void)setBalloonPlugin:(id)plugin;
- (void)setBalloonPluginDataSource:(id)source;
- (void)setPresentationViewController:(id)controller;
- (void)setSendDelegate:(id)delegate;
- (void)setStoreLaunchURL:(id)l sourceApplication:(id)application;
- (void)shieldViewUnlockButtonPressed:(id)pressed;
- (void)storeRootViewController:(id)controller didComplete:(id)complete;
- (void)storeRootViewController:(id)controller openApp:(id)app;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RootViewController

- (RootViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source
{
  pluginCopy = plugin;
  sourceCopy = source;
  v8 = [(RootViewController *)self initWithBalloonPlugin:pluginCopy];

  if (v8)
  {

    v9 = *(&v8->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource);
    *(&v8->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource) = sourceCopy;
    sourceCopy = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RootViewController();
  v2 = v6.receiver;
  [(RootViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:systemBackgroundColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewWillAppear:appearCopy];
  sub_4A890();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewIsAppearing:appearingCopy];
  if ([*&v4[OBJC_IVAR___RootViewController_appProtectionSubject] isLocked])
  {
    sub_4AC88();
  }

  else
  {
    sub_4AA34();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(RootViewController *)&v5 viewDidAppear:appearCopy];
  if (([*&v4[OBJC_IVAR___RootViewController_appProtectionSubject] isLocked] & 1) == 0)
  {
    sub_4AFA4();
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  currentTraitCollection = [objc_opt_self() currentTraitCollection];
  userInterfaceIdiom = [currentTraitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setAdamID:(id)d
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_adamID);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_adamID) = d;
  dCopy = d;
}

- (void)setPresentationViewController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_presentationViewController);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_presentationViewController) = controller;
  controllerCopy = controller;
}

- (CKBrowserViewControllerSendDelegate)sendDelegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSendDelegate:(id)delegate
{
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_sendDelegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setBalloonPlugin:(id)plugin
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPlugin);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPlugin) = plugin;
  pluginCopy = plugin;
}

- (void)setBalloonPluginDataSource:(id)source
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource);
  *(&self->super.super.super.isa + OBJC_IVAR___RootViewController_balloonPluginDataSource) = source;
  sourceCopy = source;
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

- (void)setStoreLaunchURL:(id)l sourceApplication:(id)application
{
  v7 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (l)
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

  if (application)
  {
    v12 = sub_769240();
    application = v13;
  }

  else
  {
    v12 = 0;
  }

  selfCopy = self;
  sub_4B9B8(v9, v12, application);

  sub_10A2C(v9, &unk_93FD30);
}

- (void)storeRootViewController:(id)controller didComplete:(id)complete
{
  controllerCopy = controller;
  completeCopy = complete;
  selfCopy = self;
  sub_4CB3C(completeCopy);
}

- (void)storeRootViewController:(id)controller openApp:(id)app
{
  if (*(&self->super.super.super.isa + OBJC_IVAR___RootViewController_sendDelegate))
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector:"openAppExtensionWithAdamID:"])
      {
        [v6 openAppExtensionWithAdamID:app];
      }
    }
  }
}

- (void)shieldViewUnlockButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_4BE28(pressedCopy);
}

- (RootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end