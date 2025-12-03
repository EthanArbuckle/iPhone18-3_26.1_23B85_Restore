@interface AXSDSecureControllerImplementation
- (NSSet)currentDetectionTypes;
- (void)addWithListenType:(id)type;
- (void)removeAllListenTypes;
- (void)removeWithListenType:(id)type;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDSecureControllerImplementation

- (NSSet)currentDetectionTypes
{
  selfCopy = self;
  sub_23D6633C0();

  type metadata accessor for AXSDSoundDetectionType();
  sub_23D664A14();
  v3 = sub_23D685A10();

  return v3;
}

- (void)addWithListenType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_23D6638E0(typeCopy);
}

- (void)removeWithListenType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_23D6639DC(typeCopy);
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