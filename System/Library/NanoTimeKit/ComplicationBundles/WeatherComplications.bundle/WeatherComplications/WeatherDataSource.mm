@interface WeatherDataSource
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (NSNumber)legacyNTKComplicationType;
+ (NSString)bundleIdentifier;
- (_TtC20WeatherComplications17WeatherDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5;
@end

@implementation WeatherDataSource

+ (NSNumber)legacyNTKComplicationType
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];

  return v2;
}

+ (NSString)bundleIdentifier
{
  v2 = sub_23BDC66C0();

  return v2;
}

- (_TtC20WeatherComplications17WeatherDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for WeatherDataSource();
  v8 = a3;
  v9 = a5;
  v10 = [(BaseDataSource *)&v16 initWithComplication:v8 family:a4 forDevice:v9];
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

- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_23BDB21EC(a4, v8);
  _Block_release(v8);
  _Block_release(v8);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v5 = objc_opt_self();

  return [v5 deviceSupportsWidgets_];
}

@end