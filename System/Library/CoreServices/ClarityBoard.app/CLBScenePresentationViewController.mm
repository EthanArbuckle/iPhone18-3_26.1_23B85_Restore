@interface CLBScenePresentationViewController
+ (id)defaultSceneIdentifierForBundleIdentifier:(id)a3;
- (CLBScenePresentationViewController)initWithCoder:(id)a3;
- (CLBScenePresentationViewController)initWithName:(id)a3 bundleIdentifier:(id)a4 sceneIdentifier:(id)a5 supportsClarityUI:(BOOL)a6 actions:(id)a7 shouldDisableIdleTimer:(BOOL)a8 avoidsBackButton:(BOOL)a9 viewAssumesBoundsMatchDeviceBounds:(BOOL)a10 displayLayoutStyle:(int64_t)a11;
- (void)dealloc;
- (void)invalidateIfNeeded;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation CLBScenePresentationViewController

- (void)setScene:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___CLBScenePresentationViewController_scene);
  *(&self->super.super.super.super.isa + OBJC_IVAR___CLBScenePresentationViewController_scene) = a3;
  v3 = a3;
}

- (CLBScenePresentationViewController)initWithName:(id)a3 bundleIdentifier:(id)a4 sceneIdentifier:(id)a5 supportsClarityUI:(BOOL)a6 actions:(id)a7 shouldDisableIdleTimer:(BOOL)a8 avoidsBackButton:(BOOL)a9 viewAssumesBoundsMatchDeviceBounds:(BOOL)a10 displayLayoutStyle:(int64_t)a11
{
  v23 = a6;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  sub_10002C9FC(0, &qword_10032E498);
  sub_100078254();
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100075B6C(v11, v13, v14, v16, v17, v19, v23, v20, a8, a9, a10, a11);
}

- (CLBScenePresentationViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_100076498();
}

- (void)dealloc
{
  v2 = self;
  sub_100076498();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ScenePresentationViewController();
  [(CLBScenePresentationViewController *)&v3 dealloc];
}

+ (id)defaultSceneIdentifierForBundleIdentifier:(id)a3
{
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v3);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1000769E4();
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000782D4(v6);
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100077500(v6, v7);
}

@end