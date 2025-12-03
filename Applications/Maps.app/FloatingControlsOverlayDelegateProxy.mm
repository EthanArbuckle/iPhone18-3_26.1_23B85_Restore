@interface FloatingControlsOverlayDelegateProxy
+ (id)protocols;
- (FloatingControlsOverlayDelegateProxy)initWithChromeViewController:(id)controller;
- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol;
@end

@implementation FloatingControlsOverlayDelegateProxy

+ (id)protocols
{
  if (qword_10195D848 != -1)
  {
    dispatch_once(&qword_10195D848, &stru_10162A1A0);
  }

  v3 = qword_10195D840;

  return v3;
}

- (id)delegatesForSelector:(SEL)selector protocol:(id)protocol
{
  chromeViewController = [(ChromeDelegateProxy *)self chromeViewController];
  topContext = [chromeViewController topContext];
  if (objc_opt_respondsToSelector())
  {
    v8 = topContext;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FloatingControlsOverlayDelegateProxy)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = FloatingControlsOverlayDelegateProxy;
    self = [(ChromeDelegateProxy *)&v7 initWithChromeViewController:controllerCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end