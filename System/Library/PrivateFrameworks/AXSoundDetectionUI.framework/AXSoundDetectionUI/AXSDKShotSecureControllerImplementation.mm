@interface AXSDKShotSecureControllerImplementation
- (NSSet)currentDetectionTypes;
- (void)addWithCustomDetector:(id)detector;
- (void)dealloc;
- (void)removeAllListenTypes;
- (void)removeWithCustomDetector:(id)detector;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDKShotSecureControllerImplementation

- (NSSet)currentDetectionTypes
{
  selfCopy = self;
  sub_23D657640();

  v3 = sub_23D685A10();

  return v3;
}

- (void)dealloc
{
  type metadata accessor for AXSDKShotMonitor();
  swift_initStaticObject();
  selfCopy = self;
  sub_23D66B610();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AXSDKShotSecureControllerImplementation();
  [(AXSDSecureBaseControllerImplementation *)&v4 dealloc];
}

- (void)addWithCustomDetector:(id)detector
{
  detectorCopy = detector;
  selfCopy = self;
  sub_23D657B3C(detectorCopy);
}

- (void)removeWithCustomDetector:(id)detector
{
  detectorCopy = detector;
  selfCopy = self;
  sub_23D657BC4(detectorCopy);
}

- (void)removeAllListenTypes
{
  selfCopy = self;
  sub_23D66E5F8();
}

- (void)startListening
{
  selfCopy = self;
  sub_23D66E7C8();
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D66E9C4();
}

@end