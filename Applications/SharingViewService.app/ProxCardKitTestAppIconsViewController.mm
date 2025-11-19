@interface ProxCardKitTestAppIconsViewController
- (ProxCardKitTestAppIconsViewController)initWithContentView:(id)a3;
@end

@implementation ProxCardKitTestAppIconsViewController

- (ProxCardKitTestAppIconsViewController)initWithContentView:(id)a3
{
  v33.receiver = self;
  v33.super_class = ProxCardKitTestAppIconsViewController;
  v29 = a3;
  v3 = [(ProxCardKitTestAppIconsViewController *)&v33 initWithContentView:?];
  v4 = v3;
  if (v3)
  {
    [(ProxCardKitTestAppIconsViewController *)v3 setTitle:@"ProxCardKit Test"];
    [(ProxCardKitTestAppIconsViewController *)v4 setImageStyle:1];
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v6 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.MobileSMS" format:2 scale:?];
    v34[0] = v6;
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v8 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.reminders" format:2 scale:?];
    v34[1] = v8;
    if (SFIsDevicePhone())
    {
      v9 = @"com.apple.mobilephone";
    }

    else
    {
      v9 = @"com.apple.mobilenotes";
    }

    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v11 = [UIImage _applicationIconImageForBundleIdentifier:v9 format:2 scale:?];
    v34[2] = v11;
    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v13 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.mobilesafari" format:2 scale:?];
    v34[3] = v13;
    v14 = [NSArray arrayWithObjects:v34 count:4];
    [(ProxCardKitTestAppIconsViewController *)v4 setImages:v14];

    [(ProxCardKitTestAppIconsViewController *)v4 setBodyText:@"Use this view to list apps such as Messages, Phone, Reminders, and more when setting up a device."];
    objc_initWeak(&location, v4);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100118D88;
    v30[3] = &unk_1001958D8;
    objc_copyWeak(&v31, &location);
    v15 = [PRXAction actionWithTitle:@"Next" style:0 handler:v30];
    v16 = [(ProxCardKitTestAppIconsViewController *)v4 addAction:v15];

    v17 = [[NSMutableAttributedString alloc] initWithString:&stru_100195CA8];
    v18 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
    v19 = +[UIColor blueColor];
    v20 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v19];

    v21 = [UIImage _systemImageNamed:@"apple.logo"];
    v22 = [v21 imageByApplyingSymbolConfiguration:v18];
    v23 = [v22 imageByApplyingSymbolConfiguration:v20];

    v24 = objc_alloc_init(NSTextAttachment);
    [v24 setImage:v23];
    v25 = [NSAttributedString attributedStringWithAttachment:v24];
    [v17 appendAttributedString:v25];

    v26 = [[NSAttributedString alloc] initWithString:@"\nAttributed String Example"];
    [v17 appendAttributedString:v26];

    [(ProxCardKitTestAppIconsViewController *)v4 setAttributedBottomTrayTitle:v17];
    v27 = v4;

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v4;
}

@end