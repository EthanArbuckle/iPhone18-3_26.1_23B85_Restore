@interface ICDismissableAlertController
+ (id)alertControllerWithTitle:(id)title description:(id)description icon:(id)icon;
@end

@implementation ICDismissableAlertController

+ (id)alertControllerWithTitle:(id)title description:(id)description icon:(id)icon
{
  iconCopy = icon;
  descriptionCopy = description;
  titleCopy = title;
  v11 = [self alertControllerWithTitle:0 message:0 preferredStyle:0];
  v12 = objc_alloc_init(UIViewController);
  v13 = [[ICActionSheetHeaderView alloc] initWithTitle:titleCopy snippet:descriptionCopy iconImage:iconCopy];

  [v12 setView:v13];
  [v11 setContentViewController:v12];

  return v11;
}

@end