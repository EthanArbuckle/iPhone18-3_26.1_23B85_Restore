@interface IntentHandler
- (id)_supportedIncidentTypesForIncidentLayout:(id)layout;
- (void)handleReportIncident:(id)incident completion:(id)completion;
- (void)resolveIncidentTypeForReportIncident:(id)incident withCompletion:(id)completion;
@end

@implementation IntentHandler

- (void)handleReportIncident:(id)incident completion:(id)completion
{
  completionCopy = completion;
  v6 = [[INReportIncidentIntentResponse alloc] initWithCode:2 userActivity:0];
  (*(completion + 2))(completionCopy, v6);
}

- (void)resolveIncidentTypeForReportIncident:(id)incident withCompletion:(id)completion
{
  incidentCopy = incident;
  completionCopy = completion;
  v8 = MAPSGetIncidentsReportingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    incidentType = [incidentCopy incidentType];
    isClear = [incidentCopy isClear];
    bOOLValue = [isClear BOOLValue];
    v12 = @"NO";
    if (bOOLValue)
    {
      v12 = @"YES";
    }

    v13 = v12;
    additionalDetails = [incidentCopy additionalDetails];
    *buf = 138412802;
    v26 = incidentType;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = additionalDetails;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received INReportIncidentIntent with type %@ isClear %@ additionalDetails %@", buf, 0x20u);
  }

  v15 = [GEOLocation alloc];
  userLocation = [incidentCopy userLocation];
  location = [userLocation location];
  v18 = [v15 initWithCLLocation:location];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001018;
  v21[3] = &unk_100008220;
  v22 = incidentCopy;
  selfCopy = self;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = incidentCopy;
  [TrafficIncidentIntentSupport fetchTrafficIncidentsLayoutForLocation:v18 completion:v21];
}

- (id)_supportedIncidentTypesForIncidentLayout:(id)layout
{
  layoutCopy = layout;
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [layoutCopy layoutItems];
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