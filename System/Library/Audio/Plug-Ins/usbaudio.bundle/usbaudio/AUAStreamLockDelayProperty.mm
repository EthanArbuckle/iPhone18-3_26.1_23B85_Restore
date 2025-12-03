@interface AUAStreamLockDelayProperty
- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (_TtC9AUASDCore26AUAStreamLockDelayProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType;
@end

@implementation AUAStreamLockDelayProperty

- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  *dataSize = 8;
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  if (Strong)
  {
    sub_1000ACB88();
  }

  v11.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v12 = *andData;
  *andData = v11;

  return 1;
}

- (_TtC9AUASDCore26AUAStreamLockDelayProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end