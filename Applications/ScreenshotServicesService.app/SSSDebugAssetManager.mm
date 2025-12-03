@interface SSSDebugAssetManager
+ (id)newTestScreenshot;
- (void)imageForPreviouslyRegisteredIdentifier:(id)identifier imageHandler:(id)handler;
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
  windows = [v11 windows];
  firstObject = [windows firstObject];
  [firstObject drawViewHierarchyInRect:0 afterScreenUpdates:{v4, v6, v8, v10}];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v14;
}

- (void)imageForPreviouslyRegisteredIdentifier:(id)identifier imageHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A4F4;
  v5[3] = &unk_1000BA0F8;
  v5[4] = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

@end