@interface ChanceRainDataSource
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (NSString)bundleIdentifier;
- (id)sampleTemplate;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation ChanceRainDataSource

+ (NSString)bundleIdentifier
{
  v2 = sub_23BDC66C0();

  return v2;
}

- (id)sampleTemplate
{
  selfCopy = self;
  if ([(CLKCComplicationDataSource *)selfCopy family]== 11)
  {
    sub_23BD99BF8();
    v4 = v3;
    ObjectType = swift_getObjectType();
    sampleTemplate = (*(v4 + 48))([(CLKCComplicationDataSource *)selfCopy family], ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for ChanceRainDataSource(0);
    sampleTemplate = [(BaseDataSource *)&v8 sampleTemplate];
  }

  return sampleTemplate;
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_23BD9B914(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  v5 = objc_opt_self();

  return [v5 deviceSupportsWidgets_];
}

@end