@interface BuddyiOSTCController
- (BuddyiOSTCController)init;
- (id)termsContent;
- (id)titleString;
@end

@implementation BuddyiOSTCController

- (BuddyiOSTCController)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyiOSTCController;
  location = [(BuddyiOSTCController *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[BYLicenseAgreement versionOfOnDiskAgreement];
    *(location + 3) = v2;
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (id)termsContent
{
  v16[2] = self;
  v16[1] = a2;
  v2 = SFLicenseFilePath();
  v16[0] = [NSData dataWithContentsOfFile:v2];

  v15 = [[NSString alloc] initWithData:v16[0] encoding:4];
  v3 = +[NSBundle mainBundle];
  v14 = [(NSBundle *)v3 localizedStringForKey:@"TERMS_CONDITIONS_LINK" value:&stru_10032F900 table:@"Localizable"];

  if (sub_100196140())
  {
    v4 = @"rtl";
  }

  else
  {
    v4 = @"ltr";
  }

  v5 = v4;
  v6 = [NSString stringWithFormat:@"<body><p dir=%@ class=p1><b>%@</b></p><p class=p1><br></p>", v5, v14, v5];
  v7 = [v15 stringByReplacingOccurrencesOfString:@"<body>" withString:v6];
  v8 = v15;
  v15 = v7;

  v9 = [v15 stringByReplacingOccurrencesOfString:@"<head>" withString:{@"<head><meta name=viewport content=width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no/>"}];
  v10 = v15;
  v15 = v9;

  v11 = v15;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  return v11;
}

- (id)titleString
{
  v2 = [NSBundle mainBundle:a2];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_10032F900 table:@"Localizable"];

  return v3;
}

@end