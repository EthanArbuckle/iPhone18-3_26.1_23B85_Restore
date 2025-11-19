@interface TrafficIncidentLayoutFetcher
- (id)_generateRequestParamsForFormType:(int)a3;
- (void)fetchTrafficIncidentsLayoutForLocation:(id)a3 formType:(int)a4 isSiri:(BOOL)a5 completion:(id)a6;
@end

@implementation TrafficIncidentLayoutFetcher

- (id)_generateRequestParamsForFormType:(int)a3
{
  v3 = *&a3;
  v4 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v5 = objc_alloc_init(GEORPFeedbackLayoutConfigParameters);
  [v5 setFormType:v3];
  [v4 setLayoutConfigParameters:v5];

  return v4;
}

- (void)fetchTrafficIncidentsLayoutForLocation:(id)a3 formType:(int)a4 isSiri:(BOOL)a5 completion:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a6;
  v12 = +[GEOMapService sharedService];
  v13 = [v12 defaultTraits];

  [v10 clearSensitiveFields:0];
  [v13 setDeviceLocation:v10];
  v14 = [GEORPFeedbackRequest alloc];
  v15 = [(TrafficIncidentLayoutFetcher *)self _generateRequestParamsForFormType:v8];
  v16 = [v14 initWithFeedbackRequestParameters:v15 traits:v13];

  if (!a5 && MapsFeature_IsEnabled_MoreReportTypes())
  {
    [v16 addFeedbackClientCapabilities:2];
  }

  v17 = +[MKMapService sharedService];
  v18 = [v17 ticketForFeedbackRequest:v16 traits:v13];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100940518;
  v22[3] = &unk_10162F3F8;
  v24 = v10;
  v25 = v11;
  v23 = v16;
  v26 = v8;
  v19 = v10;
  v20 = v11;
  v21 = v16;
  [v18 submitWithHandler:v22 networkActivity:0];
}

@end