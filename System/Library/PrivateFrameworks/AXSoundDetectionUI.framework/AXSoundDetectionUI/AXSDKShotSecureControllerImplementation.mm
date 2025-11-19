@interface AXSDKShotSecureControllerImplementation
- (NSSet)currentDetectionTypes;
- (void)addWithCustomDetector:(id)a3;
- (void)dealloc;
- (void)removeAllListenTypes;
- (void)removeWithCustomDetector:(id)a3;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDKShotSecureControllerImplementation

- (NSSet)currentDetectionTypes
{
  v2 = self;
  sub_23D657640();

  v3 = sub_23D685A10();

  return v3;
}

- (void)dealloc
{
  type metadata accessor for AXSDKShotMonitor();
  swift_initStaticObject();
  v3 = self;
  sub_23D66B610();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AXSDKShotSecureControllerImplementation();
  [(AXSDSecureBaseControllerImplementation *)&v4 dealloc];
}

- (void)addWithCustomDetector:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D657B3C(v4);
}

- (void)removeWithCustomDetector:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D657BC4(v4);
}

- (void)removeAllListenTypes
{
  v2 = self;
  sub_23D66E5F8();
}

- (void)startListening
{
  v2 = self;
  sub_23D66E7C8();
}

- (void)stopListening
{
  v2 = self;
  sub_23D66E9C4();
}

@end