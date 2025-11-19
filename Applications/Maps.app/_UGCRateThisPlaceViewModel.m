@interface _UGCRateThisPlaceViewModel
- (NSString)titleString;
@end

@implementation _UGCRateThisPlaceViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[UGC Contribution Card] Rate This Place" value:@"localized string not found" table:0];

  return v3;
}

@end