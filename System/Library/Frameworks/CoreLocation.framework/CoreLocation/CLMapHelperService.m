@interface CLMapHelperService
- (CLMapHelperService)init;
- (id)convertCLMapRoadVectorToRoadDictionaryArray:(void *)a3;
- (void)cancelRoadDataRequest;
- (void)clearMemoryAndExitCleanly;
- (void)constructRouteFromLocation:(CLLocationCoordinate2D)a3 roadID:(unint64_t)a4 clRoadID:(unint64_t)a5 projection:(double)a6 toLocation:(CLLocationCoordinate2D)a7 toRoadID:(unint64_t)a8 toCLRoadID:(unint64_t)a9 toProjection:(double)a10 maxRouteLength:(double)a11 allowNetwork:(BOOL)a12 preferCachedTiles:(BOOL)a13 isPedestrianOrCycling:(BOOL)a14 clearTiles:(BOOL)a15 iOSTime:(double)a16 familiarityData:(id)a17 useMapsAPIForIntersectionQuery:(BOOL)a18 withReply:(id)a19;
- (void)releaseOSTransaction;
- (void)stopConstructRouteFromLocation;
- (void)takeOSTransaction;
@end

@implementation CLMapHelperService

- (CLMapHelperService)init
{
  v7.receiver = self;
  v7.super_class = CLMapHelperService;
  v2 = [(CLMapHelperService *)&v7 init];
  if (v2)
  {
    v3 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"_CLMapHelperService, %p", v2), "UTF8String"];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v2 + 1) = dispatch_queue_create(v3, v4);
    v5 = [objc_alloc(MEMORY[0x1E69A2198]) initWithQueue:*(v2 + 1) memoryCacheCountLimit:150 memoryCacheCostLimit:0x200000];
    *(v2 + 2) = v5;
    [v5 setAllowNetworkTileLoad:1];
    [*(v2 + 2) setFlipNegativeTravelDirectionRoads:1];
    [*(v2 + 2) setPreferStaleData:0];
    [*(v2 + 2) setAllowStaleData:1];
    [*(v2 + 2) setVisitDoubleTravelDirectionRoadsTwice:1];
    *(v2 + 3) = 0;
    v2[48] = 0;
    [*(v2 + 2) setAllowOfflineData:1];
    *(v2 + 16) = 0;
    *(v2 + 5) = 0;
    *(v2 + 49) = 0;
  }

  return v2;
}

- (void)clearMemoryAndExitCleanly
{
  NSLog(&cfstr_CltspClmmMaphe.isa, a2);
  v3 = [(CLMapHelperService *)self releaseOSTransaction];

  MEMORY[0x1EEE75030](v3);
}

- (void)takeOSTransaction
{
  if (!self->fTransaction)
  {
    NSLog(&cfstr_CltspClmmMaphe_7.isa, a2);
    self->fTransaction = os_transaction_create();
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
    NSLog(&cfstr_CltspClmmMaphe_8.isa, a2);
    self->fTransaction = 0;
  }
}

- (void)cancelRoadDataRequest
{
  NSLog(&cfstr_CltspClmmMaphe_9.isa, a2);
  if (self->fRoadDataRequestInProgress)
  {
    if (self->fGeoMapFeatureRoadRequest)
    {
      NSLog(&cfstr_CltspClmmMaphe_11.isa);
      fGeoMapFeatureRoadRequest = self->fGeoMapFeatureRoadRequest;

      [(GEOMapFeatureAccessRequest *)fGeoMapFeatureRoadRequest cancel];
    }
  }

  else
  {
    NSLog(&cfstr_CltspClmmMaphe_10.isa);
  }
}

- (id)convertCLMapRoadVectorToRoadDictionaryArray:(void *)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = *a3;
  v16 = *(a3 + 1);
  v17 = v4;
  if (*a3 != v16)
  {
    do
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", **v5), @"roadID"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 5)), @"roadClass"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 6)), @"formOfWay"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 18)), @"travelDirection"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 19)), @"rampType"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 4)), @"speedLimit"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*v5 + 81)), @"isDrivable"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*v5 + 80)), @"isRoadPedestrianNavigable"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*v5 + 18)), @"isTunnel"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*v5 + 19)), @"isBridge"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*v5 + 17)), @"isRail"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 27)), @"startJunction"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 28)), @"stopJunction"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*v5 + 116)), @"startTileBorder"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*v5 + 117)), @"endTileBorder"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 82)), @"bikeableSide"}];
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", *(*v5 + 21)), @"walkableSide"}];
      v7 = *v5;
      [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", ((*v5)[18] - (*v5)[17]) >> 4), @"coordinateCount"}];
      v8 = v7[17];
      v9 = v7[18] - v8;
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = v9 >> 4;
        do
        {
          v13 = 0;
          if (!v11)
          {
            v13 = (*v5)[15];
          }

          if (v11 == v12 - 1)
          {
            v13 = (*v5)[16];
          }

          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.7lf, %.7lf, %.2lf", *(v8 + v10), *(v8 + v10 + 8), v13];
          [v6 setValue:v14 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"coord%d", v11++)}];
          v8 = v7[17];
          v12 = (v7[18] - v8) >> 4;
          v10 += 16;
        }

        while (v12 > v11);
      }

      [v17 addObject:v6];
      v5 += 2;
    }

    while (v5 != v16);
  }

  return v17;
}

- (void)constructRouteFromLocation:(CLLocationCoordinate2D)a3 roadID:(unint64_t)a4 clRoadID:(unint64_t)a5 projection:(double)a6 toLocation:(CLLocationCoordinate2D)a7 toRoadID:(unint64_t)a8 toCLRoadID:(unint64_t)a9 toProjection:(double)a10 maxRouteLength:(double)a11 allowNetwork:(BOOL)a12 preferCachedTiles:(BOOL)a13 isPedestrianOrCycling:(BOOL)a14 clearTiles:(BOOL)a15 iOSTime:(double)a16 familiarityData:(id)a17 useMapsAPIForIntersectionQuery:(BOOL)a18 withReply:(id)a19
{
  v36 = a12;
  v37 = a13;
  longitude = a7.longitude;
  latitude = a7.latitude;
  v29 = a3.longitude;
  v30 = a3.latitude;
  if (a14)
  {
    if (self->fEnableDebugLogging)
    {
      NSLog(&cfstr_CltspClmmMaphe_15.isa, a2);
    }

    (*(a19 + 2))(a19, 0);
  }

  [(CLMapHelperService *)self takeOSTransaction];
  LOBYTE(v35) = a18;
  LOWORD(v34) = __PAIR16__(a15, a14);
  v32 = [(CLMapHelperService *)self internalConstructVehicularRouteFromLocation:a4 roadID:a5 clRoadID:a8 projection:a9 toLocation:v36 toRoadID:v37 toCLRoadID:v30 toProjection:v29 maxRouteLength:a6 allowNetwork:latitude preferCachedTiles:longitude isPedestrianOrCycling:a10 clearTiles:a11 iOSTime:a16 familiarityData:v34 useMapsAPIForIntersectionQuery:a17, v35];
  v33 = *(a19 + 2);

  v33(a19, v32);
}

- (void)stopConstructRouteFromLocation
{
  self->fExternalSignalReceivedToStopConstructVehicularRouteProcessing = 1;
  if (self->fEnableDebugLogging)
  {
    NSLog(&cfstr_CltspClmmMaphe_16.isa, a2);
  }
}

@end