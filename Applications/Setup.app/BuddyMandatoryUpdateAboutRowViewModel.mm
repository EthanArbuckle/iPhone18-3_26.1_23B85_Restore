@interface BuddyMandatoryUpdateAboutRowViewModel
+ (id)_makeCurrentVersionRow;
+ (id)_makeRequiredVersionRowWithScanOptions:(id)options;
+ (id)viewModelsWithScanOptions:(id)options;
- (BuddyMandatoryUpdateAboutRowViewModel)initWithTitle:(id)title detail:(id)detail;
@end

@implementation BuddyMandatoryUpdateAboutRowViewModel

+ (id)viewModelsWithScanOptions:(id)options
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = 0;
  objc_storeStrong(v7, options);
  _makeCurrentVersionRow = [selfCopy _makeCurrentVersionRow];
  v9[0] = _makeCurrentVersionRow;
  v4 = [selfCopy _makeRequiredVersionRowWithScanOptions:v7[0]];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];

  objc_storeStrong(v7, 0);

  return v5;
}

- (BuddyMandatoryUpdateAboutRowViewModel)initWithTitle:(id)title detail:(id)detail
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v13 = 0;
  objc_storeStrong(&v13, detail);
  v5 = selfCopy;
  selfCopy = 0;
  v12.receiver = v5;
  v12.super_class = BuddyMandatoryUpdateAboutRowViewModel;
  selfCopy = [(BuddyMandatoryUpdateAboutRowViewModel *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = [location[0] copy];
    v7 = *(selfCopy + 1);
    *(selfCopy + 1) = v6;

    v8 = [v13 copy];
    v9 = *(selfCopy + 2);
    *(selfCopy + 2) = v8;
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

+ (id)_makeCurrentVersionRow
{
  selfCopy = self;
  location[1] = a2;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  location[0] = [(NSBundle *)v2 localizedStringForKey:@"MANDATORY_UPDATE_INFO_CURRENT_VERSION" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];

  v5 = +[BuddyMandatoryUpdateUtilities humanReadableCurrentOSVersion];
  v3 = [[selfCopy alloc] initWithTitle:location[0] detail:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v3;
}

+ (id)_makeRequiredVersionRowWithScanOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v3 localizedStringForKey:@"MANDATORY_UPDATE_INFO_REQUIRED_VERSION" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];

  v6 = [BuddyMandatoryUpdateUtilities humanReadableOSVersionFromScanOptions:location[0]];
  v4 = [[selfCopy alloc] initWithTitle:v7 detail:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end