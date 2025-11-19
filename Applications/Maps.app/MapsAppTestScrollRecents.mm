@interface MapsAppTestScrollRecents
- (void)_performScrollTest;
- (void)_setupTrayLayoutAndPerformScrollTest;
- (void)_startRecentsTest;
@end

@implementation MapsAppTestScrollRecents

- (void)_performScrollTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  v5 = [v3 pptTestScrollView];

  v4 = [(MapsAppTest *)self testName];
  [v5 _performScrollTest:v4 iterations:10 delta:20];
}

- (void)_setupTrayLayoutAndPerformScrollTest
{
  if ([(MapsAppTest *)self canUpdateTrayLayout])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1006A7D64;
    v3[3] = &unk_101661B18;
    v3[4] = self;
    [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v3];
  }

  else
  {

    [(MapsAppTestScrollRecents *)self _performScrollTest];
  }
}

- (void)_startRecentsTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestOpenRecents];

  v4 = +[_TtC4Maps32MyRecentsContaineeViewController PPTMyRecentsViewControllerDidAppearNotification];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006A7E2C;
  v5[3] = &unk_101650D20;
  v5[4] = self;
  [PPTNotificationCenter addOnceObserverForName:v4 object:0 usingBlock:v5];
}

@end