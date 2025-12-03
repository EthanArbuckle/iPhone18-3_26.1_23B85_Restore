@interface GAXUIViewControllerOverride
- (void)window:(id)window didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)window:(id)window willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation GAXUIViewControllerOverride

- (void)window:(id)window willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = GAXUIViewControllerOverride;
  [(GAXUIViewControllerOverride *)&v10 window:windowCopy willRotateToInterfaceOrientation:orientation duration:duration];
  v9 = +[GAXClient sharedInstance];
  if ([v9 isInWorkspace])
  {
    [windowCopy _gaxBeginOverridingBackgroundColorToClear];
  }
}

- (void)window:(id)window didRotateFromInterfaceOrientation:(int64_t)orientation
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = GAXUIViewControllerOverride;
  [(GAXUIViewControllerOverride *)&v8 window:windowCopy didRotateFromInterfaceOrientation:orientation];
  v7 = +[GAXClient sharedInstance];
  if ([v7 isInWorkspace])
  {
    [windowCopy _gaxEndOverridingBackgroundColorToClear];
  }
}

@end