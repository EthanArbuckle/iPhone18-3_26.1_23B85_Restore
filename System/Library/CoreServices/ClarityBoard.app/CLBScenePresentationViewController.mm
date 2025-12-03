@interface CLBScenePresentationViewController
+ (id)defaultSceneIdentifierForBundleIdentifier:(id)identifier;
- (CLBScenePresentationViewController)initWithCoder:(id)coder;
- (CLBScenePresentationViewController)initWithName:(id)name bundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier supportsClarityUI:(BOOL)i actions:(id)actions shouldDisableIdleTimer:(BOOL)timer avoidsBackButton:(BOOL)button viewAssumesBoundsMatchDeviceBounds:(BOOL)self0 displayLayoutStyle:(int64_t)self1;
- (void)dealloc;
- (void)invalidateIfNeeded;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
- (void)viewDidLayoutSubviews;
@end

@implementation CLBScenePresentationViewController

- (void)setScene:(id)scene
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___CLBScenePresentationViewController_scene);
  *(&self->super.super.super.super.isa + OBJC_IVAR___CLBScenePresentationViewController_scene) = scene;
  sceneCopy = scene;
}

- (CLBScenePresentationViewController)initWithName:(id)name bundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier supportsClarityUI:(BOOL)i actions:(id)actions shouldDisableIdleTimer:(BOOL)timer avoidsBackButton:(BOOL)button viewAssumesBoundsMatchDeviceBounds:(BOOL)self0 displayLayoutStyle:(int64_t)self1
{
  iCopy = i;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  sub_10002C9FC(0, &qword_10032E498);
  sub_100078254();
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100075B6C(v11, v13, v14, v16, v17, v19, iCopy, v20, timer, button, bounds, style);
}

- (CLBScenePresentationViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___CLBScenePresentationViewController_isInvalidated) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR___CLBScenePresentationViewController_lastSeenViewSize);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)invalidateIfNeeded
{
  selfCopy = self;
  sub_100076498();
}

- (void)dealloc
{
  selfCopy = self;
  sub_100076498();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ScenePresentationViewController();
  [(CLBScenePresentationViewController *)&v3 dealloc];
}

+ (id)defaultSceneIdentifierForBundleIdentifier:(id)identifier
{
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v3);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1000769E4();
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  sceneCopy = scene;
  connectCopy = connect;
  selfCopy = self;
  sub_1000782D4(sceneCopy);
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_100077500(sceneCopy, settingsCopy);
}

@end