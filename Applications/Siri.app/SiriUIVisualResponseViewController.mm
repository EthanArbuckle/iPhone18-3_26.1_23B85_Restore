@interface SiriUIVisualResponseViewController
- (NSString)appBundleId;
- (_TtC4Siri34SiriUIVisualResponseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC4Siri34SiriUIVisualResponseViewController)initWithView:(id)a3 aceObject:(id)a4;
- (void)didEndEditing;
- (void)informHostOfViewResize:(CGSize)a3;
- (void)navigateWithAceCommand:(id)a3;
- (void)navigateWithPluginModelData:(id)a3 bundleName:(id)a4;
- (void)performAceCommand:(id)a3;
- (void)performSFCommand:(id)a3;
- (void)requestDeviceUnlock:(id)a3;
- (void)setAppBundleId:(id)a3;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInAmbientInteractivity:(BOOL)a3;
- (void)setIsPresentedWithSmartDialogText:(BOOL)a3;
- (void)siriDidDeactivate;
- (void)siriDidStartSpeakingWithIdentifier:(id)a3;
- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4;
- (void)siriDidUpdateASRWithRecognition:(id)a3;
- (void)updateBackgroundIfNeeded;
- (void)updateSharedState:(id)a3;
- (void)willBeginEditing;
@end

@implementation SiriUIVisualResponseViewController

- (void)setIsInAmbient:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(SiriUIVisualResponseViewController *)&v7 setIsInAmbient:v3];
  if (v3)
  {
    v5 = SiriSharedUICompactAmbientContentScaleAmount;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = *&v4[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView];
  [v6 setIsInAmbient:v3 withScaleFactor:{v5, v7.receiver, v7.super_class}];
}

- (void)setIsInAmbientInteractivity:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(SiriUIVisualResponseViewController *)&v8 setIsInAmbientInteractivity:v3];
  v5 = &SiriSharedUICompactAmbientContentScaleAmount;
  if (v3)
  {
    v5 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
  }

  v6 = *v5;
  v7 = *&v4[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView];
  [v7 setIsInAmbient:1 withScaleFactor:{v6, v8.receiver, v8.super_class}];
}

- (void)setIsPresentedWithSmartDialogText:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(SiriUIVisualResponseViewController *)&v6 setIsPresentedWithSmartDialogText:v3];
  v5 = *&v4[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView];
  [v5 setIsPresentedWithSmartDialogText:{v3, v6.receiver, v6.super_class}];
}

- (NSString)appBundleId
{
  if (*(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_appBundleId + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAppBundleId:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_appBundleId);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtC4Siri34SiriUIVisualResponseViewController)initWithView:(id)a3 aceObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1000B4B2C(v5, a4);
  return result;
}

- (void)updateSharedState:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(v5 + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v9 updateSharedStateData:isa];

  sub_10001717C(v6, v8);
}

- (void)updateBackgroundIfNeeded
{
  v2 = self;
  sub_1000B520C();
}

- (void)siriDidUpdateASRWithRecognition:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
    v7 = self;
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setAsrText:v6];
  }
}

- (void)siriDidStartSpeakingWithIdentifier:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
    v7 = self;
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setPlayerState:0 aceId:v6];
  }
}

- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
    v8 = self;
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    [v6 setPlayerState:1 aceId:v7];
  }
}

- (void)siriDidDeactivate
{
  v3 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView;
  v4 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
  v6 = self;
  [v4 endEditing:1];
  v5 = *(self + v3);
  [v5 postSiriEvent:3];
}

- (_TtC4Siri34SiriUIVisualResponseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)performAceCommand:(id)a3
{
  swift_getObjectType();
  v5 = a3;
  v6 = self;
  sub_1000BA674(v5, v6);
}

- (void)performSFCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B5954();
}

- (void)navigateWithPluginModelData:(id)a3 bundleName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7178();

  sub_10001717C(v8, v10);
}

- (void)navigateWithAceCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B73B8(v4);
}

- (void)informHostOfViewResize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1000B7ED8(width, height);
}

- (void)willBeginEditing
{
  v2 = self;
  sub_1000B81FC();
}

- (void)didEndEditing
{
  v2 = self;
  sub_1000B82E8();
}

- (void)requestDeviceUnlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v9 = self;
  v6 = [(SiriUIVisualResponseViewController *)v9 delegate];
  if (v6)
  {
    v7 = v6;
    if ([v6 respondsToSelector:"siriViewControllerRequestsDeviceUnlock:completion:"])
    {
      aBlock[4] = sub_1000BA5E0;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007BC4;
      aBlock[3] = &unk_100169C60;
      v8 = _Block_copy(aBlock);

      [v7 siriViewControllerRequestsDeviceUnlock:v9 completion:v8];
      _Block_release(v8);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }
}

@end