@interface _ACSBatteryServiceOptions
- (_ACSBatteryServiceOptions)init;
- (_ACSBatteryServiceOptions)initWithValues:(id)a3;
@end

@implementation _ACSBatteryServiceOptions

- (_ACSBatteryServiceOptions)init
{
  *(&self->super.isa + OBJC_IVAR____ACSBatteryServiceOptions_storage) = sub_24029D740(MEMORY[0x277D84F90]);
  v4.receiver = self;
  v4.super_class = type metadata accessor for BatteryServiceOptions();
  return [(_ACSBatteryServiceOptions *)&v4 init];
}

- (_ACSBatteryServiceOptions)initWithValues:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____ACSBatteryServiceOptions_storage) = sub_2402A7338();
  v5.receiver = self;
  v5.super_class = type metadata accessor for BatteryServiceOptions();
  return [(_ACSBatteryServiceOptions *)&v5 init];
}

@end