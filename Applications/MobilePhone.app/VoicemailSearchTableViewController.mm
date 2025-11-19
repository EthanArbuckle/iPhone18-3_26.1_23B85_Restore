@interface VoicemailSearchTableViewController
+ (id)voicemailPredicate;
- (BOOL)hasContentToDisplay;
- (NSMutableArray)voicemails;
- (NSString)folderName;
- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNavigationController:(id)a3 voicemailController:(id)a4;
- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)configureWithCardController:(id)a3 presentationResultForIndex:(id)a4;
- (void)performTableViewDestructiveActionAtIndexPath:(id)a3;
- (void)setFolderName:(id)a3;
- (void)setVoicemails:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VoicemailSearchTableViewController

- (NSMutableArray)voicemails
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(MPVoicemailTableViewController *)&v4 voicemails];

  return v2;
}

- (void)setVoicemails:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MPVoicemailTableViewController *)&v5 setVoicemails:a3];
  v4[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload] = 1;
}

- (NSString)folderName
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setFolderName:(id)a3
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
  v3 = [(MPVoicemailTableViewController *)&v6 voicemails];
  v4 = [(NSMutableArray *)v3 count:v6.receiver];

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
  v2 = self;
  VoicemailSearchTableViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  VoicemailSearchTableViewController.viewWillAppear(_:)(a3);
}

- (void)performTableViewDestructiveActionAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  VoicemailSearchTableViewController.performTableViewDestructiveAction(at:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = VoicemailSearchTableViewController.tableView(_:cellForRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  VoicemailSearchTableViewController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)configureWithCardController:(id)a3 presentationResultForIndex:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = VoicemailSearchTableViewController.configure(cardController:presentationResultForIndex:)(v10);

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNavigationController:(id)a3 voicemailController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = specialized VoicemailSearchTableViewController.init(navigationController:voicemailController:)(v5, v6);

  return v7;
}

- (_TtC11MobilePhone34VoicemailSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return VoicemailSearchTableViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end