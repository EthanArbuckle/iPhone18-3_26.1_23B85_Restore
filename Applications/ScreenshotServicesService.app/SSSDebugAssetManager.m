@interface SSSDebugAssetManager
+ (id)newTestScreenshot;
- (void)imageForPreviouslyRegisteredIdentifier:(id)a3 imageHandler:(id)a4;
@end

@implementation SSSDebugAssetManager

+ (id)newTestScreenshot
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v16.width = v8;
  v16.height = v10;
  UIGraphicsBeginImageContext(v16);
  v11 = +[UIApplication sharedApplication];
  v12 = [v11 windows];
  v13 = [v12 firstObject];
  [v13 drawViewHierarchyInRect:0 afterScreenUpdates:{v4, v6, v8, v10}];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v14;
}

- (void)imageForPreviouslyRegisteredIdentifier:(id)a3 imageHandler:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A4F4;
  v5[3] = &unk_1000BA0F8;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

@end