@interface ReportIncidentActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ReportIncidentActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = +[MKLocationManager sharedLocationManager];
    if ([v8 isLocationServicesEnabled])
    {
      v9 = +[MKLocationManager sharedLocationManager];
      if ([v9 isAuthorizedForPreciseLocation])
      {
        v10 = +[MKLocationManager sharedLocationManager];
        isLocationServicesPossiblyAvailable = [v10 isLocationServicesPossiblyAvailable];

        if (isLocationServicesPossiblyAvailable)
        {
          v12 = actionCopy;
          incidentIntent = [v12 incidentIntent];

          if (incidentIntent)
          {
            incidentIntent2 = [v12 incidentIntent];
            incidentType = [incidentIntent2 incidentType];
            incidentType2 = +[TrafficIncidentIntentSupport incidentTypeForINTrafficIncidentType:](TrafficIncidentIntentSupport, "incidentTypeForINTrafficIncidentType:", [incidentType type]);

            isClear = [incidentIntent2 isClear];
            if ([isClear BOOLValue])
            {

LABEL_18:
              v31 = @"SiriTrafficIncidentIsClearKey";
              isClear2 = [incidentIntent2 isClear];
              v32 = isClear2;
              v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];

              v23 = +[NSNotificationCenter defaultCenter];
              [v23 postNotificationName:@"SiriTrafficIncidentUpdateNotification" object:self userInfo:v22];

LABEL_24:
              goto LABEL_13;
            }

            additionalDetails = [incidentIntent2 additionalDetails];
            v20 = [additionalDetails isEqual:@"update"];

            if (v20)
            {
              goto LABEL_18;
            }
          }

          else
          {
            if (![v12 incidentType])
            {
LABEL_13:

              goto LABEL_14;
            }

            incidentType2 = [v12 incidentType];
          }

          v24 = +[MKMapService sharedService];
          if (incidentType2 >= 0x14)
          {
            v25 = [NSString stringWithFormat:@"(unknown: %i)", incidentType2];
          }

          else
          {
            v25 = off_101651908[incidentType2];
          }

          [v24 captureUserAction:2152 onTarget:0 eventValue:v25];

          v26 = +[TrafficIncidentLayoutManager sharedInstance];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100D27B24;
          v27[3] = &unk_1016518E8;
          v29 = incidentType2;
          v28 = contextCopy;
          [v26 fetchTrafficIncidentsLayout:v27];

          incidentIntent2 = v28;
          goto LABEL_24;
        }

LABEL_10:
        v18 = sub_10002171C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ReportIncidentActionHandler: precise location is disabled", buf, 2u);
        }

        v12 = +[UIApplication sharedMapsDelegate];
        [v12 promptPreciseLocationOff];
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

LABEL_14:
}

@end