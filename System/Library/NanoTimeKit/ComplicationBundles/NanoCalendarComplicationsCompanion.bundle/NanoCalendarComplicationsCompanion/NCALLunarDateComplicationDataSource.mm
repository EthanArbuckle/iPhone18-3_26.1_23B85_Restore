@interface NCALLunarDateComplicationDataSource
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (id)bundleIdentifier;
- (NCALLunarDateComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion;
@end

@implementation NCALLunarDateComplicationDataSource

+ (id)bundleIdentifier
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NCALLunarDateComplicationDataSource;
  v2 = objc_msgSendSuper2(&v5, "bundleIdentifier");
  v3 = [v2 stringByAppendingString:@".lunarDate"];

  return v3;
}

- (NCALLunarDateComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NCALLunarDateComplicationDataSource;
  return [(NCALDateComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NCALLunarDateComplicationDataSource;
  [(NCALDateComplicationDataSource *)&v2 dealloc];
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion
{
  if (family == 11)
  {
    v5 = *(completion + 2);
    completionCopy = completion;
    v5();
  }

  else
  {
    completionCopy2 = completion;
    completionCopy = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoCalendar.WidgetExtension" containerBundleIdentifier:@"com.apple.NanoCalendar" kind:@"com.apple.CalendarWidget.CalendarLunarDateComplication" intent:0];
    completionCopy2[2](completionCopy2);
  }
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v6 = [[NSUUID alloc] initWithUUIDString:@"827A9753-8ABC-42BF-AFC5-76F5D1838CF9"];
  v7 = [deviceCopy supportsCapability:v6];

  if (family == 11)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end