@interface AXSDSecureControllerImplementation
- (NSSet)currentDetectionTypes;
- (void)addWithListenType:(id)a3;
- (void)removeAllListenTypes;
- (void)removeWithListenType:(id)a3;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDSecureControllerImplementation

- (NSSet)currentDetectionTypes
{
  v2 = self;
  sub_23D6633C0();

  type metadata accessor for AXSDSoundDetectionType();
  sub_23D664A14();
  v3 = sub_23D685A10();

  return v3;
}

- (void)addWithListenType:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6638E0(v4);
}

- (void)removeWithListenType:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6639DC(v4);
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