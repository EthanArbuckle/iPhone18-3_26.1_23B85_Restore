@interface BuddyWarrantyTCController
- (id)termsContent;
- (id)titleString;
@end

@implementation BuddyWarrantyTCController

- (id)termsContent
{
  location[2] = self;
  location[1] = a2;
  v2 = +[BuddyWarrantyTCController warrantyFilePath];
  location[0] = [NSData dataWithContentsOfFile:v2];

  v7 = [[NSString alloc] initWithData:location[0] encoding:4];
  v3 = [v7 stringByReplacingOccurrencesOfString:@"<head>" withString:{@"<head><meta name=viewport content=width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no/>"}];
  v4 = v7;
  v7 = v3;

  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)titleString
{
  v2 = [NSBundle mainBundle:a2];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"WARRANTY" value:&stru_10032F900 table:@"Localizable"];

  return v3;
}

@end