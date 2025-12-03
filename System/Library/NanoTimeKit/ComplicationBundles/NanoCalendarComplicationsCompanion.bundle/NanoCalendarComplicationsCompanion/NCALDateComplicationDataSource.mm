@interface NCALDateComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (id)bundleIdentifier;
- (BOOL)_isLunarDateComplication;
- (BOOL)supportsTapAction;
- (Class)richComplicationDisplayViewClassForDevice:(id)device;
- (NCALDateComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)sampleTemplate;
- (void)_invalidate;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getTimelineEndDateWithHandler:(id)handler;
@end

@implementation NCALDateComplicationDataSource

- (NCALDateComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = NCALDateComplicationDataSource;
  v5 = [(NCALDateComplicationDataSource *)&v8 initWithComplication:complication family:family forDevice:device];
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
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NCALDateComplicationDataSource;
  v2 = objc_msgSendSuper2(&v5, "bundleIdentifier");
  v3 = [v2 stringByAppendingString:@".date"];

  return v3;
}

- (void)_invalidate
{
  delegate = [(NCALDateComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v6 = [[NSUUID alloc] initWithUUIDString:@"6114C32D-3A7F-4C06-A90E-2106E5A304D3"];
  v7 = [deviceCopy supportsCapability:v6];

  if (family < 7 && ((0x5Fu >> family) & 1) != 0)
  {
    return 1;
  }

  result = 1;
  if (family != 7 && CLKComplicationFamilyCircularMedium != family && (family - 8) >= 3 && CLKComplicationFamilySimpleText != family)
  {
    if (family == 12)
    {
      return 1;
    }

    else
    {
      return (family == 11) & v7;
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
  complicationTemplate = [v5 complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NCALDateComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
}

- (void)getTimelineEndDateWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSDate distantFuture];
  (*(handler + 2))(handlerCopy, v5);
}

- (BOOL)supportsTapAction
{
  v3.receiver = self;
  v3.super_class = NCALDateComplicationDataSource;
  return [(NCALDateComplicationDataSource *)&v3 supportsTapAction];
}

- (Class)richComplicationDisplayViewClassForDevice:(id)device
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

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion
{
  completionCopy = completion;
  if ([NCALDateComplicationDataSource _hasMigratedForFamily:family])
  {
    v6 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.DateComplicationsHost.DateComplications" containerBundleIdentifier:@"com.apple.DateComplicationsHost" kind:@"com.apple.CalendarWidget.CalendarDateComplication" intent:0];
    completionCopy[2](completionCopy, v6);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v6 = [[NSUUID alloc] initWithUUIDString:@"827A9753-8ABC-42BF-AFC5-76F5D1838CF9"];
  v7 = [deviceCopy supportsCapability:v6];

  return v7 & [NCALDateComplicationDataSource _hasMigratedForFamily:family];
}

@end