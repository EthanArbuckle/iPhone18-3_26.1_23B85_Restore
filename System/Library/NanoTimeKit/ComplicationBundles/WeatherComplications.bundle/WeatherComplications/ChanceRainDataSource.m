@interface ChanceRainDataSource
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (NSString)bundleIdentifier;
- (id)sampleTemplate;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 completion:(id)a4;
@end

@implementation ChanceRainDataSource

+ (NSString)bundleIdentifier
{
  v2 = sub_23BDC66C0();

  return v2;
}

- (id)sampleTemplate
{
  v2 = self;
  if ([(CLKCComplicationDataSource *)v2 family]== 11)
  {
    sub_23BD99BF8();
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 48))([(CLKCComplicationDataSource *)v2 family], ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for ChanceRainDataSource(0);
    v6 = [(BaseDataSource *)&v8 sampleTemplate];
  }

  return v6;
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_23BD9B914(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v5 = objc_opt_self();

  return [v5 deviceSupportsWidgets_];
}

@end