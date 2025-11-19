@interface NCALDateComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (id)bundleIdentifier;
- (BOOL)_isLunarDateComplication;
- (BOOL)supportsTapAction;
- (Class)richComplicationDisplayViewClassForDevice:(id)a3;
- (NCALDateComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)sampleTemplate;
- (void)_invalidate;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getTimelineEndDateWithHandler:(id)a3;
@end

@implementation NCALDateComplicationDataSource

- (NCALDateComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8.receiver = self;
  v8.super_class = NCALDateComplicationDataSource;
  v5 = [(NCALDateComplicationDataSource *)&v8 initWithComplication:a3 family:a4 forDevice:a5];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_invalidate" name:UIApplicationSignificantTimeChangeNotification object:0];
    [v6 addObserver:v5 selector:"_invalidate" name:CUIKPreferencesNotification_OverlayCalendarID object:0];
    [v6 addObserver:v5 selector:"_invalidate" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCALDateComplicationDataSource;
  [(NCALDateComplicationDataSource *)&v4 dealloc];
}

+ (id)bundleIdentifier
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NCALDateComplicationDataSource;
  v2 = objc_msgSendSuper2(&v5, "bundleIdentifier");
  v3 = [v2 stringByAppendingString:@".date"];

  return v3;
}

- (void)_invalidate
{
  v2 = [(NCALDateComplicationDataSource *)self delegate];
  [v2 invalidateEntries];
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = [[NSUUID alloc] initWithUUIDString:@"6114C32D-3A7F-4C06-A90E-2106E5A304D3"];
  v7 = [v5 supportsCapability:v6];

  if (a3 < 7 && ((0x5Fu >> a3) & 1) != 0)
  {
    return 1;
  }

  result = 1;
  if (a3 != 7 && CLKComplicationFamilyCircularMedium != a3 && (a3 - 8) >= 3 && CLKComplicationFamilySimpleText != a3)
  {
    if (a3 == 12)
    {
      return 1;
    }

    else
    {
      return (a3 == 11) & v7;
    }
  }

  return result;
}

- (BOOL)_isLunarDateComplication
{
  v2 = objc_opt_class();

  return [v2 isLunarDateComplication];
}

- (id)sampleTemplate
{
  v3 = objc_opt_new();
  v4 = +[CLKDate complicationDate];
  [v3 setEntryDate:v4];

  [v3 setLunar:{-[NCALDateComplicationDataSource _isLunarDateComplication](self, "_isLunarDateComplication")}];
  v5 = [v3 entryForComplicationFamily:{-[NCALDateComplicationDataSource family](self, "family")}];
  v6 = [v5 complicationTemplate];

  return v6;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NCALDateComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (void)getTimelineEndDateWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSDate distantFuture];
  (*(a3 + 2))(v4, v5);
}

- (BOOL)supportsTapAction
{
  v3.receiver = self;
  v3.super_class = NCALDateComplicationDataSource;
  return [(NCALDateComplicationDataSource *)&v3 supportsTapAction];
}

- (Class)richComplicationDisplayViewClassForDevice:(id)a3
{
  if ([(NCALDateComplicationDataSource *)self family]== &dword_8)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  if ([NCALDateComplicationDataSource _hasMigratedForFamily:a4])
  {
    v6 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.DateComplicationsHost.DateComplications" containerBundleIdentifier:@"com.apple.DateComplicationsHost" kind:@"com.apple.CalendarWidget.CalendarDateComplication" intent:0];
    v7[2](v7, v6);
  }

  else
  {
    v7[2](v7, 0);
  }
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v5 = a4;
  v6 = [[NSUUID alloc] initWithUUIDString:@"827A9753-8ABC-42BF-AFC5-76F5D1838CF9"];
  v7 = [v5 supportsCapability:v6];

  return v7 & [NCALDateComplicationDataSource _hasMigratedForFamily:a3];
}

@end