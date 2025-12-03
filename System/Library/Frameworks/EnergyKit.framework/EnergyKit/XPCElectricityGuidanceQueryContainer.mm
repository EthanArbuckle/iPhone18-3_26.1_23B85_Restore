@interface XPCElectricityGuidanceQueryContainer
- (_TtC9EnergyKit36XPCElectricityGuidanceQueryContainer)init;
- (_TtC9EnergyKit36XPCElectricityGuidanceQueryContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCElectricityGuidanceQueryContainer

- (_TtC9EnergyKit36XPCElectricityGuidanceQueryContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_238269034(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s9EnergyKit36XPCElectricityGuidanceQueryContainerC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC9EnergyKit36XPCElectricityGuidanceQueryContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end