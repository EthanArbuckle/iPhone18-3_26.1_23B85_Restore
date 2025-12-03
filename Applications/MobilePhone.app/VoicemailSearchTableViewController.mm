@interface VoicemailSearchTableViewController
+ (id)voicemailPredicate;
- (BOOL)hasContentToDisplay;
- (NSMutableArray)voicemails;
- (NSString)folderName;
- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNavigationController:(id)controller voicemailController:(id)voicemailController;
- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)configureWithCardController:(id)controller presentationResultForIndex:(id)index;
- (void)performTableViewDestructiveActionAtIndexPath:(id)path;
- (void)setFolderName:(id)name;
- (void)setVoicemails:(id)voicemails;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoicemailSearchTableViewController

- (NSMutableArray)voicemails
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  voicemails = [(MPVoicemailTableViewController *)&v4 voicemails];

  return voicemails;
}

- (void)setVoicemails:(id)voicemails
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MPVoicemailTableViewController *)&v5 setVoicemails:voicemails];
  v4[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload] = 1;
}

- (NSString)folderName
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setFolderName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_folderName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)hasContentToDisplay
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  voicemails = [(MPVoicemailTableViewController *)&v6 voicemails];
  v4 = [(NSMutableArray *)voicemails count:v6.receiver];

  return v4 > 0;
}

+ (id)voicemailPredicate
{
  v4[4] = closure #1 in static VoicemailSearchTableViewController.voicemailPredicate.getter;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed Message) -> (@unowned Bool);
  v4[3] = &block_descriptor_11;
  v2 = _Block_copy(v4);

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  VoicemailSearchTableViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  VoicemailSearchTableViewController.viewWillAppear(_:)(appear);
}

- (void)performTableViewDestructiveActionAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  VoicemailSearchTableViewController.performTableViewDestructiveAction(at:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = VoicemailSearchTableViewController.tableView(_:cellForRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  VoicemailSearchTableViewController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)configureWithCardController:(id)controller presentationResultForIndex:(id)index
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  v12 = VoicemailSearchTableViewController.configure(cardController:presentationResultForIndex:)(controllerCopy);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNavigationController:(id)controller voicemailController:(id)voicemailController
{
  controllerCopy = controller;
  voicemailControllerCopy = voicemailController;
  v7 = specialized VoicemailSearchTableViewController.init(navigationController:voicemailController:)(controllerCopy, voicemailControllerCopy);

  return v7;
}

- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return VoicemailSearchTableViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end