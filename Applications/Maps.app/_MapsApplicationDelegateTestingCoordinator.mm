@interface _MapsApplicationDelegateTestingCoordinator
+ (BOOL)_writeSampleDataToHistoryContainer;
+ (BOOL)application:(id)a3 testName:(id)a4 options:(id)a5 shouldLoadSampleProactiveData:(BOOL)a6 shouldRaiseExceptionIfNeeded:(BOOL)a7 runTest:(id)a8;
+ (void)doPostLauchTestSetupWithMapView:(id)a3 mapsAppTesting:(id)a4;
@end

@implementation _MapsApplicationDelegateTestingCoordinator

+ (BOOL)_writeSampleDataToHistoryContainer
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"PPTTestProactiveData" ofType:@"mapsdata"];

  v12 = 0;
  v4 = [[NSData alloc] initWithContentsOfFile:v3 options:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = +[MSPMapsPaths geoHistorySettingsPath];
    v11 = 0;
    v8 = [v4 writeToFile:v9 options:1 error:&v11];
    v7 = v11;
  }

  else
  {
    v7 = v5;
    v8 = 0;
  }

  return v8;
}

+ (BOOL)application:(id)a3 testName:(id)a4 options:(id)a5 shouldLoadSampleProactiveData:(BOOL)a6 shouldRaiseExceptionIfNeeded:(BOOL)a7 runTest:(id)a8
{
  v9 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [v15 _mapstest_readSubTestsFromTestSerial];
  if ([v17 count])
  {
    v18 = [NSMutableDictionary dictionaryWithDictionary:v15];
    [v18 setObject:v17 forKeyedSubscript:@"serialSubTests"];

    v15 = v18;
  }

  if (v9 && ![a1 _writeSampleDataToHistoryContainer])
  {
    v21 = 0;
  }

  else
  {
    v19 = v16[2](v16, v14, v13, v15);
    [a1 setCurrentTest:v19];

    v20 = [a1 currentTest];
    v21 = v20 != 0;
  }

  return v21;
}

+ (void)doPostLauchTestSetupWithMapView:(id)a3 mapsAppTesting:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GEOCountryConfiguration sharedConfiguration];
  v8 = [v7 countryCode];

  if ([v8 isEqualToString:@"US"])
  {
    [v5 _mapstest_jumpToCupertino];
  }

  else if ([v8 isEqualToString:@"JP"])
  {
    [v5 _mapstest_jumpToTokyo];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008100D0;
  v14[3] = &unk_101661B18;
  v9 = v6;
  v15 = v9;
  v10 = objc_retainBlock(v14);
  if ([v5 isFullyDrawn])
  {
    (v10[2])(v10);
  }

  else
  {
    v11 = VKMapViewDidBecomeFullyDrawnNotification;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100810128;
    v12[3] = &unk_10164FAC0;
    v13 = v10;
    [PPTNotificationCenter addOnceObserverForName:v11 object:0 usingBlock:v12];
  }
}

@end