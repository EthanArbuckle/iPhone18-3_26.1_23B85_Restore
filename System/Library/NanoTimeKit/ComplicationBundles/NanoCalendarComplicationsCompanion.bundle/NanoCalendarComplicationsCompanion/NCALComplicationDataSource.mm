@interface NCALComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (id)_debugCLKSideBySideFamilies;
+ (id)bundleIdentifier;
- (NCALComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)lockedTemplate;
- (id)sampleTemplate;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getTimelineEndDateWithHandler:(id)handler;
@end

@implementation NCALComplicationDataSource

- (NCALComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NCALComplicationDataSource;
  return [(NCALComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NCALComplicationDataSource;
  [(NCALComplicationDataSource *)&v2 dealloc];
}

+ (id)bundleIdentifier
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NCALComplicationDataSource;
  v2 = objc_msgSendSuper2(&v5, "bundleIdentifier");
  v3 = [v2 stringByAppendingString:@".schedule"];

  return v3;
}

- (id)sampleTemplate
{
  family = [(NCALComplicationDataSource *)self family];

  return [NCALTimelineEntryModel sampleEventTemplateForFamily:family];
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currrentTimelineEntry = [(NCALComplicationDataSource *)self _currrentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currrentTimelineEntry);
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v6 = family - 7;
  if (family < 7 && ((0x57u >> family) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 1;
    if (family != 3)
    {
      v8 = CLKComplicationFamilyCircularMedium == family || NTKComplicationFamilyUtilitarianLargeNarrow == family;
      if (!v8 && (v6 >= 6 || ((0x37u >> v6) & 1) == 0))
      {
        v9 = NTKShowBlueRidgeUI();
        if (family == 10)
        {
          v7 = v9;
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  return v7;
}

- (void)getTimelineEndDateWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSDate distantFuture];
  (*(handler + 2))(handlerCopy, v5);
}

- (id)lockedTemplate
{
  v2 = [NCALTimelineEntryModel lockedEntryForFamily:[(NCALComplicationDataSource *)self family]];
  complicationTemplate = [v2 complicationTemplate];

  return complicationTemplate;
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion
{
  completionCopy = completion;
  v7 = +[NCALNextEventIntent intent];
  v6 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoCalendar.WidgetExtension" containerBundleIdentifier:@"com.apple.NanoCalendar" kind:@"com.apple.CalendarWidget.CalendarNextEventComplication" intent:v7];
  completionCopy[2](completionCopy, v6);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v7 = [[NSUUID alloc] initWithUUIDString:@"827A9753-8ABC-42BF-AFC5-76F5D1838CF9"];
  v8 = [deviceCopy supportsCapability:v7];

  _debugCLKSideBySideFamilies = [self _debugCLKSideBySideFamilies];
  v10 = [NSNumber numberWithInteger:family];
  LOBYTE(v7) = [_debugCLKSideBySideFamilies containsObject:v10];

  return v8 & (v7 ^ 1);
}

+ (id)_debugCLKSideBySideFamilies
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobilecal"];
  v3 = [v2 arrayForKey:@"ClockKitSideBySideFamilies"];
  v4 = v3;
  v5 = &__NSArray0__struct;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [NSSet setWithArray:v6];

  return v7;
}

@end