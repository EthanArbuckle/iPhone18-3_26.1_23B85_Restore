@interface BuddySkipWiFiAlertController
+ (id)alertController;
@end

@implementation BuddySkipWiFiAlertController

+ (id)alertController
{
  v32[2] = self;
  v32[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = SFLocalizableWAPIStringKeyForKey();
  v4 = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"SKIP_WIFI_MESSAGE" value:&stru_10032F900 table:@"Localizable"];
  v32[0] = [BuddySkipWiFiAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  objc_initWeak(&location, v32[0]);
  v7 = v32[0];
  v8 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  v25 = _NSConcreteStackBlock;
  v26 = -1073741824;
  v27 = 0;
  v28 = sub_1000B1718;
  v29 = &unk_10032B928;
  objc_copyWeak(v30, &location);
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:&v25];
  [v7 addAction:v10];
  v24 = 0;

  v11 = v32[0];
  v12 = +[NSBundle mainBundle];
  v13 = SFLocalizableWAPIStringKeyForKey();
  v14 = [(NSBundle *)v12 localizedStringForKey:v13 value:&stru_10032F900 table:@"Localizable"];
  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = sub_1000B17DC;
  v22 = &unk_10032B928;
  objc_copyWeak(&v23, &location);
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:&v18];
  [v11 addAction:v15];

  v16 = v32[0];
  objc_destroyWeak(&v23);
  objc_destroyWeak(v30);
  objc_destroyWeak(&location);
  objc_storeStrong(v32, 0);
  return v16;
}

@end