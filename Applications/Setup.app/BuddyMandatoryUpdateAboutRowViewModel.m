@interface BuddyMandatoryUpdateAboutRowViewModel
+ (id)_makeCurrentVersionRow;
+ (id)_makeRequiredVersionRowWithScanOptions:(id)a3;
+ (id)viewModelsWithScanOptions:(id)a3;
- (BuddyMandatoryUpdateAboutRowViewModel)initWithTitle:(id)a3 detail:(id)a4;
@end

@implementation BuddyMandatoryUpdateAboutRowViewModel

+ (id)viewModelsWithScanOptions:(id)a3
{
  v8 = a1;
  v7[1] = a2;
  v7[0] = 0;
  objc_storeStrong(v7, a3);
  v3 = [v8 _makeCurrentVersionRow];
  v9[0] = v3;
  v4 = [v8 _makeRequiredVersionRowWithScanOptions:v7[0]];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];

  objc_storeStrong(v7, 0);

  return v5;
}

- (BuddyMandatoryUpdateAboutRowViewModel)initWithTitle:(id)a3 detail:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = v15;
  v15 = 0;
  v12.receiver = v5;
  v12.super_class = BuddyMandatoryUpdateAboutRowViewModel;
  v15 = [(BuddyMandatoryUpdateAboutRowViewModel *)&v12 init];
  objc_storeStrong(&v15, v15);
  if (v15)
  {
    v6 = [location[0] copy];
    v7 = *(v15 + 1);
    *(v15 + 1) = v6;

    v8 = [v13 copy];
    v9 = *(v15 + 2);
    *(v15 + 2) = v8;
  }

  v10 = v15;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v10;
}

+ (id)_makeCurrentVersionRow
{
  v7 = a1;
  location[1] = a2;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  location[0] = [(NSBundle *)v2 localizedStringForKey:@"MANDATORY_UPDATE_INFO_CURRENT_VERSION" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];

  v5 = +[BuddyMandatoryUpdateUtilities humanReadableCurrentOSVersion];
  v3 = [[v7 alloc] initWithTitle:location[0] detail:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v3;
}

+ (id)_makeRequiredVersionRowWithScanOptions:(id)a3
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v3 localizedStringForKey:@"MANDATORY_UPDATE_INFO_REQUIRED_VERSION" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];

  v6 = [BuddyMandatoryUpdateUtilities humanReadableOSVersionFromScanOptions:location[0]];
  v4 = [[v9 alloc] initWithTitle:v7 detail:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end