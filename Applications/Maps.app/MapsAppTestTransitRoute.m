@interface MapsAppTestTransitRoute
- (void)_performRouteUpdateWithDetails;
- (void)_performRouteUpdateWithList;
- (void)doAfterSubTestForDisplayingRoutes;
@end

@implementation MapsAppTestTransitRoute

- (void)_performRouteUpdateWithDetails
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestPauseRealtimeTransitUpdates];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100588C90;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [(MapsAppTest *)self _presentDirectionDetailsWithCompletion:v4];
}

- (void)_performRouteUpdateWithList
{
  [(MapsAppTest *)self startedTest];
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestPauseRealtimeTransitUpdates];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100589040;
  v8[3] = &unk_101650D20;
  v8[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"MapsTestingTransitRouteUpdateWillUpdateRoute" object:0 usingBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100589050;
  v7[3] = &unk_101650D20;
  v7[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"MapsTestingTransitRouteUpdateDidUpdateRoute" object:0 usingBlock:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100589060;
  v6[3] = &unk_101650D20;
  v6[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"MapsTestingTransitRouteUpdateWillUpdateSummary" object:0 usingBlock:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100589070;
  v5[3] = &unk_101650D20;
  v5[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"MapsTestingTransitRouteUpdateDidUpdateSummary" object:0 usingBlock:v5];
  v4 = [(MapsAppTest *)self testCoordinator];
  [v4 pptTestResumeRealtimeTransitUpdates];
}

- (void)doAfterSubTestForDisplayingRoutes
{
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 objectForKeyedSubscript:@"realtime"];
  v5 = [v4 BOOLValue];

  if (v5)
  {

    [(MapsAppTestTransitRoute *)self _performRouteUpdateWithList];
  }

  else
  {

    [(MapsAppTest *)self finishedTest];
  }
}

@end