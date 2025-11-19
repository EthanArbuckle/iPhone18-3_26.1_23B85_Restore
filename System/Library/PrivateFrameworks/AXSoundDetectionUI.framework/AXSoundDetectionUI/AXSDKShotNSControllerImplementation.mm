@interface AXSDKShotNSControllerImplementation
- (BOOL)isListening;
- (NSSet)currentDetectionTypes;
- (void)dealloc;
- (void)listenEngineDidStartWithInputFormat:(id)a3;
- (void)listenEngineFailedToStartWithError:(id)a3;
- (void)receivedCompletion:(id)a3;
- (void)receivedError:(id)a3 fromDetector:(id)a4;
- (void)receivedObservation:(id)a3 forDetector:(id)a4;
- (void)removeAllListenTypes;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDKShotNSControllerImplementation

- (BOOL)isListening
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = self;
  if ([v4 containsListenDelegate_])
  {
    v6 = *(&self->super.super.isa + v3);
    v7 = [v6 isListening];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)currentDetectionTypes
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC18AXSoundDetectionUI35AXSDKShotNSControllerImplementation_modelManager);
  v3 = self;
  v4 = [v2 currentDetectors];
  v5 = sub_23D685980();

  sub_23D65425C(v5);

  v6 = sub_23D685A10();

  return v6;
}

- (void)dealloc
{
  type metadata accessor for AXSDKShotMonitor();
  swift_initStaticObject();
  v3 = self;
  sub_23D66B610();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AXSDKShotNSControllerImplementation();
  [(AXSDKShotNSControllerImplementation *)&v4 dealloc];
}

- (void)startListening
{
  v2 = self;
  sub_23D650180();
}

- (void)stopListening
{
  v2 = self;
  sub_23D650524();
}

- (void)removeAllListenTypes
{
  v2 = self;
  sub_23D650BEC();
}

- (void)listenEngineDidStartWithInputFormat:(id)a3
{
  v5 = a3;
  v6 = self;
  AXSDKShotNSControllerImplementation.listenEngineDidStart(withInputFormat:)(a3);
}

- (void)listenEngineFailedToStartWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  AXSDKShotNSControllerImplementation.listenEngineFailedToStartWithError(_:)(a3);
}

- (void)receivedObservation:(id)a3 forDetector:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AXSDKShotNSControllerImplementation.receivedObservation(_:forDetector:)(v6, v7);
}

- (void)receivedCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  AXSDKShotNSControllerImplementation.receivedCompletion(_:)(v4);
}

- (void)receivedError:(id)a3 fromDetector:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  AXSDKShotNSControllerImplementation.receivedError(_:fromDetector:)(v8, v6);
}

@end