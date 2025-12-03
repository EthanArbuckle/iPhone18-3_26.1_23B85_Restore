@interface XPCEnergyVenuesContainer
- (_TtC9EnergyKit24XPCEnergyVenuesContainer)init;
- (_TtC9EnergyKit24XPCEnergyVenuesContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCEnergyVenuesContainer

- (_TtC9EnergyKit24XPCEnergyVenuesContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_2382694D4(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s9EnergyKit24XPCEnergyVenuesContainerC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC9EnergyKit24XPCEnergyVenuesContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end