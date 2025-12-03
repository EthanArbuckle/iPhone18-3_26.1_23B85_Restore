@interface CLMapHelperService
- (CLMapHelperService)init;
- (id)convertCLMapRoadVectorToRoadDictionaryArray:(void *)array;
- (void)cancelRoadDataRequest;
- (void)clearMemoryAndExitCleanly;
- (void)releaseOSTransaction;
- (void)stopConstructRouteFromLocation;
- (void)takeOSTransaction;
@end

@implementation CLMapHelperService

- (CLMapHelperService)init
{
  v13.receiver = self;
  v13.super_class = CLMapHelperService;
  v2 = [(CLMapHelperService *)&v13 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"_CLMapHelperService, %p", v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [[GEOMapFeatureAccess alloc] initWithQueue:v2->_queue memoryCacheCountLimit:150 memoryCacheCostLimit:0x200000];
    fGEOMapFeatureAccess = v2->fGEOMapFeatureAccess;
    v2->fGEOMapFeatureAccess = v8;

    [v2->fGEOMapFeatureAccess setAllowNetworkTileLoad:1];
    [v2->fGEOMapFeatureAccess setFlipNegativeTravelDirectionRoads:1];
    [v2->fGEOMapFeatureAccess setPreferStaleData:0];
    [v2->fGEOMapFeatureAccess setAllowStaleData:1];
    [v2->fGEOMapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:1];
    fGeoMapFeatureRoadRequest = v2->fGeoMapFeatureRoadRequest;
    v2->fGeoMapFeatureRoadRequest = 0;

    v2->fRoadDataRequestInProgress = 0;
    [v2->fGEOMapFeatureAccess setAllowOfflineData:1];
    v2->fEnableDebugLogging = 0;
    *&v2->fHasEntitlementForRoadData = 0;
    fTransaction = v2->fTransaction;
    v2->fTransaction = 0;

    v2->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 0;
  }

  return v2;
}

- (void)clearMemoryAndExitCleanly
{
  NSLog(@"CLTSP,CLMM,MapHelperService CleanExit", a2);
  releaseOSTransaction = [(CLMapHelperService *)self releaseOSTransaction];

  _xpc_transaction_exit_clean(releaseOSTransaction);
}

- (void)takeOSTransaction
{
  if (!self->fTransaction)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,Taking OS Transaction", a2);
    v4 = os_transaction_create();
    fTransaction = self->fTransaction;
    self->fTransaction = v4;

    _objc_release_x1();
  }
}

- (void)releaseOSTransaction
{
  fGEOMapFeatureAccess = self->fGEOMapFeatureAccess;
  if (fGEOMapFeatureAccess)
  {
    [fGEOMapFeatureAccess clearAllTiles];
  }

  if (self->fTransaction)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,Releasing OS Transaction", a2);
    fTransaction = self->fTransaction;
    self->fTransaction = 0;
  }
}

- (void)cancelRoadDataRequest
{
  NSLog(@"CLTSP,CLMM,MaphelperService,cancelRoadDataRequest", a2);
  if (self->fRoadDataRequestInProgress)
  {
    if (self->fGeoMapFeatureRoadRequest)
    {
      NSLog(@"CLTSP,CLMM,MaphelperService,cancelRoadDataRequest processed");
      fGeoMapFeatureRoadRequest = self->fGeoMapFeatureRoadRequest;

      [(GEOMapFeatureAccessRequest *)fGeoMapFeatureRoadRequest cancel];
    }
  }

  else
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,cancelRoadDataRequest,query not in progress");
  }
}

- (id)convertCLMapRoadVectorToRoadDictionaryArray:(void *)array
{
  v4 = +[NSMutableArray array];
  v5 = *array;
  v35 = *(array + 1);
  v36 = v4;
  if (*array != v35)
  {
    do
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = [NSNumber numberWithUnsignedLongLong:**v5];
      [v6 setValue:v7 forKey:@"roadID"];

      v8 = [NSNumber numberWithUnsignedInt:*(*v5 + 5)];
      [v6 setValue:v8 forKey:@"roadClass"];

      v9 = [NSNumber numberWithUnsignedInt:*(*v5 + 6)];
      [v6 setValue:v9 forKey:@"formOfWay"];

      v10 = [NSNumber numberWithUnsignedInt:*(*v5 + 18)];
      [v6 setValue:v10 forKey:@"travelDirection"];

      v11 = [NSNumber numberWithUnsignedInt:*(*v5 + 19)];
      [v6 setValue:v11 forKey:@"rampType"];

      v12 = [NSNumber numberWithUnsignedInt:*(*v5 + 4)];
      [v6 setValue:v12 forKey:@"speedLimit"];

      v13 = [NSNumber numberWithBool:*(*v5 + 81)];
      [v6 setValue:v13 forKey:@"isDrivable"];

      v14 = [NSNumber numberWithBool:*(*v5 + 80)];
      [v6 setValue:v14 forKey:@"isRoadPedestrianNavigable"];

      v15 = [NSNumber numberWithBool:*(*v5 + 18)];
      [v6 setValue:v15 forKey:@"isTunnel"];

      v16 = [NSNumber numberWithBool:*(*v5 + 19)];
      [v6 setValue:v16 forKey:@"isBridge"];

      v17 = [NSNumber numberWithBool:*(*v5 + 17)];
      [v6 setValue:v17 forKey:@"isRail"];

      v18 = [NSNumber numberWithUnsignedInt:*(*v5 + 27)];
      [v6 setValue:v18 forKey:@"startJunction"];

      v19 = [NSNumber numberWithUnsignedInt:*(*v5 + 28)];
      [v6 setValue:v19 forKey:@"stopJunction"];

      v20 = [NSNumber numberWithBool:*(*v5 + 116)];
      [v6 setValue:v20 forKey:@"startTileBorder"];

      v21 = [NSNumber numberWithBool:*(*v5 + 117)];
      [v6 setValue:v21 forKey:@"endTileBorder"];

      v22 = [NSNumber numberWithUnsignedInt:*(*v5 + 82)];
      [v6 setValue:v22 forKey:@"bikeableSide"];

      v23 = [NSNumber numberWithUnsignedInt:*(*v5 + 21)];
      [v6 setValue:v23 forKey:@"walkableSide"];

      v24 = *v5;
      v25 = [NSNumber numberWithUnsignedInt:((*v5)[18] - (*v5)[17]) >> 4];
      [v6 setValue:v25 forKey:@"coordinateCount"];

      v26 = v24[17];
      v27 = v24[18] - v26;
      if (v27)
      {
        v28 = 0;
        v29 = 0;
        v30 = v27 >> 4;
        do
        {
          v31 = 0;
          if (!v29)
          {
            v31 = (*v5)[15];
          }

          if (v29 == v30 - 1)
          {
            v31 = (*v5)[16];
          }

          v32 = [NSString stringWithFormat:@"%.7lf, %.7lf, %.2lf", *(v26 + v28), *(v26 + v28 + 8), v31];
          v33 = [NSString stringWithFormat:@"coord%d", v29];
          [v6 setValue:v32 forKey:v33];

          ++v29;
          v26 = v24[17];
          v30 = (v24[18] - v26) >> 4;
          v28 += 16;
        }

        while (v30 > v29);
      }

      [v36 addObject:v6];

      v5 += 2;
    }

    while (v5 != v35);
  }

  return v36;
}

- (void)stopConstructRouteFromLocation
{
  self->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 1;
  if (self->fEnableDebugLogging)
  {
    NSLog(@"CLTSP,CLMM,MaphelperService,stopConstructRouteFromLocation", a2);
  }
}

@end