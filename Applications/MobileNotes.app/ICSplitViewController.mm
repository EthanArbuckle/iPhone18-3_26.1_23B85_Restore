@interface ICSplitViewController
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICSplitViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12[0] = @"ICSplitViewControllerWillTransitionToSizeNotificationNewSizeKey";
  coordinatorCopy = coordinator;
  height = [NSValue valueWithCGSize:width, height];
  v12[1] = @"ICSplitViewControllerWillTransitionToSizeNotificationTransitionCoordinatorKey";
  v13[0] = height;
  v13[1] = coordinatorCopy;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"ICSplitViewControllerWillTransitionToSizeNotification" object:self userInfo:v9];

  v11.receiver = self;
  v11.super_class = ICSplitViewController;
  [(ICSplitViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

@end