@interface ICAppStoreRatingObserver
- (ICAppStoreRatingObserver)init;
- (ICAppStoreRatingObserver)initWithAccountIdentifier:(id)identifier managedObjectContext:(id)context userDefaults:(id)defaults windowScene:(id)scene;
- (NSString)accountIdentifier;
- (void)controller:(id)controller didChangeContentWithDifference:(id)difference;
- (void)didRecognizeGesture;
- (void)noteEditorDidEditNote:(id)note;
- (void)sceneDidActivate;
- (void)sceneWillEnterForeground;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation ICAppStoreRatingObserver

- (ICAppStoreRatingObserver)initWithAccountIdentifier:(id)identifier managedObjectContext:(id)context userDefaults:(id)defaults windowScene:(id)scene
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  contextCopy = context;
  defaultsCopy = defaults;
  sceneCopy = scene;
  v15 = sub_100460F60(v9, v11, contextCopy, defaultsCopy, sceneCopy);

  return v15;
}

- (NSString)accountIdentifier
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)startObserving
{
  selfCopy = self;
  sub_10045F820();
}

- (void)stopObserving
{
  selfCopy = self;
  sub_10045FDE8();
}

- (void)didRecognizeGesture
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(self + OBJC_IVAR___ICAppStoreRatingObserver_appStoreRatingController);
  selfCopy = self;
  static Date.now.getter();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = OBJC_IVAR___ICAppStoreRatingController_lastInteractionDate;
  swift_beginAccess();
  sub_10023A078(v5, v6 + v9);
  swift_endAccess();
  v10 = sub_10049D57C();
  [v10 requestFire];
}

- (void)noteEditorDidEditNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100460A44();

  (*(v5 + 8))(v7, v4);
}

- (void)sceneWillEnterForeground
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter addObserver:selfCopy selector:"sceneDidActivate" name:UISceneDidActivateNotification object:0];
}

- (void)sceneDidActivate
{
  selfCopy = self;
  sub_10049C728();
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy name:UISceneDidActivateNotification object:0];
}

- (ICAppStoreRatingObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)controller didChangeContentWithDifference:(id)difference
{
  v6 = sub_10015DA04(&qword_1006C8CE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  sub_1000054A4(0, &qword_1006BFEC0);
  static CollectionDifference._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_100461384();

  (*(v7 + 8))(v9, v6);
}

@end