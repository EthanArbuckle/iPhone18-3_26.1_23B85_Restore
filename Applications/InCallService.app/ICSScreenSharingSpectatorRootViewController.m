@interface ICSScreenSharingSpectatorRootViewController
- (ICSScreenSharingSpectatorRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PHPIPController)pipController;
- (id)parentViewControllerForRestoringPiP;
- (id)pipSourceProvider;
- (unint64_t)supportedInterfaceOrientations;
- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)a3;
- (void)loadView;
- (void)pipStateDidChangeNotification:(id)a3;
- (void)setPipController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ICSScreenSharingSpectatorRootViewController

- (PHPIPController)pipController
{
  v2 = sub_10021E1A4();

  return v2;
}

- (void)setPipController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10021E230(a3);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = sub_10021E278();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_10021E5DC();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10021E9D8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10021EA94(a3);
}

- (void)pipStateDidChangeNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10021EB54();

  (*(v5 + 8))(v8, v4);
}

- (id)pipSourceProvider
{
  v2 = self;
  v3 = sub_10021ED60();

  return v3;
}

- (id)parentViewControllerForRestoringPiP
{
  v2 = self;
  v3 = sub_10021EDD0();

  return v3;
}

- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10021EE40();
}

- (ICSScreenSharingSpectatorRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_10021EECC();
}

@end