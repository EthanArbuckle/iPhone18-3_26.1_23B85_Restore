@interface TTRComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device;
+ (id)localizedAppName;
- (CLKComplicationTimelineEntry)currentTimelineEntry;
- (TTRComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (TTRComplicationPresenting)presenter;
- (TTRComplicationViewModel)viewModel;
- (id)currentSwitcherTemplate;
- (id)lockedTemplate;
- (id)privacyTemplate;
- (void)complicationPresenterDidUpdateViewModel:(id)model;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler;
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

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningGraceOrLater])
  {
    v6 = TTRComplicationModuleAcceptsFamilyForDevice(family);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TTRComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  complicationCopy = complication;
  deviceCopy = device;
  v10 = +[REMLog ui];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v18 = complicationCopy;
    v19 = 2048;
    familyCopy = family;
    v21 = 2112;
    v22 = deviceCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "TTRComplicationDataSource is being initialized {compliation: %@, family: %ld, device: %@}", buf, 0x20u);
  }

  v16.receiver = self;
  v16.super_class = TTRComplicationDataSource;
  v11 = [(TTRComplicationDataSource *)&v16 initWithComplication:complicationCopy family:family forDevice:deviceCopy];
  if (v11)
  {
    v12 = [TTRComplicationAssembly assembleModuleForComplicationFamily:family isRunningInClockFace:0];
    module = v11->_module;
    v11->_module = v12;

    presenter = [(TTRComplicationModule *)v11->_module presenter];
    [presenter setDelegate:v11];
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

  presenter = [(TTRComplicationDataSource *)self presenter];
  [presenter pauseViewModelUpdates];

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

  presenter = [(TTRComplicationDataSource *)self presenter];
  [presenter resumeViewModelUpdates];

  v5.receiver = self;
  v5.super_class = TTRComplicationDataSource;
  [(TTRComplicationDataSource *)&v5 resume];
}

- (id)currentSwitcherTemplate
{
  currentTimelineEntry = [(TTRComplicationDataSource *)self currentTimelineEntry];
  complicationTemplate = [currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (id)lockedTemplate
{
  viewModel = [(TTRComplicationDataSource *)self viewModel];
  lockedTemplate = [viewModel lockedTemplate];

  return lockedTemplate;
}

- (id)privacyTemplate
{
  viewModel = [(TTRComplicationDataSource *)self viewModel];
  privacyTemplate = [viewModel privacyTemplate];

  return privacyTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  currentTimelineEntry = [(TTRComplicationDataSource *)self currentTimelineEntry];
  (*(handler + 2))(handlerCopy, currentTimelineEntry);
}

- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  viewModel = [(TTRComplicationDataSource *)self viewModel];
  v11 = [viewModel entriesAfterDate:dateCopy limit:limit];

  (*(handler + 2))(handlerCopy, v11);
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  presenter = [(TTRComplicationDataSource *)self presenter];
  launchURLForTimelineEntries = [presenter launchURLForTimelineEntries];

  v9 = +[REMLog ui];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = launchURLForTimelineEntries;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Returning launch URL {URL: %@}", &v10, 0xCu);
  }

  handlerCopy[2](handlerCopy, launchURLForTimelineEntries);
}

- (void)complicationPresenterDidUpdateViewModel:(id)model
{
  delegate = [(TTRComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  v7 = [[CLKWidgetComplicationDescriptor alloc] initWithExtensionBundleIdentifier:@"com.apple.NanoReminders.WidgetExtension" containerBundleIdentifier:@"com.apple.NanoReminders" kind:@"com.apple.reminders.widget.today" intent:0];
  v8 = +[REMLog ui];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = descriptorCopy;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "TTRComplicationDataSource fetched widget migration {descriptor: %@, widgetDescriptor %@}", &v9, 0x16u);
  }

  completionCopy[2](completionCopy, v7);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v6 = [[NSUUID alloc] initWithUUIDString:@"A14F53B9-2C95-4293-B688-2D8D34A4239E"];
  v7 = [deviceCopy supportsCapability:v6];

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
    familyCopy = family;
    v15 = 2112;
    v16 = deviceCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "TTRComplicationDataSource hasMigratedToWidgetForFamily returning %@ for {family: %ld, device %@}", &v11, 0x20u);
  }

  return v7;
}

- (TTRComplicationPresenting)presenter
{
  module = [(TTRComplicationDataSource *)self module];
  presenter = [module presenter];

  return presenter;
}

- (TTRComplicationViewModel)viewModel
{
  presenter = [(TTRComplicationDataSource *)self presenter];
  viewModel = [presenter viewModel];

  return viewModel;
}

- (CLKComplicationTimelineEntry)currentTimelineEntry
{
  viewModel = [(TTRComplicationDataSource *)self viewModel];
  currentEntry = [viewModel currentEntry];

  return currentEntry;
}

@end