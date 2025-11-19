@interface ChromeNavigationDisplayDelegateProxy
+ (id)protocols;
- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4;
@end

@implementation ChromeNavigationDisplayDelegateProxy

+ (id)protocols
{
  if (qword_10195D228 != -1)
  {
    dispatch_once(&qword_10195D228, &stru_101628BF8);
  }

  v3 = qword_10195D220;

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

@end