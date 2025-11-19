@interface MapsAppTestBasic
- (BOOL)runTest;
@end

@implementation MapsAppTestBasic

- (BOOL)runTest
{
  [(MapsAppTest *)self setupForVKTest];
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100ABEC14;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  return 1;
}

@end