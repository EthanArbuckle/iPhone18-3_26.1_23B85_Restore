@interface FloatingControlsOverlayDelegateProxy
+ (id)protocols;
- (FloatingControlsOverlayDelegateProxy)initWithChromeViewController:(id)a3;
- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4;
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

- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4
{
  v4 = [(ChromeDelegateProxy *)self chromeViewController];
  v5 = [v4 topContext];
  if (objc_opt_respondsToSelector())
  {
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FloatingControlsOverlayDelegateProxy)initWithChromeViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = FloatingControlsOverlayDelegateProxy;
    self = [(ChromeDelegateProxy *)&v7 initWithChromeViewController:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end