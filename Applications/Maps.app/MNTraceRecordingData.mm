@interface MNTraceRecordingData
+ (id)traceRecordingDataFromCompanionRouteDetails:(id)details;
@end

@implementation MNTraceRecordingData

+ (id)traceRecordingDataFromCompanionRouteDetails:(id)details
{
  detailsCopy = details;
  v5 = detailsCopy;
  if (detailsCopy && [detailsCopy hasRequest] && objc_msgSend(v5, "hasResponse"))
  {
    v6 = objc_alloc_init(self);
    v7 = [[NSMutableArray alloc] initWithCapacity:2];
    composedOrigin = [v5 composedOrigin];
    if (composedOrigin)
    {
      [v7 addObject:composedOrigin];
    }

    composedDestination = [v5 composedDestination];
    if (composedDestination)
    {
      [v7 addObject:composedDestination];
    }

    v10 = [v7 copy];
    [v6 setWaypoints:v10];

    request = [v5 request];
    [v6 setInitialDirectionsRequest:request];

    response = [v5 response];
    [v6 setInitialDirectionsResponse:response];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end