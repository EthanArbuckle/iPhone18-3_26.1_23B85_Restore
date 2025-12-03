@interface _MapsApplicationDelegateTestingCoordinator
+ (BOOL)_writeSampleDataToHistoryContainer;
+ (BOOL)application:(id)application testName:(id)name options:(id)options shouldLoadSampleProactiveData:(BOOL)data shouldRaiseExceptionIfNeeded:(BOOL)needed runTest:(id)test;
+ (void)doPostLauchTestSetupWithMapView:(id)view mapsAppTesting:(id)testing;
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

+ (BOOL)application:(id)application testName:(id)name options:(id)options shouldLoadSampleProactiveData:(BOOL)data shouldRaiseExceptionIfNeeded:(BOOL)needed runTest:(id)test
{
  dataCopy = data;
  applicationCopy = application;
  nameCopy = name;
  optionsCopy = options;
  testCopy = test;
  _mapstest_readSubTestsFromTestSerial = [optionsCopy _mapstest_readSubTestsFromTestSerial];
  if ([_mapstest_readSubTestsFromTestSerial count])
  {
    v18 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];
    [v18 setObject:_mapstest_readSubTestsFromTestSerial forKeyedSubscript:@"serialSubTests"];

    optionsCopy = v18;
  }

  if (dataCopy && ![self _writeSampleDataToHistoryContainer])
  {
    v21 = 0;
  }

  else
  {
    v19 = testCopy[2](testCopy, nameCopy, applicationCopy, optionsCopy);
    [self setCurrentTest:v19];

    currentTest = [self currentTest];
    v21 = currentTest != 0;
  }

  return v21;
}

+ (void)doPostLauchTestSetupWithMapView:(id)view mapsAppTesting:(id)testing
{
  viewCopy = view;
  testingCopy = testing;
  v7 = +[GEOCountryConfiguration sharedConfiguration];
  countryCode = [v7 countryCode];

  if ([countryCode isEqualToString:@"US"])
  {
    [viewCopy _mapstest_jumpToCupertino];
  }

  else if ([countryCode isEqualToString:@"JP"])
  {
    [viewCopy _mapstest_jumpToTokyo];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1008100D0;
  v14[3] = &unk_101661B18;
  v9 = testingCopy;
  v15 = v9;
  v10 = objc_retainBlock(v14);
  if ([viewCopy isFullyDrawn])
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