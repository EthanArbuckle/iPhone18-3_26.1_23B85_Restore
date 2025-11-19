@interface CARSettingsAnalytics
+ (BOOL)shouldSendAnalyticsEvents;
+ (id)sharedInstance;
- (id)_analyticsEventNameForEvent:(unint64_t)a3;
- (id)_dictionaryRepresentationWithVehicle:(id)a3 session:(id)a4;
- (void)axBoldTextPrefChangedForVehicle:(id)a3 session:(id)a4;
- (void)axColorFiltersPrefChangedForVehicle:(id)a3 session:(id)a4;
- (void)axSoundRecognitionChangedForVehicle:(id)a3 session:(id)a4;
- (void)axVoiceControlPrefChanged:(BOOL)a3 forVehicle:(id)a4 session:(id)a5;
- (void)sendEvent:(unint64_t)a3 withParameters:(id)a4;
@end

@implementation CARSettingsAnalytics

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BBDC;
  block[3] = &unk_1000DB438;
  block[4] = a1;
  if (qword_100101EB8 != -1)
  {
    dispatch_once(&qword_100101EB8, block);
  }

  v2 = qword_100101EB0;

  return v2;
}

+ (BOOL)shouldSendAnalyticsEvents
{
  v2 = NSClassFromString(@"XCTestCase");
  if (v2)
  {
    v3 = sub_10001C784();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] Not recording events due to testing context.", v5, 2u);
    }
  }

  return v2 == 0;
}

- (void)axVoiceControlPrefChanged:(BOOL)a3 forVehicle:(id)a4 session:(id)a5
{
  v5 = a3;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:a4 session:a5];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v7];

  v8 = [NSNumber numberWithBool:v5];
  [v9 setObject:v8 forKeyedSubscript:@"voiceControl"];

  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v9];
}

- (void)axBoldTextPrefChangedForVehicle:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:v6 session:a4];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v7];

  v8 = [v6 boldTextPreference];
  v9 = [NSNumber numberWithBool:v8 == 1];
  [v10 setObject:v9 forKeyedSubscript:@"boldText"];

  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v10];
}

- (void)axColorFiltersPrefChangedForVehicle:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:v6 session:a4];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v7];

  v8 = [v6 _axColorFiltersAnalyticsString];

  [v9 setObject:v8 forKeyedSubscript:@"colorFilters"];
  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v9];
}

- (void)axSoundRecognitionChangedForVehicle:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:v6 session:a4];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v7];

  v8 = [v6 _axSoundRecognitionAnalyticsString];

  [v9 setObject:v8 forKeyedSubscript:@"soundRecognition"];
  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v9];
}

- (void)sendEvent:(unint64_t)a3 withParameters:(id)a4
{
  v6 = a4;
  if ([objc_opt_class() shouldSendAnalyticsEvents])
  {
    v7 = [(CARSettingsAnalytics *)self _analyticsEventNameForEvent:a3];
    if (v7)
    {
      v8 = sub_10001C784();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Settings] Sending CA event %@ with %@", &v9, 0x16u);
      }

      AnalyticsSendEvent();
    }
  }
}

- (id)_analyticsEventNameForEvent:(unint64_t)a3
{
  if (a3)
  {
    v4 = sub_10001C784();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000918B8(a3, v4);
    }

    v5 = 0;
  }

  else
  {
    v5 = [NSString stringWithFormat:@"com.apple.carexperience.%@", @"ax-pref-changed"];
  }

  return v5;
}

- (id)_dictionaryRepresentationWithVehicle:(id)a3 session:(id)a4
{
  v4 = a4;
  v5 = [v4 configuration];
  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 PPID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"(no value)";
  }

  [v6 setObject:v9 forKeyedSubscript:@"ppid"];

  v10 = [v5 name];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"(no value)";
  }

  [v6 setObject:v12 forKeyedSubscript:@"name"];

  v13 = [v5 modelName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"(no value)";
  }

  [v6 setObject:v15 forKeyedSubscript:@"airplayModel"];

  v16 = [v5 manufacturerName];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"(no value)";
  }

  [v6 setObject:v18 forKeyedSubscript:@"manufacturer"];

  v19 = [v5 vehicleName];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"(no value)";
  }

  [v6 setObject:v21 forKeyedSubscript:@"iAPName"];

  v22 = [v5 vehicleModelName];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"(no value)";
  }

  [v6 setObject:v24 forKeyedSubscript:@"iAPModel"];

  v25 = [v5 vehicleManufacturer];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"(no value)";
  }

  [v6 setObject:v27 forKeyedSubscript:@"iAPManufacturer"];

  v28 = [v5 vehicleFirmwareVersion];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"(no value)";
  }

  [v6 setObject:v30 forKeyedSubscript:@"firmwareVersion"];

  v31 = [v5 vehicleHardwareVersion];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = @"(no value)";
  }

  [v6 setObject:v33 forKeyedSubscript:@"hardwareVersion"];

  v34 = [v5 descriptionForLimitableUserInterfaces];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = @"(no value)";
  }

  [v6 setObject:v36 forKeyedSubscript:@"limitableUITypes"];

  [v4 voiceTriggerMode];
  v37 = CARStringFromVoiceTriggerMode();
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = @"(no value)";
  }

  [v6 setObject:v39 forKeyedSubscript:@"voiceTriggerMode"];

  v40 = [v5 screens];
  v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v40 count]);
  [v6 setObject:v41 forKeyedSubscript:@"screenCount"];

  v42 = [v4 sourceVersion];

  if (v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = @"(no value)";
  }

  [v6 setObject:v43 forKeyedSubscript:@"SourceVersion"];

  v44 = [v5 screens];
  v45 = [v44 firstObject];

  if (v45)
  {
    v46 = [v45 descriptionForPrimaryInteractionModel];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = @"(no value)";
    }

    [v6 setObject:v48 forKeyedSubscript:@"primaryInteraction"];

    v49 = [v45 descriptionForAvailableInteractionModels];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = @"(no value)";
    }

    [v6 setObject:v51 forKeyedSubscript:@"availableInteractions"];

    if ([v45 supportsHighFidelityTouch])
    {
      v52 = &__kCFBooleanTrue;
    }

    else
    {
      v52 = &__kCFBooleanFalse;
    }

    [v6 setObject:v52 forKeyedSubscript:@"supportsHiFiTouch"];
  }

  return v6;
}

@end