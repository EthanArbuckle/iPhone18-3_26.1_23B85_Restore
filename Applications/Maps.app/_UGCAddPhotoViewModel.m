@interface _UGCAddPhotoViewModel
- (NSString)titleString;
@end

@implementation _UGCAddPhotoViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[UGC Contribution Card] Add Your Photos button" value:@"localized string not found" table:0];

  return v3;
}

@end