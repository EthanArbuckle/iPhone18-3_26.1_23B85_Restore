@interface ICSScreenSharingSpectatorRootViewController
- (ICSScreenSharingSpectatorRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PHPIPController)pipController;
- (id)parentViewControllerForRestoringPiP;
- (id)pipSourceProvider;
- (unint64_t)supportedInterfaceOrientations;
- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)stopped;
- (void)loadView;
- (void)pipStateDidChangeNotification:(id)notification;
- (void)setPipController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ICSScreenSharingSpectatorRootViewController

- (PHPIPController)pipController
{
  v2 = sub_10021E1A4();

  return v2;
}

- (void)setPipController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10021E230(controller);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_10021E278();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_10021E5DC();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10021E9D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10021EA94(appear);
}

- (void)pipStateDidChangeNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10021EB54();

  (*(v5 + 8))(v8, v4);
}

- (id)pipSourceProvider
{
  selfCopy = self;
  v3 = sub_10021ED60();

  return v3;
}

- (id)parentViewControllerForRestoringPiP
{
  selfCopy = self;
  v3 = sub_10021EDD0();

  return v3;
}

- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)stopped
{
  stoppedCopy = stopped;
  selfCopy = self;
  sub_10021EE40();
}

- (ICSScreenSharingSpectatorRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_10021EECC();
}

@end