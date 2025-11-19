@interface ChromeMapViewDelegateProxy
+ (id)protocols;
- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4;
@end

@implementation ChromeMapViewDelegateProxy

+ (id)protocols
{
  if (qword_10195F050 != -1)
  {
    dispatch_once(&qword_10195F050, &stru_101651750);
  }

  v3 = qword_10195F048;

  return v3;
}

- (id)delegatesForSelector:(SEL)a3 protocol:(id)a4
{
  v6 = [[NSMutableArray alloc] initWithCapacity:2];
  v7 = [(ChromeDelegateProxy *)self chromeViewController];
  v8 = [v7 navigationDisplay];
  v9 = [v8 mapViewDelegate];

  if (v9)
  {
    [v6 addObject:v9];
  }

  v10 = [(ChromeDelegateProxy *)self chromeViewController];
  v11 = [v10 mapViewDelegateForSelector:a3];

  if (v11)
  {
    [v6 addObject:v11];
  }

  v12 = [v6 copy];

  return v12;
}

@end