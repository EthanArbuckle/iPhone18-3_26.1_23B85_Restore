@interface FTWidgetUpdateEventTracker
- (FTWidgetUpdateEventTracker)init;
- (void)trackUpdateWithTodaySource:(id)a3 appConfigTreatmentID:(id)a4 error:(id)a5 updateFetchDuration:(double)a6 wifiReachable:(BOOL)a7 cellularRadioAccessTechnology:(int64_t)a8;
@end

@implementation FTWidgetUpdateEventTracker

- (FTWidgetUpdateEventTracker)init
{
  v24.receiver = self;
  v24.super_class = FTWidgetUpdateEventTracker;
  v2 = [(FTWidgetUpdateEventTracker *)&v24 init];
  if (v2)
  {
    v3 = +[PETEventProperty ft_headlineSourceProperty];
    v29[0] = &off_1000DBCE8;
    v29[1] = &off_1000DBD00;
    v30[0] = @"new";
    v30[1] = @"no";
    v29[2] = &off_1000DBD18;
    v30[2] = @"failed";
    v4 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
    v20 = [PETEventProperty propertyWithName:@"updateResult" enumMapping:v4 autoSanitizeValues:0];

    v22 = [PETEventProperty ft_BOOLeanPropertyWithName:@"widgetVisible"];
    v23 = [PETEventProperty ft_BOOLeanPropertyWithName:@"wifiReachable"];
    v27[0] = &off_1000DBD30;
    v27[1] = &off_1000DBD48;
    v28[0] = @"unknown";
    v28[1] = @"GPRS";
    v27[2] = &off_1000DBD60;
    v27[3] = &off_1000DBD78;
    v28[2] = @"Edge";
    v28[3] = @"WCDMA";
    v27[4] = &off_1000DBD90;
    v27[5] = &off_1000DBDA8;
    v28[4] = @"HSDPA";
    v28[5] = @"HSUPA";
    v27[6] = &off_1000DBDC0;
    v27[7] = &off_1000DBDD8;
    v28[6] = @"CDMA1x";
    v28[7] = @"CDMAEVDORev0";
    v27[8] = &off_1000DBDF0;
    v27[9] = &off_1000DBE08;
    v28[8] = @"CDMAEVDORevA";
    v28[9] = @"CDMAEVDORevB";
    v27[10] = &off_1000DBE20;
    v27[11] = &off_1000DBE38;
    v28[10] = @"HRPD";
    v28[11] = @"LTE";
    v5 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:12];
    v19 = [PETEventProperty propertyWithName:@"cellTechName" enumMapping:v5];

    v6 = +[PETEventProperty ft_userGroupProperty];
    v21 = [NSArray fc_array:&stru_1000D7320];
    v18 = [PETEventProperty propertyWithName:@"errorDomain" possibleValues:v21];
    v17 = [PETEventProperty ft_BOOLeanPropertyWithName:@"errorCodeValid"];
    v7 = [PETEventProperty propertyWithName:@"errorCode" range:0 clampValues:50, 1];
    v8 = [PETDistributionEventTracker alloc];
    v26[0] = v3;
    v26[1] = v20;
    v26[2] = v22;
    v26[3] = v23;
    v26[4] = v19;
    v26[5] = v6;
    v9 = [NSArray arrayWithObjects:v26 count:6];
    v10 = [v8 initWithFeatureId:@"NewsWidget" event:@"wdgtUpdate" registerProperties:v9];
    widgetUpdateEventTracker = v2->_widgetUpdateEventTracker;
    v2->_widgetUpdateEventTracker = v10;

    v12 = [PETScalarEventTracker alloc];
    v25[0] = v3;
    v25[1] = v6;
    v25[2] = v18;
    v25[3] = v17;
    v25[4] = v7;
    v13 = [NSArray arrayWithObjects:v25 count:5];
    v14 = [v12 initWithFeatureId:@"NewsWidget" event:@"wdgtUpdateFailure" registerProperties:v13];
    widgetUpdateFailureEventTracker = v2->_widgetUpdateFailureEventTracker;
    v2->_widgetUpdateFailureEventTracker = v14;
  }

  return v2;
}

- (void)trackUpdateWithTodaySource:(id)a3 appConfigTreatmentID:(id)a4 error:(id)a5 updateFetchDuration:(double)a6 wifiReachable:(BOOL)a7 cellularRadioAccessTechnology:(int64_t)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A02F0();
  }

  if (a6 < 0.0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A03D0();
  }

  v36 = v14;
  v17 = FTHeadlineSourcePropertyValueWithTodaySource(v14);
  v37 = v15;
  v18 = FTUserGroupPropertyValueWithAppConfigTreatmentID(v15);
  v19 = [(FTWidgetUpdateEventTracker *)self widgetUpdateEventTracker];
  v39[0] = v17;
  v20 = [NSNumber numberWithUnsignedInteger:2 * (v16 != 0)];
  v39[1] = v20;
  v21 = FTBooleanPropertyValue(0);
  v39[2] = v21;
  v22 = FTBooleanPropertyValue(v9);
  v39[3] = v22;
  v23 = [NSNumber numberWithInteger:a8];
  v39[4] = v23;
  v39[5] = v18;
  [NSArray arrayWithObjects:v39 count:6];
  v25 = v24 = self;
  [v19 trackEventWithPropertyValues:v25 value:a6];

  if (v16)
  {
    v26 = [v16 domain];
    v27 = sub_100012534();
    v28 = [v27 containsObject:v26];
    v29 = @"other";
    if (v28)
    {
      v29 = v26;
    }

    v30 = v29;

    v31 = [v16 code];
    v32 = [(FTWidgetUpdateEventTracker *)v24 widgetUpdateFailureEventTracker];
    v38[0] = v17;
    v38[1] = v18;
    v38[2] = v30;
    v33 = FTBooleanPropertyValue(v31 < 0x32);
    v38[3] = v33;
    v34 = [NSNumber numberWithInteger:v31];
    v38[4] = v34;
    v35 = [NSArray arrayWithObjects:v38 count:5];

    [v32 trackEventWithPropertyValues:v35];
  }
}

@end