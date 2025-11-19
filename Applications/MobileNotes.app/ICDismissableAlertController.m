@interface ICDismissableAlertController
+ (id)alertControllerWithTitle:(id)a3 description:(id)a4 icon:(id)a5;
@end

@implementation ICDismissableAlertController

+ (id)alertControllerWithTitle:(id)a3 description:(id)a4 icon:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alertControllerWithTitle:0 message:0 preferredStyle:0];
  v12 = objc_alloc_init(UIViewController);
  v13 = [[ICActionSheetHeaderView alloc] initWithTitle:v10 snippet:v9 iconImage:v8];

  [v12 setView:v13];
  [v11 setContentViewController:v12];

  return v11;
}

@end