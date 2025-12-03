@interface ExternalHangTracerController
- (BOOL)shouldDeferPushForSpecifierID:(id)d urlDictionary:(id)dictionary;
- (BOOL)shouldEnableSelectButtonItem;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (ExternalHangTracerController)init;
- (id)developerAppsSpecifiersFromList:(id)list;
- (id)hangEventDetails:(id)details;
- (id)hangEventsSpecifiersForDict:(id)dict;
- (id)hangTracerThreshold;
- (id)isHangTracerEnabled;
- (id)specifiers;
- (id)specifiersOnlyWhenEnabled;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)thresholdSpecifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)delayedAsyncLoadSpecifiersWithCompletion:(id)completion;
- (void)developerAppsDidChangeForFinder:(id)finder;
- (void)enableHangTracer:(id)tracer forSpecifier:(id)specifier;
- (void)goToNextLogsState;
- (void)markGroup:(id)group asLoading:(BOOL)loading;
- (void)presentErrorWithTitle:(id)title message:(id)message;
- (void)reloadAsyncSpecifiersWithCompletion:(id)completion;
- (void)reloadSpecifiers;
- (void)setHangTracerThreshold:(id)threshold forSpecifier:(id)specifier;
- (void)shareLogs:(id)logs sender:(id)sender;
- (void)shareSelectedHangs:(id)hangs;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDeveloperAppsWithCompletion:(id)completion;
- (void)updateFromHangEventSpecifiers:(id)specifiers toSpecifiers:(id)toSpecifiers;
- (void)updateHangEventsWithCompletion:(id)completion;
- (void)updateProcessingHangEventsWithCompletion:(id)completion;
- (void)updateShareButtonEnabled;
- (void)updateSpecifiersWithHangEvents:(id)events processingHangEvents:(id)hangEvents;
- (void)viewDidLoad;
@end

@implementation ExternalHangTracerController

- (ExternalHangTracerController)init
{
  v44.receiver = self;
  v44.super_class = ExternalHangTracerController;
  v2 = [(ExternalHangTracerController *)&v44 init];
  v3 = v2;
  if (v2)
  {
    [(ExternalHangTracerController *)v2 setReusesCells:1];
    v4 = objc_alloc_init(NSMeasurementFormatter);
    durationFormatter = v3->_durationFormatter;
    v3->_durationFormatter = v4;

    [(NSMeasurementFormatter *)v3->_durationFormatter setUnitStyle:1];
    [(NSMeasurementFormatter *)v3->_durationFormatter setUnitOptions:1];
    v6 = objc_alloc_init(NSNumberFormatter);
    [v6 setNumberStyle:0];
    [v6 setMaximumFractionDigits:0];
    [(NSMeasurementFormatter *)v3->_durationFormatter setNumberFormatter:v6];
    v7 = objc_alloc_init(HTDeveloperSettings);
    hangTracerSettings = v3->_hangTracerSettings;
    v3->_hangTracerSettings = v7;

    v9 = objc_alloc_init(HTDeveloperAppsFinder);
    appsFinder = v3->_appsFinder;
    v3->_appsFinder = v9;

    [(HTDeveloperAppsFinder *)v3->_appsFinder setDelegate:v3];
    developerApps = v3->_developerApps;
    v3->_developerApps = &__NSArray0__struct;

    v3->_appsState = 0;
    objc_initWeak(&location, v3);
    v12 = [HTHangsDataFinder alloc];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_3CB4;
    v41[3] = &unk_3D060;
    objc_copyWeak(&v42, &location);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_3DE0;
    v39[3] = &unk_3D060;
    objc_copyWeak(&v40, &location);
    v13 = [v12 initWithLogUpdateCallback:v41 tailspinSavedCallback:v39];
    hangsDataFinder = v3->_hangsDataFinder;
    v3->_hangsDataFinder = v13;

    hangsEvents = v3->_hangsEvents;
    v3->_hangsEvents = &__NSDictionary0__struct;

    processingHangsEvents = v3->_processingHangsEvents;
    v3->_processingHangsEvents = &__NSDictionary0__struct;

    unifiedHangsEvents = v3->_unifiedHangsEvents;
    v3->_unifiedHangsEvents = &__NSDictionary0__struct;

    v3->_logsState = 0;
    v18 = objc_alloc_init(NSDateFormatter);
    formatter = v3->_formatter;
    v3->_formatter = v18;

    [(NSDateFormatter *)v3->_formatter setDateStyle:2];
    [(NSDateFormatter *)v3->_formatter setTimeStyle:1];
    [(ExternalHangTracerController *)v3 setCachedHangEventsSpecifiers:&__NSArray0__struct];
    [(ExternalHangTracerController *)v3 setCachedDeveloperAppsSpecifiers:&__NSArray0__struct];
    [(ExternalHangTracerController *)v3 delayedAsyncLoadSpecifiersWithCompletion:0];
    v20 = [UIBarButtonItem alloc];
    v21 = HTUIShareButton();
    v22 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_3E24;
    v37[3] = &unk_3CFC8;
    objc_copyWeak(&v38, &location);
    v23 = [UIAction actionWithTitle:v21 image:v22 identifier:0 handler:v37];
    v24 = [v20 initWithPrimaryAction:v23];
    shareButtonItem = v3->_shareButtonItem;
    v3->_shareButtonItem = v24;

    v26 = [UIBarButtonItem alloc];
    v27 = HTUISelectButton();
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_3E98;
    v35 = &unk_3CFC8;
    objc_copyWeak(&v36, &location);
    v28 = [UIAction actionWithTitle:v27 image:0 identifier:0 handler:&v32];
    v29 = [v26 initWithPrimaryAction:{v28, v32, v33, v34, v35}];
    selectButtonItem = v3->_selectButtonItem;
    v3->_selectButtonItem = v29;

    [(ExternalHangTracerController *)v3 updateRightBarButtonItemAnimated:0];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ExternalHangTracerController;
  [(ExternalHangTracerController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HANGTRACER_EXTERNAL_CONFIGURE" value:&stru_3E0D8 table:@"DTSettings"];
  [(ExternalHangTracerController *)self setTitle:v4];
}

- (void)goToNextLogsState
{
  v2 = 1;
  if (self->_logsState)
  {
    v2 = 2;
  }

  self->_logsState = v2;
}

- (void)markGroup:(id)group asLoading:(BOOL)loading
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4218;
  block[3] = &unk_3D088;
  block[4] = self;
  groupCopy = group;
  loadingCopy = loading;
  v5 = groupCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateHangEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  isHangTracerEnabled = [(ExternalHangTracerController *)self isHangTracerEnabled];
  bOOLValue = [isHangTracerEnabled BOOLValue];

  if (bOOLValue)
  {
    objc_initWeak(&location, self);
    if (!self->_logsState)
    {
      [(ExternalHangTracerController *)self markGroup:@"HANGTRACER_EXTERNAL_HANG_EVENTS" asLoading:1];
    }

    hangsDataFinder = [(ExternalHangTracerController *)self hangsDataFinder];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4474;
    v8[3] = &unk_3D0B0;
    objc_copyWeak(&v10, &location);
    v9 = completionCopy;
    [hangsDataFinder findEventsFilteringDeveloperApps:1 completionHandler:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)updateDeveloperAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  isHangTracerEnabled = [(ExternalHangTracerController *)self isHangTracerEnabled];
  bOOLValue = [isHangTracerEnabled BOOLValue];

  if (bOOLValue)
  {
    objc_initWeak(&location, self);
    if (!self->_appsState)
    {
      [(ExternalHangTracerController *)self markGroup:@"HANGTRACER_EXTERNAL_DEVELOPER_APPS" asLoading:1];
    }

    appsFinder = [(ExternalHangTracerController *)self appsFinder];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4688;
    v8[3] = &unk_3D0D8;
    objc_copyWeak(&v10, &location);
    v8[4] = self;
    v9 = completionCopy;
    [appsFinder findApps:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)updateProcessingHangEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (!self->_logsState)
  {
    [(ExternalHangTracerController *)self markGroup:@"HANGTRACER_EXTERNAL_HANG_EVENTS" asLoading:1];
  }

  hangsDataFinder = self->_hangsDataFinder;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4B28;
  v7[3] = &unk_3D0B0;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(HTHangsDataFinder *)hangsDataFinder findProcessingEventsFilteringDeveloperApps:1 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateSpecifiersWithHangEvents:(id)events processingHangEvents:(id)hangEvents
{
  eventsCopy = events;
  hangEventsCopy = hangEvents;
  v7 = [hangEventsCopy mutableCopy];
  [v7 setValuesForKeysWithDictionary:eventsCopy];
  v8 = +[NSMutableArray array];
  [(ExternalHangTracerController *)self goToNextLogsState];
  [(ExternalHangTracerController *)self markGroup:@"HANGTRACER_EXTERNAL_HANG_EVENTS" asLoading:self->_logsState != 2];
  if ([v7 count])
  {
    v9 = [(ExternalHangTracerController *)self hangEventsSpecifiersForDict:v7];
    [v8 addObjectsFromArray:v9];
  }

  else
  {
    v10 = HTUIPlaceholderNoLogs();
    v9 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    v11 = [NSMutableArray arrayWithObject:v9];

    v8 = v11;
  }

  cachedHangEventsSpecifiers = [(ExternalHangTracerController *)self cachedHangEventsSpecifiers];
  [(ExternalHangTracerController *)self setHangsEvents:eventsCopy];
  [(ExternalHangTracerController *)self setProcessingHangsEvents:hangEventsCopy];

  [(ExternalHangTracerController *)self setUnifiedHangsEvents:v7];
  [(ExternalHangTracerController *)self setCachedHangEventsSpecifiers:v8];
  [(ExternalHangTracerController *)self updateFromHangEventSpecifiers:cachedHangEventsSpecifiers toSpecifiers:v8];
  [(UIBarButtonItem *)self->_selectButtonItem setEnabled:[(ExternalHangTracerController *)self shouldEnableSelectButtonItem]];
  [(ExternalHangTracerController *)self updateShareButtonEnabled];
  if ([(ExternalHangTracerController *)self isEditing]&& ![(ExternalHangTracerController *)self shouldEnableSelectButtonItem])
  {
    [(ExternalHangTracerController *)self setEditing:0 animated:1];
  }
}

- (void)updateFromHangEventSpecifiers:(id)specifiers toSpecifiers:(id)toSpecifiers
{
  specifiersCopy = specifiers;
  toSpecifiersCopy = toSpecifiers;
  v8 = [(ExternalHangTracerController *)self indexOfSpecifierID:@"HANGTRACER_EXTERNAL_HANG_EVENTS"];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v10 = [toSpecifiersCopy differenceFromArray:specifiersCopy withOptions:0 usingEquivalenceTest:&stru_3D118];
    v11 = OBJC_IVAR___PSListController__specifiers;
    v12 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
    if ([specifiersCopy count])
    {
      v13 = *&self->PSListController_opaque[v11];
      firstObject = [specifiersCopy firstObject];
      v15 = [v13 indexOfObject:firstObject];
    }

    else
    {
      v15 = (v9 + 1);
    }

    v42 = toSpecifiersCopy;
    [v12 replaceObjectsInRange:v15 withObjectsFromArray:{objc_msgSend(specifiersCopy, "count"), toSpecifiersCopy}];
    v41 = v12;
    v16 = [v12 copy];
    v17 = *&self->PSListController_opaque[v11];
    *&self->PSListController_opaque[v11] = v16;

    table = [(ExternalHangTracerController *)self table];
    [table beginUpdates];

    v19 = &v15[~v9];
    insertions = [v10 insertions];
    v21 = [insertions count];

    v43 = v10;
    if (v21)
    {
      v22 = +[NSMutableArray array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      insertions2 = [v10 insertions];
      v24 = [insertions2 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v49;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v49 != v26)
            {
              objc_enumerationMutation(insertions2);
            }

            v28 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", &v19[[*(*(&v48 + 1) + 8 * i) index]], 3);
            [v22 addObject:v28];
          }

          v25 = [insertions2 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v25);
      }

      table2 = [(ExternalHangTracerController *)self table];
      [table2 insertRowsAtIndexPaths:v22 withRowAnimation:0];

      v10 = v43;
    }

    removals = [v10 removals];
    v31 = [removals count];

    if (v31)
    {
      v32 = +[NSMutableArray array];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      removals2 = [v10 removals];
      v34 = [removals2 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v45;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v45 != v36)
            {
              objc_enumerationMutation(removals2);
            }

            v38 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", &v19[[*(*(&v44 + 1) + 8 * j) index]], 3);
            [v32 addObject:v38];
          }

          v35 = [removals2 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v35);
      }

      table3 = [(ExternalHangTracerController *)self table];
      [table3 deleteRowsAtIndexPaths:v32 withRowAnimation:0];

      v10 = v43;
    }

    table4 = [(ExternalHangTracerController *)self table];
    [table4 endUpdates];

    [(ExternalHangTracerController *)self prepareSpecifiersMetadata];
    toSpecifiersCopy = v42;
  }
}

- (void)presentErrorWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3042000000;
  v15[3] = sub_5534;
  v15[4] = sub_5540;
  objc_initWeak(&v16, self);
  v8 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  v9 = HTUIDialogOKButton();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5548;
  v14[3] = &unk_3D140;
  v14[4] = v15;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v14];
  [v8 addAction:v10];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5598;
  block[3] = &unk_3D168;
  block[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(v15, 8);
  objc_destroyWeak(&v16);
}

- (void)reloadAsyncSpecifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3042000000;
  v20[3] = sub_5534;
  v20[4] = sub_5540;
  objc_initWeak(&v21, self);
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_580C;
  v17[3] = &unk_3D190;
  v6 = v5;
  v18 = v6;
  v19 = v20;
  [(ExternalHangTracerController *)self updateDeveloperAppsWithCompletion:v17];
  dispatch_group_enter(v6);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_58AC;
  v14[3] = &unk_3D190;
  v7 = v6;
  v15 = v7;
  v16 = v20;
  [(ExternalHangTracerController *)self updateHangEventsWithCompletion:v14];
  dispatch_group_enter(v7);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_594C;
  v12[3] = &unk_3D038;
  v8 = v7;
  v13 = v8;
  [(ExternalHangTracerController *)self updateProcessingHangEventsWithCompletion:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5954;
  v10[3] = &unk_3D1B8;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(v8, &_dispatch_main_q, v10);

  _Block_object_dispose(v20, 8);
  objc_destroyWeak(&v21);
}

- (BOOL)shouldEnableSelectButtonItem
{
  unifiedHangsEvents = [(ExternalHangTracerController *)self unifiedHangsEvents];
  v3 = [unifiedHangsEvents count] != 0;

  return v3;
}

- (void)updateShareButtonEnabled
{
  if (([(ExternalHangTracerController *)self isEditing]& 1) != 0)
  {
    table = [(ExternalHangTracerController *)self table];
    indexPathsForSelectedRows = [table indexPathsForSelectedRows];
    -[UIBarButtonItem setEnabled:](self->_shareButtonItem, "setEnabled:", [indexPathsForSelectedRows count] != 0);
  }

  else
  {
    shareButtonItem = self->_shareButtonItem;

    [(UIBarButtonItem *)shareButtonItem setEnabled:0];
  }
}

- (void)shareSelectedHangs:(id)hangs
{
  hangsCopy = hangs;
  selfCopy = self;
  table = [(ExternalHangTracerController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];

  v6 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = indexPathsForSelectedRows;
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v18 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(ExternalHangTracerController *)selfCopy specifierAtIndexPath:*(*(&v26 + 1) + 8 * i)];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v21 = v8;
        v9 = [v8 objectForKeyedSubscript:@"HangsDataControllerHangData"];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              path = [*(*(&v22 + 1) + 8 * j) path];
              v15 = [NSURL fileURLWithPath:path];

              [v6 addObject:v15];
              +[HTHangsAnalytics sendLogSharedEvent];
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  [(ExternalHangTracerController *)selfCopy shareLogs:v6 sender:hangsCopy];
}

- (void)shareLogs:(id)logs sender:(id)sender
{
  senderCopy = sender;
  logsCopy = logs;
  v7 = [[UIActivityViewController alloc] initWithActivityItems:logsCopy applicationActivities:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:senderCopy];
  }

  [(ExternalHangTracerController *)self presentViewController:v7 animated:1 completion:0];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v5 = [(ExternalHangTracerController *)self specifierAtIndexPath:path];
  v6 = [v5 objectForKeyedSubscript:@"HangsDataControllerIsProcessing"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = 0;
  }

  else if ([(ExternalHangTracerController *)self isEditing])
  {
    v9 = [v5 objectForKeyedSubscript:@"HangsDataControllerHangEvent"];
    v8 = v9 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(ExternalHangTracerController *)self updateShareButtonEnabled];
  if (([(ExternalHangTracerController *)self isEditing]& 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = ExternalHangTracerController;
    [(ExternalHangTracerController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(ExternalHangTracerController *)self isEditing]&& [(ExternalHangTracerController *)self tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(ExternalHangTracerController *)self specifierAtIndexPath:path];
  v5 = [v4 objectForKeyedSubscript:@"HangsDataControllerHangEvent"];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  if (([(ExternalHangTracerController *)self isEditing]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v22 = [(ExternalHangTracerController *)self specifierAtIndexPath:pathCopy];
    v20 = [v22 objectForKeyedSubscript:@"HangsDataControllerHangEvent"];
    v9 = [v22 objectForKeyedSubscript:@"HangsDataControllerIsProcessing"];
    bOOLValue = [v9 BOOLValue];

    v8 = 0;
    if ((bOOLValue & 1) == 0 && v20)
    {
      v11 = +[NSMutableArray array];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = [v22 objectForKeyedSubscript:@"HangsDataControllerHangData"];
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v12);
            }

            path = [*(*(&v27 + 1) + 8 * i) path];
            v17 = [NSURL fileURLWithPath:path];
            [v11 addObject:v17];
          }

          v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v13);
      }

      objc_initWeak(&location, self);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_6654;
      v23[3] = &unk_3D248;
      objc_copyWeak(&v25, &location);
      v18 = v11;
      v24 = v18;
      v8 = [UIContextMenuConfiguration configurationWithIdentifier:v20 previewProvider:&stru_3D1F8 actionProvider:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  return v8;
}

- (void)developerAppsDidChangeForFinder:(id)finder
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3042000000;
  v4[3] = sub_5534;
  v4[4] = sub_5540;
  objc_initWeak(&v5, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_693C;
  block[3] = &unk_3D298;
  block[4] = v4;
  dispatch_async(&_dispatch_main_q, block);
  _Block_object_dispose(v4, 8);
  objc_destroyWeak(&v5);
}

- (id)thresholdSpecifiers
{
  v3 = HTUILogsThresholdSelectorTitle();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setHangTracerThreshold:forSpecifier:" get:"hangTracerThreshold" detail:0 cell:9 edit:0];

  [v4 setIdentifier:@"HANGTRACER_EXTERNAL_HANG_THRESHOLD"];
  [v4 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  availableThresholdsValues = [(HTDeveloperSettings *)self->_hangTracerSettings availableThresholdsValues];
  availableThresholdsShortNames = [(HTDeveloperSettings *)self->_hangTracerSettings availableThresholdsShortNames];
  [v4 setValues:availableThresholdsValues titles:availableThresholdsShortNames];
  v7 = HTUILogsThresholdSelectorTitle();
  v8 = [PSSpecifier groupSpecifierWithID:@"HANGTRACER_EXTERNAL_HANG_THRESHOLD_GROUP" name:v7];
  v11[0] = v8;
  v11[1] = v4;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (id)specifiersOnlyWhenEnabled
{
  v3 = +[NSMutableArray array];
  thresholdSpecifiers = [(ExternalHangTracerController *)self thresholdSpecifiers];
  [v3 addObjectsFromArray:thresholdSpecifiers];

  v5 = HTUIAppsSectionTitle();
  v6 = [PSSpecifier groupSpecifierWithID:@"HANGTRACER_EXTERNAL_DEVELOPER_APPS" name:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = PSHeaderCellClassGroupKey;
  [v6 setObject:v8 forKeyedSubscript:PSHeaderCellClassGroupKey];

  if (self->_appsState)
  {
    v10 = HTUIAppsSectionFooter();
    [v6 setObject:v10 forKeyedSubscript:PSFooterTextGroupKey];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:PSFooterTextGroupKey];
  }

  [v3 addObject:v6];
  [v3 addObjectsFromArray:self->_cachedDeveloperAppsSpecifiers];
  v11 = HTUILogsSectionTitle();
  v12 = [PSSpecifier groupSpecifierWithID:@"HANGTRACER_EXTERNAL_HANG_EVENTS" name:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 setObject:v14 forKeyedSubscript:v9];

  [v12 setObject:&off_413B0 forKeyedSubscript:@"top-margin"];
  [v3 addObject:v12];
  [v3 addObjectsFromArray:self->_cachedHangEventsSpecifiers];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = HTUIActivationToggleTitle();
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"enableHangTracer:forSpecifier:" get:"isHangTracerEnabled" detail:0 cell:6 edit:0];

    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [v6 setIdentifier:@"HANGTRACER_EXTERNAL_HANG_TOGGLE"];
    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v7 setTarget:self];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setObject:v9 forKeyedSubscript:PSFooterCellClassGroupKey];

    v17[0] = v7;
    v17[1] = v6;
    v10 = [NSArray arrayWithObjects:v17 count:2];
    v11 = [NSMutableArray arrayWithArray:v10];

    isHangTracerEnabled = [(ExternalHangTracerController *)self isHangTracerEnabled];
    bOOLValue = [isHangTracerEnabled BOOLValue];

    if (bOOLValue)
    {
      specifiersOnlyWhenEnabled = [(ExternalHangTracerController *)self specifiersOnlyWhenEnabled];
      [v11 addObjectsFromArray:specifiersOnlyWhenEnabled];
    }

    v15 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v11;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)developerAppsSpecifiersFromList:(id)list
{
  listCopy = list;
  v4 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = listCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = PSLazyIconAppID;
    v9 = PSLazyIconLoading;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        name = [v11 name];
        v13 = [PSSpecifier preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:4 edit:0];

        bundleID = [v11 bundleID];
        [v13 setIdentifier:bundleID];

        bundleID2 = [v11 bundleID];
        [v13 setObject:bundleID2 forKeyedSubscript:v8];

        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)hangEventsSpecifiersForDict:(id)dict
{
  dictCopy = dict;
  v29 = +[NSMutableArray array];
  [HTHangsDataEntry sortedHangIDsByCreationDate:dictCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v27 = PSCellClassKey;
    v28 = *v32;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [dictCopy objectForKeyedSubscript:v6];
        firstObject = [v7 firstObject];

        displayName = [firstObject displayName];
        if ([firstObject isBeingProcessed])
        {
          v10 = 0;
        }

        else
        {
          v10 = objc_opt_class();
        }

        if ([firstObject isBeingProcessed])
        {
          v11 = 15;
        }

        else
        {
          v11 = 2;
        }

        v12 = [PSSpecifier preferenceSpecifierNamed:displayName target:self set:0 get:"hangEventDetails:" detail:v10 cell:v11 edit:0];

        hangID = [firstObject hangID];
        [v12 setIdentifier:hangID];

        [v12 setObject:objc_opt_class() forKeyedSubscript:v27];
        [v12 setObject:v6 forKeyedSubscript:@"HangsDataControllerHangEvent"];
        v14 = [dictCopy objectForKeyedSubscript:v6];
        [v12 setObject:v14 forKeyedSubscript:@"HangsDataControllerHangData"];

        v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [firstObject isBeingProcessed]);
        [v12 setObject:v15 forKeyedSubscript:@"HangsDataControllerIsProcessing"];

        [firstObject duration];
        v16 = [NSNumber numberWithDouble:?];
        [v12 setObject:v16 forKeyedSubscript:@"HangsDataControllerDuration"];

        v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject durationLevel]);
        [v12 setObject:v17 forKeyedSubscript:@"HangsDataControllerDurationLevel"];

        [firstObject duration];
        if (v18 > 0.0)
        {
          v19 = [NSMeasurement alloc];
          [firstObject duration];
          v21 = v20;
          v22 = +[NSUnitDuration milliseconds];
          v23 = [v19 initWithDoubleValue:v22 unit:v21];

          v24 = [(NSMeasurementFormatter *)self->_durationFormatter stringFromMeasurement:v23];
          [v12 setObject:v24 forKeyedSubscript:@"HangsDataControllerFormattedDuration"];
        }

        [v29 addObject:v12];
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  return v29;
}

- (id)hangEventDetails:(id)details
{
  v4 = [details objectForKeyedSubscript:@"HangsDataControllerHangEvent"];
  if (v4)
  {
    unifiedHangsEvents = [(ExternalHangTracerController *)self unifiedHangsEvents];
    v6 = [unifiedHangsEvents objectForKeyedSubscript:v4];
    firstObject = [v6 firstObject];

    creationDate = [firstObject creationDate];

    if (creationDate)
    {
      formatter = self->_formatter;
      creationDate2 = [firstObject creationDate];
      v11 = [(NSDateFormatter *)formatter stringFromDate:creationDate2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setHangTracerThreshold:(id)threshold forSpecifier:(id)specifier
{
  intValue = [threshold intValue];
  NSLog(@"Setting external hang tracer threshold to %ld", intValue);
  [HTHangsAnalytics sendHangThresholdChangedEvent:intValue];
  hangTracerSettings = [(ExternalHangTracerController *)self hangTracerSettings];
  [hangTracerSettings setHangTracerThreshold:intValue];
}

- (id)hangTracerThreshold
{
  hangTracerSettings = [(ExternalHangTracerController *)self hangTracerSettings];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [hangTracerSettings hangTracerThreshold]);

  return v3;
}

- (void)enableHangTracer:(id)tracer forSpecifier:(id)specifier
{
  tracerCopy = tracer;
  specifierCopy = specifier;
  bOOLValue = [tracerCopy BOOLValue];
  NSLog(@"Setting external hang tracer enabled to %d", bOOLValue);
  hangTracerSettings = [(ExternalHangTracerController *)self hangTracerSettings];
  [hangTracerSettings setEnabled:bOOLValue];

  if (bOOLValue)
  {
    specifiersOnlyWhenEnabled = [(ExternalHangTracerController *)self specifiersOnlyWhenEnabled];
    [(ExternalHangTracerController *)self insertContiguousSpecifiers:specifiersOnlyWhenEnabled afterSpecifierID:@"HANGTRACER_EXTERNAL_HANG_TOGGLE" animated:1];

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3042000000;
    v16[3] = sub_5534;
    v16[4] = sub_5540;
    objc_initWeak(&v17, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7A44;
    v14[3] = &unk_3D2C0;
    v14[4] = v16;
    v15 = 1;
    [(ExternalHangTracerController *)self delayedAsyncLoadSpecifiersWithCompletion:v14];
    _Block_object_dispose(v16, 8);
    objc_destroyWeak(&v17);
  }

  else
  {
    developerApps = [(ExternalHangTracerController *)self developerApps];
    v12 = [developerApps count];

    [HTHangsAnalytics sendActivationEvent:0 developerAppCount:v12];
    [(ExternalHangTracerController *)self setDeveloperApps:&__NSArray0__struct];
    [(ExternalHangTracerController *)self setCachedDeveloperAppsSpecifiers:&__NSArray0__struct];
    [(ExternalHangTracerController *)self setHangsEvents:&__NSDictionary0__struct];
    [(ExternalHangTracerController *)self setProcessingHangsEvents:&__NSDictionary0__struct];
    [(ExternalHangTracerController *)self setUnifiedHangsEvents:&__NSDictionary0__struct];
    [(ExternalHangTracerController *)self setCachedHangEventsSpecifiers:&__NSArray0__struct];
    [(ExternalHangTracerController *)self removeSpecifierID:@"HANGTRACER_EXTERNAL_HANG_THRESHOLD_GROUP" animated:1];
    [(ExternalHangTracerController *)self removeSpecifierID:@"HANGTRACER_EXTERNAL_DEVELOPER_APPS" animated:1];
    [(ExternalHangTracerController *)self removeSpecifierID:@"HANGTRACER_EXTERNAL_HANG_EVENTS" animated:1];
  }

  [(ExternalHangTracerController *)self updateRightBarButtonItemAnimated:1];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"com.apple.Preferences.hangTracerStateChanged" object:0];
}

- (id)isHangTracerEnabled
{
  hangTracerSettings = [(ExternalHangTracerController *)self hangTracerSettings];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [hangTracerSettings isEnabled]);

  return v3;
}

- (void)delayedAsyncLoadSpecifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3042000000;
  v9[3] = sub_5534;
  v9[4] = sub_5540;
  objc_initWeak(&v10, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7C4C;
  v6[3] = &unk_3D2E8;
  v8 = v9;
  v5 = completionCopy;
  v7 = v5;
  [(ExternalHangTracerController *)self reloadAsyncSpecifiersWithCompletion:v6];

  _Block_object_dispose(v9, 8);
  objc_destroyWeak(&v10);
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = ExternalHangTracerController;
  [(ExternalHangTracerController *)&v3 reloadSpecifiers];
  [(ExternalHangTracerController *)self delayedAsyncLoadSpecifiersWithCompletion:0];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d urlDictionary:(id)dictionary
{
  dCopy = d;
  v6 = [[NSUUID alloc] initWithUUIDString:dCopy];
  if (v6)
  {
    v7 = [(ExternalHangTracerController *)self specifierForID:dCopy];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end