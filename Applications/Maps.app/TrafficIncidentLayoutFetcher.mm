@interface TrafficIncidentLayoutFetcher
- (id)_generateRequestParamsForFormType:(int)type;
- (void)fetchTrafficIncidentsLayoutForLocation:(id)location formType:(int)type isSiri:(BOOL)siri completion:(id)completion;
@end

@implementation TrafficIncidentLayoutFetcher

- (id)_generateRequestParamsForFormType:(int)type
{
  v3 = *&type;
  v4 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v5 = objc_alloc_init(GEORPFeedbackLayoutConfigParameters);
  [v5 setFormType:v3];
  [v4 setLayoutConfigParameters:v5];

  return v4;
}

- (void)fetchTrafficIncidentsLayoutForLocation:(id)location formType:(int)type isSiri:(BOOL)siri completion:(id)completion
{
  v8 = *&type;
  locationCopy = location;
  completionCopy = completion;
  v12 = +[GEOMapService sharedService];
  defaultTraits = [v12 defaultTraits];

  [locationCopy clearSensitiveFields:0];
  [defaultTraits setDeviceLocation:locationCopy];
  v14 = [GEORPFeedbackRequest alloc];
  v15 = [(TrafficIncidentLayoutFetcher *)self _generateRequestParamsForFormType:v8];
  v16 = [v14 initWithFeedbackRequestParameters:v15 traits:defaultTraits];

  if (!siri && MapsFeature_IsEnabled_MoreReportTypes())
  {
    [v16 addFeedbackClientCapabilities:2];
  }

  v17 = +[MKMapService sharedService];
  v18 = [v17 ticketForFeedbackRequest:v16 traits:defaultTraits];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100940518;
  v22[3] = &unk_10162F3F8;
  v24 = locationCopy;
  v25 = completionCopy;
  v23 = v16;
  v26 = v8;
  v19 = locationCopy;
  v20 = completionCopy;
  v21 = v16;
  [v18 submitWithHandler:v22 networkActivity:0];
}

@end