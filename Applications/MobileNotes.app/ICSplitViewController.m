@interface ICSplitViewController
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICSplitViewController

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12[0] = @"ICSplitViewControllerWillTransitionToSizeNotificationNewSizeKey";
  v7 = a4;
  v8 = [NSValue valueWithCGSize:width, height];
  v12[1] = @"ICSplitViewControllerWillTransitionToSizeNotificationTransitionCoordinatorKey";
  v13[0] = v8;
  v13[1] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"ICSplitViewControllerWillTransitionToSizeNotification" object:self userInfo:v9];

  v11.receiver = self;
  v11.super_class = ICSplitViewController;
  [(ICSplitViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

@end