@interface MacSidebarTestContext
- (ChromeViewController)chromeViewController;
- (MacSidebarTestContext)init;
- (id)_createContainee;
- (void)_pop;
- (void)_popSidebarController;
- (void)_pushSidebarController;
- (void)_toggleWantsControl;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
@end

@implementation MacSidebarTestContext

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_popSidebarController
{
  [(NSMutableArray *)self->_controllers removeLastObject];
  macChromeViewController = [(MacSidebarTestContext *)self macChromeViewController];
  [macChromeViewController setNeedsUpdateComponent:@"sidebar" animated:1];
}

- (void)_pushSidebarController
{
  controllers = self->_controllers;
  _createContainee = [(MacSidebarTestContext *)self _createContainee];
  [(NSMutableArray *)controllers addObject:_createContainee];

  macChromeViewController = [(MacSidebarTestContext *)self macChromeViewController];
  [macChromeViewController setNeedsUpdateComponent:@"sidebar" animated:1];
}

- (void)_toggleWantsControl
{
  [(MKCatalystButton *)self->_wantsControlButton setSelected:[(MKCatalystButton *)self->_wantsControlButton isSelected]^ 1];
  macChromeViewController = [(MacSidebarTestContext *)self macChromeViewController];
  [macChromeViewController setNeedsUpdateComponent:@"sidebar" animated:1];
}

- (void)_pop
{
  macChromeViewController = [(MacSidebarTestContext *)self macChromeViewController];
  [macChromeViewController popContextAnimated:1 completion:0];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10097A10C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addAnimations:v4];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  [controller viewport];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10097A208;
  v8[3] = &unk_101661A90;
  v9 = v8[4] = self;
  v7 = v9;
  [animationCopy addPreparation:v8];
}

- (id)_createContainee
{
  v3 = objc_alloc_init(ContaineeViewController);
  v4 = [(NSMutableArray *)self->_controllers count];
  v5 = [(NSMutableArray *)self->_controllers count];
  v6 = v5 % 0xA;
  if (v4 <= 0xA)
  {
    v6 = v5;
  }

  v7 = [UIColor colorWithHue:(v6 * 0.1) saturation:1.0 brightness:0.800000012 alpha:1.0];
  view = [(ContaineeViewController *)v3 view];
  [view setBackgroundColor:v7];

  return v3;
}

- (MacSidebarTestContext)init
{
  v6.receiver = self;
  v6.super_class = MacSidebarTestContext;
  v2 = [(MacSidebarTestContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    controllers = v2->_controllers;
    v2->_controllers = v3;
  }

  return v2;
}

@end