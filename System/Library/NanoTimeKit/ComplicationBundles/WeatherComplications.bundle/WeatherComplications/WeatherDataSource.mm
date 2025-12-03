@interface WeatherDataSource
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (NSNumber)legacyNTKComplicationType;
+ (NSString)bundleIdentifier;
- (_TtC20WeatherComplications17WeatherDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion;
@end

@implementation WeatherDataSource

+ (NSNumber)legacyNTKComplicationType
{
  initWithUnsignedInteger_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];

  return initWithUnsignedInteger_;
}

+ (NSString)bundleIdentifier
{
  v2 = sub_23BDC66C0();

  return v2;
}

- (_TtC20WeatherComplications17WeatherDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for WeatherDataSource();
  complicationCopy = complication;
  deviceCopy = device;
  v10 = [(BaseDataSource *)&v16 initWithComplication:complicationCopy family:family forDevice:deviceCopy];
  v11 = qword_27E1C55C0;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = xmmword_27E1C7770;
  swift_unknownObjectRetain();

  v13 = *(&v12->super.super.super.super.isa + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter);
  *(&v12->super.super.super.super.isa + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter) = v15;

  swift_unknownObjectRelease();
  return v12;
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_23BDB21EC(family, v8);
  _Block_release(v8);
  _Block_release(v8);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  v5 = objc_opt_self();

  return [v5 deviceSupportsWidgets_];
}

@end