@interface WOCyclingPowerZonesConfiguration
- (BOOL)isAutomaticEmpty;
- (BOOL)isAutomaticFromAppleFTP;
- (BOOL)isEditable;
- (BOOL)isEmpty;
- (NSArray)zones;
- (WOCyclingPowerZonesConfiguration)init;
- (int64_t)configurationType;
@end

@implementation WOCyclingPowerZonesConfiguration

- (BOOL)isEmpty
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  selfCopy = self;
  LOBYTE(v2) = sub_22644();

  return v2 & 1;
}

- (BOOL)isAutomaticEmpty
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  selfCopy = self;
  LOBYTE(v2) = sub_22604();

  return v2 & 1;
}

- (BOOL)isAutomaticFromAppleFTP
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  selfCopy = self;
  LOBYTE(v2) = sub_22624();

  return v2 & 1;
}

- (BOOL)isEditable
{
  selfCopy = self;
  v3 = sub_1804C();

  return v3 & 1;
}

- (int64_t)configurationType
{
  v3 = sub_22664();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  selfCopy = self;
  sub_22614();
  v10 = (*(v4 + 88))(v7, v3);
  v11 = 0;
  if (v10 == enum case for CyclingPowerZonesConfigurationType.automatic(_:))
  {
    goto LABEL_4;
  }

  if (v10 == enum case for CyclingPowerZonesConfigurationType.manual(_:))
  {
    v11 = 1;
LABEL_4:

    return v11;
  }

  result = sub_229A4();
  __break(1u);
  return result;
}

- (NSArray)zones
{
  selfCopy = self;
  sub_183D0();

  type metadata accessor for CyclingPowerZoneBridge();
  v3.super.isa = sub_228C4().super.isa;

  return v3.super.isa;
}

- (WOCyclingPowerZonesConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end