@interface SiriUIVisualResponseViewController
- (NSString)appBundleId;
- (_TtC4Siri34SiriUIVisualResponseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Siri34SiriUIVisualResponseViewController)initWithView:(id)view aceObject:(id)object;
- (void)didEndEditing;
- (void)informHostOfViewResize:(CGSize)resize;
- (void)navigateWithAceCommand:(id)command;
- (void)navigateWithPluginModelData:(id)data bundleName:(id)name;
- (void)performAceCommand:(id)command;
- (void)performSFCommand:(id)command;
- (void)requestDeviceUnlock:(id)unlock;
- (void)setAppBundleId:(id)id;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInAmbientInteractivity:(BOOL)interactivity;
- (void)setIsPresentedWithSmartDialogText:(BOOL)text;
- (void)siriDidDeactivate;
- (void)siriDidStartSpeakingWithIdentifier:(id)identifier;
- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty;
- (void)siriDidUpdateASRWithRecognition:(id)recognition;
- (void)updateBackgroundIfNeeded;
- (void)updateSharedState:(id)state;
- (void)willBeginEditing;
@end

@implementation SiriUIVisualResponseViewController

- (void)setIsInAmbient:(BOOL)ambient
{
  ambientCopy = ambient;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(SiriUIVisualResponseViewController *)&v7 setIsInAmbient:ambientCopy];
  if (ambientCopy)
  {
    v5 = SiriSharedUICompactAmbientContentScaleAmount;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = *&v4[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView];
  [v6 setIsInAmbient:ambientCopy withScaleFactor:{v5, v7.receiver, v7.super_class}];
}

- (void)setIsInAmbientInteractivity:(BOOL)interactivity
{
  interactivityCopy = interactivity;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(SiriUIVisualResponseViewController *)&v8 setIsInAmbientInteractivity:interactivityCopy];
  v5 = &SiriSharedUICompactAmbientContentScaleAmount;
  if (interactivityCopy)
  {
    v5 = &SiriSharedUICompactAmbientContentScaleAmountForInteractivity;
  }

  v6 = *v5;
  v7 = *&v4[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView];
  [v7 setIsInAmbient:1 withScaleFactor:{v6, v8.receiver, v8.super_class}];
}

- (void)setIsPresentedWithSmartDialogText:(BOOL)text
{
  textCopy = text;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(SiriUIVisualResponseViewController *)&v6 setIsPresentedWithSmartDialogText:textCopy];
  v5 = *&v4[OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView];
  [v5 setIsPresentedWithSmartDialogText:{textCopy, v6.receiver, v6.super_class}];
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

- (void)setAppBundleId:(id)id
{
  if (id)
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

- (_TtC4Siri34SiriUIVisualResponseViewController)initWithView:(id)view aceObject:(id)object
{
  viewCopy = view;
  objectCopy = object;
  sub_1000B4B2C(viewCopy, object);
  return result;
}

- (void)updateSharedState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *(selfCopy + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v9 updateSharedStateData:isa];

  sub_10001717C(v6, v8);
}

- (void)updateBackgroundIfNeeded
{
  selfCopy = self;
  sub_1000B520C();
}

- (void)siriDidUpdateASRWithRecognition:(id)recognition
{
  if (recognition)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
    selfCopy = self;
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setAsrText:v6];
  }
}

- (void)siriDidStartSpeakingWithIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
    selfCopy = self;
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setPlayerState:0 aceId:v6];
  }
}

- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
    selfCopy = self;
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    [v6 setPlayerState:1 aceId:v7];
  }
}

- (void)siriDidDeactivate
{
  v3 = OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView;
  v4 = *(self + OBJC_IVAR____TtC4Siri34SiriUIVisualResponseViewController_visualResponseView);
  selfCopy = self;
  [v4 endEditing:1];
  v5 = *(self + v3);
  [v5 postSiriEvent:3];
}

- (_TtC4Siri34SiriUIVisualResponseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)performAceCommand:(id)command
{
  swift_getObjectType();
  commandCopy = command;
  selfCopy = self;
  sub_1000BA674(commandCopy, selfCopy);
}

- (void)performSFCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1000B5954();
}

- (void)navigateWithPluginModelData:(id)data bundleName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7178();

  sub_10001717C(v8, v10);
}

- (void)navigateWithAceCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1000B73B8(commandCopy);
}

- (void)informHostOfViewResize:(CGSize)resize
{
  height = resize.height;
  width = resize.width;
  selfCopy = self;
  sub_1000B7ED8(width, height);
}

- (void)willBeginEditing
{
  selfCopy = self;
  sub_1000B81FC();
}

- (void)didEndEditing
{
  selfCopy = self;
  sub_1000B82E8();
}

- (void)requestDeviceUnlock:(id)unlock
{
  v4 = _Block_copy(unlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  delegate = [(SiriUIVisualResponseViewController *)selfCopy delegate];
  if (delegate)
  {
    v7 = delegate;
    if ([delegate respondsToSelector:"siriViewControllerRequestsDeviceUnlock:completion:"])
    {
      aBlock[4] = sub_1000BA5E0;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007BC4;
      aBlock[3] = &unk_100169C60;
      v8 = _Block_copy(aBlock);

      [v7 siriViewControllerRequestsDeviceUnlock:selfCopy completion:v8];
      _Block_release(v8);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }
}

@end