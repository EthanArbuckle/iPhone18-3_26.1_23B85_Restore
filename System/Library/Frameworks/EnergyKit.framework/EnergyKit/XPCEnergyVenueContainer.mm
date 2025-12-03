@interface XPCEnergyVenueContainer
- (_TtC9EnergyKit23XPCEnergyVenueContainer)init;
- (_TtC9EnergyKit23XPCEnergyVenueContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCEnergyVenueContainer

- (_TtC9EnergyKit23XPCEnergyVenueContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v5 = sub_2382691B4(coder);
  v6 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s9EnergyKit23XPCEnergyVenueContainerC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC9EnergyKit23XPCEnergyVenueContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end