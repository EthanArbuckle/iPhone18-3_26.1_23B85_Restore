@interface TTRComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (id)localizedAppName;
- (CLKComplicationTimelineEntry)currentTimelineEntry;
- (TTRComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (TTRComplicationPresenting)presenter;
- (TTRComplicationViewModel)viewModel;
- (id)currentSwitcherTemplate;
- (id)lockedTemplate;
- (id)privacyTemplate;
- (void)complicationPresenterDidUpdateViewModel:(id)a3;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 completion:(id)a4;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5;
- (void)pause;
- (void)resume;
@end

@implementation TTRComplicationDataSource

+ (id)localizedAppName
{
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"Reminders" value:@"Reminders" table:@"Localizable"];

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if ([v5 isRunningGraceOrLater])
  {
    v6 = TTRComplicationModuleAcceptsFamilyForDevice(a3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TTRComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[REMLog ui];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2048;
    v20 = a4;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "TTRComplicationDataSource is being initialized {compliation: %@, family: %ld, device: %@}", buf, 0x20u);
  }

  v16.receiver = self;
  v16.super_class = TTRComplicationDataSource;
  v11 = [(TTRComplicationDataSource *)&v16 initWithComplication:v8 family:a4 forDevice:v9];
  if (v11)
  {
    v12 = [TTRComplicationAssembly assembleModuleForComplicationFamily:a4 isRunningInClockFace:0];
    module = v11->_module;
    v11->_module = v12;

    v14 = [(TTRComplicationModule *)v11->_module presenter];
    [v14 setDelegate:v11];
  }

  return v11;
}

- (void)pause
{
  v3 = +[REMLog ui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[TTRComplicationDataSource pause]", buf, 2u);
  }

  v4 = [(TTRComplicationDataSource *)self presenter];
  [v4 pauseViewModelUpdates];

  v5.receiver = self;
  v5.super_class = TTRComplicationDataSource;
  [(TTRComplicationDataSource *)&v5 pause];
}

- (void)resume
{
  v3 = +[REMLog ui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[TTRComplicationDataSource resume]", buf, 2u);
  }

  v4 = [(TTRComplicationDataSource *)self presenter];
  [v4 resumeViewModelUpdates];

  v5.receiver = self;
  v5.super_class = TTRComplicationDataSource;
  [(TTRComplicationDataSource *)&v5 resume];
}

- (id)currentSwitcherTemplate
{
  v2 = [(TTRComplicationDataSource *)self currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (id)lockedTemplate
{
  v2 = [(TTRComplicationDataSource *)self viewModel];
  v3 = [v2 lockedTemplate];

  return v3;
}

- (id)privacyTemplate
{
  v2 = [(TTRComplicationDataSource *)self viewModel];
  v3 = [v2 privacyTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(TTRComplicationDataSource *)self currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5
{
  v9 = a5;
  v10 = a3;
  v12 = [(TTRComplicationDataSource *)self viewModel];
  v11 = [v12 entriesAfterDate:v10 limit:a4];

  (*(a5 + 2))(v9, v11);
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v6 = a5;
  v7 = [(TTRComplicationDataSource *)self presenter];
  v8 = [v7 launchURLForTimelineEntries];

  v9 = +[REMLog ui];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Returning launch URL {URL: %@}", &v10, 0xCu);
  }

  v6[2](v6, v8);
}

- (void)complicationPresenterDidUpdateViewModel:(id)a3
{
  v3 = [(TTRComplicationDataSource *)self delegate];
  [v3 invalidateEntries];
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoReminders.WidgetExtension" containerBundleIdentifier:@"com.apple.NanoReminders" kind:@"com.apple.reminders.widget.today" intent:0];
  v8 = +[REMLog ui];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "TTRComplicationDataSource fetched widget migration {descriptor: %@, widgetDescriptor %@}", &v9, 0x16u);
  }

  v6[2](v6, v7);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v5 = a4;
  v6 = [[NSUUID alloc] initWithUUIDString:@"A14F53B9-2C95-4293-B688-2D8D34A4239E"];
  v7 = [v5 supportsCapability:v6];

  v8 = +[REMLog ui];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    v11 = 138412802;
    if (v7)
    {
      v9 = @"YES";
    }

    v12 = v9;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "TTRComplicationDataSource hasMigratedToWidgetForFamily returning %@ for {family: %ld, device %@}", &v11, 0x20u);
  }

  return v7;
}

- (TTRComplicationPresenting)presenter
{
  v2 = [(TTRComplicationDataSource *)self module];
  v3 = [v2 presenter];

  return v3;
}

- (TTRComplicationViewModel)viewModel
{
  v2 = [(TTRComplicationDataSource *)self presenter];
  v3 = [v2 viewModel];

  return v3;
}

- (CLKComplicationTimelineEntry)currentTimelineEntry
{
  v2 = [(TTRComplicationDataSource *)self viewModel];
  v3 = [v2 currentEntry];

  return v3;
}

@end