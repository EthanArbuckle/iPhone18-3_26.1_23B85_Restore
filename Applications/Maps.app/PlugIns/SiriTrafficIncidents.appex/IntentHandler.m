@interface IntentHandler
- (id)_supportedIncidentTypesForIncidentLayout:(id)a3;
- (void)handleReportIncident:(id)a3 completion:(id)a4;
- (void)resolveIncidentTypeForReportIncident:(id)a3 withCompletion:(id)a4;
@end

@implementation IntentHandler

- (void)handleReportIncident:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [[INReportIncidentIntentResponse alloc] initWithCode:2 userActivity:0];
  (*(a4 + 2))(v5, v6);
}

- (void)resolveIncidentTypeForReportIncident:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MAPSGetIncidentsReportingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 incidentType];
    v10 = [v6 isClear];
    v11 = [v10 BOOLValue];
    v12 = @"NO";
    if (v11)
    {
      v12 = @"YES";
    }

    v13 = v12;
    v14 = [v6 additionalDetails];
    *buf = 138412802;
    v26 = v9;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received INReportIncidentIntent with type %@ isClear %@ additionalDetails %@", buf, 0x20u);
  }

  v15 = [GEOLocation alloc];
  v16 = [v6 userLocation];
  v17 = [v16 location];
  v18 = [v15 initWithCLLocation:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001018;
  v21[3] = &unk_100008220;
  v22 = v6;
  v23 = self;
  v24 = v7;
  v19 = v7;
  v20 = v6;
  [TrafficIncidentIntentSupport fetchTrafficIncidentsLayoutForLocation:v18 completion:v21];
}

- (id)_supportedIncidentTypesForIncidentLayout:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v3 layoutItems];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = +[TrafficIncidentIntentSupport INTrafficIncidentTypeForincidentType:](TrafficIncidentIntentSupport, "INTrafficIncidentTypeForincidentType:", [v9 incidentType]);
        v11 = [INSupportedTrafficIncidentType alloc];
        v12 = +[TrafficIncidentIntentSupport localizedTitleForIncidentType:](TrafficIncidentIntentSupport, "localizedTitleForIncidentType:", [v9 incidentType]);
        v13 = [v11 initWithType:v10 localizedDisplayString:v12];

        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

@end