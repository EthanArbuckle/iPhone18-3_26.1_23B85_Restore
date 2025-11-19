@interface MacSidebarTestContext
- (ChromeViewController)chromeViewController;
- (MacSidebarTestContext)init;
- (id)_createContainee;
- (void)_pop;
- (void)_popSidebarController;
- (void)_pushSidebarController;
- (void)_toggleWantsControl;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
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
  v3 = [(MacSidebarTestContext *)self macChromeViewController];
  [v3 setNeedsUpdateComponent:@"sidebar" animated:1];
}

- (void)_pushSidebarController
{
  controllers = self->_controllers;
  v4 = [(MacSidebarTestContext *)self _createContainee];
  [(NSMutableArray *)controllers addObject:v4];

  v5 = [(MacSidebarTestContext *)self macChromeViewController];
  [v5 setNeedsUpdateComponent:@"sidebar" animated:1];
}

- (void)_toggleWantsControl
{
  [(MKCatalystButton *)self->_wantsControlButton setSelected:[(MKCatalystButton *)self->_wantsControlButton isSelected]^ 1];
  v3 = [(MacSidebarTestContext *)self macChromeViewController];
  [v3 setNeedsUpdateComponent:@"sidebar" animated:1];
}

- (void)_pop
{
  v2 = [(MacSidebarTestContext *)self macChromeViewController];
  [v2 popContextAnimated:1 completion:0];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10097A10C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addAnimations:v4];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a4;
  [a3 viewport];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10097A208;
  v8[3] = &unk_101661A90;
  v9 = v8[4] = self;
  v7 = v9;
  [v6 addPreparation:v8];
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
  v8 = [(ContaineeViewController *)v3 view];
  [v8 setBackgroundColor:v7];

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