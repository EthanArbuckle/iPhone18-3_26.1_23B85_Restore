@interface ReportIncidentActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ReportIncidentActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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
        v11 = [v10 isLocationServicesPossiblyAvailable];

        if (v11)
        {
          v12 = v6;
          v13 = [v12 incidentIntent];

          if (v13)
          {
            v14 = [v12 incidentIntent];
            v15 = [v14 incidentType];
            v16 = +[TrafficIncidentIntentSupport incidentTypeForINTrafficIncidentType:](TrafficIncidentIntentSupport, "incidentTypeForINTrafficIncidentType:", [v15 type]);

            v17 = [v14 isClear];
            if ([v17 BOOLValue])
            {

LABEL_18:
              v31 = @"SiriTrafficIncidentIsClearKey";
              v21 = [v14 isClear];
              v32 = v21;
              v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];

              v23 = +[NSNotificationCenter defaultCenter];
              [v23 postNotificationName:@"SiriTrafficIncidentUpdateNotification" object:a1 userInfo:v22];

LABEL_24:
              goto LABEL_13;
            }

            v19 = [v14 additionalDetails];
            v20 = [v19 isEqual:@"update"];

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

            v16 = [v12 incidentType];
          }

          v24 = +[MKMapService sharedService];
          if (v16 >= 0x14)
          {
            v25 = [NSString stringWithFormat:@"(unknown: %i)", v16];
          }

          else
          {
            v25 = off_101651908[v16];
          }

          [v24 captureUserAction:2152 onTarget:0 eventValue:v25];

          v26 = +[TrafficIncidentLayoutManager sharedInstance];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100D27B24;
          v27[3] = &unk_1016518E8;
          v29 = v16;
          v28 = v7;
          [v26 fetchTrafficIncidentsLayout:v27];

          v14 = v28;
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