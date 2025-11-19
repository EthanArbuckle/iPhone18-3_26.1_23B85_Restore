@interface MapsAppTestResizingPlacecard
- (BOOL)runTest;
- (void)_performResizingTest;
- (void)placecardDidPresent;
@end

@implementation MapsAppTestResizingPlacecard

- (void)_performResizingTest
{
  v3 = [(MapsAppTest *)self canUpdateTrayLayout];
  [(MapsAppTest *)self startedTest];
  if (v3)
  {
    v4 = [(MapsAppTest *)self testName];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1009F3584;
    v5[3] = &unk_101661B18;
    v5[4] = self;
    [(MapsAppTest *)self resizingTestAndSubTestsWithPrefix:v4 completion:v5];
  }

  else
  {

    [(MapsAppTest *)self failedTest];
  }
}

- (void)placecardDidPresent
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009F361C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  [(MapsAppTestPlacecardChrome *)self setPlacecardChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestResizingPlacecard;
  return [(MapsAppTestPlacecardChrome *)&v4 runTest];
}

@end