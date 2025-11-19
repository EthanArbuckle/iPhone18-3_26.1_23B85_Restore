@interface XPCElectricalLoadEventContainer
- (_TtC9EnergyKit31XPCElectricalLoadEventContainer)init;
- (_TtC9EnergyKit31XPCElectricalLoadEventContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCElectricalLoadEventContainer

- (_TtC9EnergyKit31XPCElectricalLoadEventContainer)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_238268A9C(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_238268578(v4, &OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value, &qword_27DEF7E18, &unk_23827F940, sub_238269BC0);
}

- (_TtC9EnergyKit31XPCElectricalLoadEventContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end