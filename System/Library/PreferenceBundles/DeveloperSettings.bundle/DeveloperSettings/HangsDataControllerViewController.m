@interface HangsDataControllerViewController
- (HangsDataControllerViewController)init;
- (id)entries;
- (id)getHangEventDuration;
- (id)getHangEventProcessCreationDate;
- (id)getHangEventProcessName;
- (id)makeSpecifierForHangsDataEntry:(id)a3;
- (id)specifierNameForEntry:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)setSpecifier:(id)a3;
- (void)shareAllEntries:(id)a3;
- (void)shareEntry:(id)a3 forRowAtIndexPath:(id)a4;
- (void)updateRightBarButtonItems;
- (void)viewDidLoad;
@end

@implementation HangsDataControllerViewController

- (HangsDataControllerViewController)init
{
  v9.receiver = self;
  v9.super_class = HangsDataControllerViewController;
  v2 = [(HangsDataControllerViewController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;

    [(NSDateFormatter *)v2->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)v2->_dateFormatter setTimeStyle:1];
    v5 = objc_alloc_init(NSMeasurementFormatter);
    durationFormatter = v2->_durationFormatter;
    v2->_durationFormatter = v5;

    [(NSMeasurementFormatter *)v2->_durationFormatter setUnitStyle:1];
    [(NSMeasurementFormatter *)v2->_durationFormatter setUnitOptions:1];
    v7 = objc_alloc_init(NSNumberFormatter);
    [v7 setNumberStyle:0];
    [v7 setMaximumFractionDigits:0];
    [(NSMeasurementFormatter *)v2->_durationFormatter setNumberFormatter:v7];
  }

  return v2;
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  [(HangsDataControllerViewController *)self setCachedEntries:0];
  [(HangsDataControllerViewController *)self setCachedSpecifiers:0];
  v5.receiver = self;
  v5.super_class = HangsDataControllerViewController;
  [(HangsDataControllerViewController *)&v5 setSpecifier:v4];

  [(HangsDataControllerViewController *)self reloadSpecifiers];
  [(HangsDataControllerViewController *)self updateRightBarButtonItems];
}

- (id)entries
{
  if (!self->_cachedEntries)
  {
    v3 = [(HangsDataControllerViewController *)self specifier];
    v4 = [v3 objectForKeyedSubscript:@"HangsDataControllerHangData"];

    if (v4)
    {
      v5 = [(HangsDataControllerViewController *)self specifier];
      v6 = [v5 objectForKeyedSubscript:@"HangsDataControllerHangData"];
      v7 = [HTHangsDataEntry sortedEntriesByFileType:v6];
    }

    else
    {
      v7 = &__NSArray0__struct;
    }

    [(HangsDataControllerViewController *)self setCachedEntries:v7];
  }

  return [(HangsDataControllerViewController *)self cachedEntries];
}

- (id)getHangEventProcessName
{
  v2 = [(HangsDataControllerViewController *)self entries];
  v3 = [v2 firstObject];
  v4 = [v3 displayName];

  return v4;
}

- (id)getHangEventDuration
{
  v3 = [NSMeasurement alloc];
  v4 = [(HangsDataControllerViewController *)self entries];
  v5 = [v4 firstObject];
  [v5 duration];
  v7 = v6;
  v8 = +[NSUnitDuration milliseconds];
  v9 = [v3 initWithDoubleValue:v8 unit:v7];

  v10 = [(HangsDataControllerViewController *)self durationFormatter];
  v11 = [v10 stringFromMeasurement:v9];

  return v11;
}

- (id)getHangEventProcessCreationDate
{
  v3 = [(HangsDataControllerViewController *)self entries];
  v4 = [v3 firstObject];
  v5 = [v4 creationDate];

  if (v5)
  {
    v6 = [(HangsDataControllerViewController *)self dateFormatter];
    v7 = [v6 stringFromDate:v5];
  }

  else
  {
    v7 = &stru_3E0D8;
  }

  return v7;
}

- (id)specifiers
{
  v3 = [(HangsDataControllerViewController *)self cachedSpecifiers];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    v5 = [(HangsDataControllerViewController *)self entries];
    v6 = [v5 firstObject];
    if (v6)
    {
      v7 = HTUIDurationLabel();
      v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"getHangEventDuration" detail:0 cell:4 edit:0];

      v9 = PSUseModernLayoutKey;
      [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSUseModernLayoutKey];
      [v6 duration];
      v10 = [NSNumber numberWithDouble:?];
      [v8 setObject:v10 forKeyedSubscript:@"HangsDataControllerDuration"];

      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 durationLevel]);
      [v8 setObject:v11 forKeyedSubscript:@"HangsDataControllerDurationLevel"];

      [v8 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      [v4 addObject:v8];
      v12 = HTUITimestampLabel();
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"getHangEventProcessCreationDate" detail:0 cell:4 edit:0];

      [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
      [v4 addObject:v13];
    }

    v14 = HTUILogsSectionTitle();
    v15 = [PSSpecifier groupSpecifierWithName:v14];

    [v4 addObject:v15];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(HangsDataControllerViewController *)self makeSpecifierForHangsDataEntry:*(*(&v27 + 1) + 8 * v20)];
          [v4 addObject:v21];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    [(HangsDataControllerViewController *)self setCachedSpecifiers:v4];
  }

  v22 = OBJC_IVAR___PSListController__specifiers;
  v23 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v23)
  {
    v24 = [(HangsDataControllerViewController *)self cachedSpecifiers];
    v25 = *&self->PSListController_opaque[v22];
    *&self->PSListController_opaque[v22] = v24;

    v23 = *&self->PSListController_opaque[v22];
  }

  return v23;
}

- (id)makeSpecifierForHangsDataEntry:(id)a3
{
  v4 = a3;
  v5 = [(HangsDataControllerViewController *)self specifierNameForEntry:v4];
  v6 = objc_opt_class();
  v7 = [v4 isLogFile];
  v8 = PSTextViewPane_ptr;
  if (!v7)
  {
    v8 = off_3C8D8;
  }

  v9 = *v8;
  v10 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:v6 cell:2 edit:objc_opt_class()];

  v11 = [v4 path];
  [v10 setObject:v11 forKeyedSubscript:@"file-path"];

  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 fileSize]);
  [v10 setObject:v12 forKeyedSubscript:@"HangsDataControllerFileSize"];

  v13 = [v4 hangID];
  [v10 setObject:v13 forKeyedSubscript:@"HangsDataControllerHangEvent"];

  [v10 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];

  return v10;
}

- (id)specifierNameForEntry:(id)a3
{
  if ([a3 isLogFile])
  {
    HTUIFileFormatSpindump();
  }

  else
  {
    HTUIFileFormatTailspin();
  }
  v3 = ;

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HangsDataControllerViewController;
  [(HangsDataControllerViewController *)&v3 viewDidLoad];
  [(HangsDataControllerViewController *)self updateRightBarButtonItems];
}

- (void)updateRightBarButtonItems
{
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"shareAllEntries:"];
  v3 = [(HangsDataControllerViewController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
}

- (void)shareAllEntries:(id)a3
{
  v14 = a3;
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HangsDataControllerViewController *)self entries];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) path];
        v11 = [NSURL fileURLWithPath:v10];

        [v4 addObject:v11];
        +[HTHangsAnalytics sendLogSharedEvent];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [[UIActivityViewController alloc] initWithActivityItems:v4 applicationActivities:0];
  v13 = [v12 popoverPresentationController];
  [v13 setBarButtonItem:v14];

  [(HangsDataControllerViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)shareEntry:(id)a3 forRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  +[HTHangsAnalytics sendLogSharedEvent];
  v23 = v7;
  v8 = [NSArray arrayWithObjects:&v23 count:1];
  v9 = [UIActivityViewController alloc];

  v10 = [v9 initWithActivityItems:v8 applicationActivities:0];
  v11 = [(HangsDataControllerViewController *)self table];
  v12 = [v10 popoverPresentationController];
  [v12 setSourceView:v11];

  v13 = [(HangsDataControllerViewController *)self table];
  [v13 rectForRowAtIndexPath:v6];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [v10 popoverPresentationController];
  [v22 setSourceRect:{v15, v17, v19, v21}];

  [(HangsDataControllerViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(HangsDataControllerViewController *)self specifierAtIndexPath:v8];
  v10 = [v9 objectForKeyedSubscript:@"file-path"];
  if (v10)
  {
    v11 = [NSURL fileURLWithPath:v10];
    if (v11)
    {
      objc_initWeak(&location, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_C0D4;
      v14[3] = &unk_3D440;
      objc_copyWeak(&v17, &location);
      v15 = v11;
      v16 = v8;
      v12 = [UIContextMenuConfiguration configurationWithIdentifier:v10 previewProvider:&stru_3D3F0 actionProvider:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end