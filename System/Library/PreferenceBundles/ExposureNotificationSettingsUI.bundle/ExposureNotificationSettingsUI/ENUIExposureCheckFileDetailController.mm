@interface ENUIExposureCheckFileDetailController
- (id)_hashTextSpecifier;
- (id)dataSource;
- (id)matchedKeyText;
- (id)providedKeyText;
- (id)specifiers;
- (id)timestampText;
- (void)viewDidLoad;
@end

@implementation ENUIExposureCheckFileDetailController

- (void)viewDidLoad
{
  v3 = [(ENUIExposureCheckFileDetailController *)self specifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 propertyForKey:v5];
  file = self->_file;
  self->_file = v6;

  v8.receiver = self;
  v8.super_class = ENUIExposureCheckFileDetailController;
  [(ENUIExposureCheckFileDetailController *)&v8 viewDidLoad];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = ENUILocalizedString();
    [(ENUIExposureCheckFileDetailController *)self setTitle:v5];

    v6 = objc_alloc_init(NSMutableArray);
    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v6 addObject:v7];

    v8 = ENUILocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"timestampText" detail:0 cell:4 edit:0];
    [v6 addObject:v9];

    v10 = ENUILocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"providedKeyText" detail:0 cell:4 edit:0];
    [v6 addObject:v11];

    v12 = [(ENExposureDetectionHistoryFile *)self->_file matchCount];

    if (v12)
    {
      v13 = ENUILocalizedString();
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"matchedKeyText" detail:0 cell:4 edit:0];
      [v6 addObject:v14];
    }

    v15 = ENUILocalizedString();
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:"dataSource" detail:0 cell:4 edit:0];
    [v6 addObject:v16];

    v17 = ENUILocalizedString();
    v18 = [PSSpecifier groupSpecifierWithName:v17];
    [v6 addObject:v18];

    v19 = [(ENUIExposureCheckFileDetailController *)self _hashTextSpecifier];
    [v6 addObject:v19];

    v20 = [v6 copy];
    v21 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v20;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_hashTextSpecifier
{
  v3 = [(ENUIExposureCheckFileDetailController *)self hashText];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:8 edit:0];

  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v4;
}

- (id)timestampText
{
  if (qword_34118 != -1)
  {
    sub_1C344();
  }

  file = self->_file;
  v4 = qword_34110;
  v5 = [(ENExposureDetectionHistoryFile *)file processDate];
  v6 = [v4 stringFromDate:v5];

  return v6;
}

- (id)providedKeyText
{
  v3 = sub_1760C();
  v4 = [(ENExposureDetectionHistoryFile *)self->_file keyCount];
  v5 = [v3 stringFromNumber:v4];

  return v5;
}

- (id)matchedKeyText
{
  v3 = sub_1760C();
  v4 = [(ENExposureDetectionHistoryFile *)self->_file matchCount];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &off_2EEB8;
  }

  v7 = [v3 stringFromNumber:v6];

  return v7;
}

- (id)dataSource
{
  v3 = [(ENExposureDetectionHistoryFile *)self->_file sourceAppBundleIdentifier];
  if (v3)
  {
    v4 = [LSApplicationProxy applicationProxyForIdentifier:v3];
    v5 = [v4 appState];
    if ([v5 isValid])
    {
      v6 = [v4 localizedName];
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v4 = [(ENExposureDetectionHistoryFile *)self->_file sourceRegion];
    v7 = [v4 regionCode];
  }

  return v7;
}

@end