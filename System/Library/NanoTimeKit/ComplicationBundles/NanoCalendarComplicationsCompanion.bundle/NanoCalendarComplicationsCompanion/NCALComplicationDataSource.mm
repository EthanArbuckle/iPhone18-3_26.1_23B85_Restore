@interface NCALComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (id)_debugCLKSideBySideFamilies;
+ (id)bundleIdentifier;
- (NCALComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)lockedTemplate;
- (id)sampleTemplate;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getTimelineEndDateWithHandler:(id)a3;
@end

@implementation NCALComplicationDataSource

- (NCALComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = NCALComplicationDataSource;
  return [(NCALComplicationDataSource *)&v6 initWithComplication:a3 family:a4 forDevice:a5];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NCALComplicationDataSource;
  [(NCALComplicationDataSource *)&v2 dealloc];
}

+ (id)bundleIdentifier
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NCALComplicationDataSource;
  v2 = objc_msgSendSuper2(&v5, "bundleIdentifier");
  v3 = [v2 stringByAppendingString:@".schedule"];

  return v3;
}

- (id)sampleTemplate
{
  v2 = [(NCALComplicationDataSource *)self family];

  return [NCALTimelineEntryModel sampleEventTemplateForFamily:v2];
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NCALComplicationDataSource *)self _currrentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = a3 - 7;
  if (a3 < 7 && ((0x57u >> a3) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 1;
    if (a3 != 3)
    {
      v8 = CLKComplicationFamilyCircularMedium == a3 || NTKComplicationFamilyUtilitarianLargeNarrow == a3;
      if (!v8 && (v6 >= 6 || ((0x37u >> v6) & 1) == 0))
      {
        v9 = NTKShowBlueRidgeUI();
        if (a3 == 10)
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

- (void)getTimelineEndDateWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSDate distantFuture];
  (*(a3 + 2))(v4, v5);
}

- (id)lockedTemplate
{
  v2 = [NCALTimelineEntryModel lockedEntryForFamily:[(NCALComplicationDataSource *)self family]];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5
{
  v5 = a5;
  v7 = +[NCALNextEventIntent intent];
  v6 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoCalendar.WidgetExtension" containerBundleIdentifier:@"com.apple.NanoCalendar" kind:@"com.apple.CalendarWidget.CalendarNextEventComplication" intent:v7];
  v5[2](v5, v6);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v6 = a4;
  v7 = [[NSUUID alloc] initWithUUIDString:@"827A9753-8ABC-42BF-AFC5-76F5D1838CF9"];
  v8 = [v6 supportsCapability:v7];

  v9 = [a1 _debugCLKSideBySideFamilies];
  v10 = [NSNumber numberWithInteger:a3];
  LOBYTE(v7) = [v9 containsObject:v10];

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