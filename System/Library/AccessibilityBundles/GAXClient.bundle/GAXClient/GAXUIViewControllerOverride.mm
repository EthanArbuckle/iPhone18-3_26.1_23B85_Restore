@interface GAXUIViewControllerOverride
- (void)window:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4;
- (void)window:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
@end

@implementation GAXUIViewControllerOverride

- (void)window:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = GAXUIViewControllerOverride;
  [(GAXUIViewControllerOverride *)&v10 window:v8 willRotateToInterfaceOrientation:a4 duration:a5];
  v9 = +[GAXClient sharedInstance];
  if ([v9 isInWorkspace])
  {
    [v8 _gaxBeginOverridingBackgroundColorToClear];
  }
}

- (void)window:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = GAXUIViewControllerOverride;
  [(GAXUIViewControllerOverride *)&v8 window:v6 didRotateFromInterfaceOrientation:a4];
  v7 = +[GAXClient sharedInstance];
  if ([v7 isInWorkspace])
  {
    [v6 _gaxEndOverridingBackgroundColorToClear];
  }
}

@end