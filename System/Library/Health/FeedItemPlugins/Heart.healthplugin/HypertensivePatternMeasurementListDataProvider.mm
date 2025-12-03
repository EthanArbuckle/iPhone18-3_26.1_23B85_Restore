@interface HypertensivePatternMeasurementListDataProvider
- (_TtC5Heart46HypertensivePatternMeasurementListDataProvider)init;
- (_TtC5Heart46HypertensivePatternMeasurementListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)detailSectionForSample:(id)sample;
- (id)sampleTypes;
- (id)secondaryTextForObject:(id)object;
- (id)textForObject:(id)object;
- (id)titleForSection:(int64_t)section;
@end

@implementation HypertensivePatternMeasurementListDataProvider

- (id)sampleTypes
{
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D940030;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5Heart46HypertensivePatternMeasurementListDataProvider_sampleType);
  *(v3 + 32) = v4;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v5 = v4;
  v6 = sub_29D939F18();

  return v6;
}

- (id)textForObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_29D93A868();
  sub_29D936978();
  sub_29D7F0DD4(v9);
  v6 = v5;

  sub_29D69417C(v9);
  if (v6)
  {
    v7 = sub_29D939D28();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)secondaryTextForObject:(id)object
{
  swift_unknownObjectRetain();
  sub_29D93A868();
  sub_29D936978();
  sub_29D69417C(v4);

  return 0;
}

- (id)titleForSection:(int64_t)section
{
  v3 = qword_2A17B0D68;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();

  v5 = sub_29D939D28();

  return v5;
}

- (id)detailSectionForSample:(id)sample
{
  sampleCopy = sample;
  selfCopy = self;
  v6 = sub_29D7F084C(sampleCopy);

  return v6;
}

- (_TtC5Heart46HypertensivePatternMeasurementListDataProvider)init
{
  ObjectType = swift_getObjectType();
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  result = [swift_getObjCClassFromMetadata() hypertensiveMeasurementType];
  if (result)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5Heart46HypertensivePatternMeasurementListDataProvider_sampleType) = result;
    v5.receiver = self;
    v5.super_class = ObjectType;
    return [(HypertensivePatternMeasurementListDataProvider *)&v5 init];
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC5Heart46HypertensivePatternMeasurementListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  ObjectType = swift_getObjectType();
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  typeCopy = type;
  profileCopy = profile;
  result = [ObjCClassFromMetadata hypertensiveMeasurementType];
  if (result)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5Heart46HypertensivePatternMeasurementListDataProvider_sampleType) = result;
    v13.receiver = self;
    v13.super_class = ObjectType;
    v12 = [(WDSampleListDataProvider *)&v13 initWithDisplayType:typeCopy profile:profileCopy];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end