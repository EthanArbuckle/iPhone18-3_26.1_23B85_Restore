@interface ConditionDataSource
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (NSNumber)legacyNTKComplicationType;
+ (NSString)bundleIdentifier;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation ConditionDataSource

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

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_23BDBCD58(v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  v5 = objc_opt_self();

  return [v5 deviceSupportsWidgets_];
}

@end