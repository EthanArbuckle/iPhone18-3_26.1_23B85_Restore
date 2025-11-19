@interface MapsPushdDebugController
+ (void)performAfterDelay:(double)a3 action:(id)a4;
- (void)prepareContent;
@end

@implementation MapsPushdDebugController

- (void)prepareContent
{
  v3 = [NSString stringWithFormat:@"Notifications (%.0fs delay)", 0x4014000000000000];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100AF5D98;
  v15[3] = &unk_101637CE8;
  v15[4] = 0x4014000000000000;
  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:v3 content:v15];

  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Announcements" content:&stru_101637D08];
  v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Airport Arrival Notification" content:&stru_101637D68];
  v7 = [NSFileManager alloc];
  v8 = [v7 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];

  v9 = [v8 URLByAppendingPathComponent:@"Library/Caches/Announcements.pbd"];

  v10 = [v9 path];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AF5F00;
  v13[3] = &unk_1016612C8;
  v14 = v9;
  v11 = v9;
  v12 = [(MapsDebugValuesViewController *)self addSectionWithTitle:v10 content:v13];
}

+ (void)performAfterDelay:(double)a3 action:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = +[UIApplication sharedApplication];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AF6630;
  v13[3] = &unk_1016608A8;
  v13[4] = &v14;
  v7 = [v6 beginBackgroundTaskWithExpirationHandler:v13];

  v15[3] = v7;
  v8 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AF669C;
  block[3] = &unk_10165F5A0;
  v11 = v5;
  v12 = &v14;
  v9 = v5;
  dispatch_after(v8, &_dispatch_main_q, block);

  _Block_object_dispose(&v14, 8);
}

@end