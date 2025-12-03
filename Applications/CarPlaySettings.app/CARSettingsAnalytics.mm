@interface CARSettingsAnalytics
+ (BOOL)shouldSendAnalyticsEvents;
+ (id)sharedInstance;
- (id)_analyticsEventNameForEvent:(unint64_t)event;
- (id)_dictionaryRepresentationWithVehicle:(id)vehicle session:(id)session;
- (void)axBoldTextPrefChangedForVehicle:(id)vehicle session:(id)session;
- (void)axColorFiltersPrefChangedForVehicle:(id)vehicle session:(id)session;
- (void)axSoundRecognitionChangedForVehicle:(id)vehicle session:(id)session;
- (void)axVoiceControlPrefChanged:(BOOL)changed forVehicle:(id)vehicle session:(id)session;
- (void)sendEvent:(unint64_t)event withParameters:(id)parameters;
@end

@implementation CARSettingsAnalytics

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BBDC;
  block[3] = &unk_1000DB438;
  block[4] = self;
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

- (void)axVoiceControlPrefChanged:(BOOL)changed forVehicle:(id)vehicle session:(id)session
{
  changedCopy = changed;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:vehicle session:session];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v7];

  v8 = [NSNumber numberWithBool:changedCopy];
  [v9 setObject:v8 forKeyedSubscript:@"voiceControl"];

  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v9];
}

- (void)axBoldTextPrefChangedForVehicle:(id)vehicle session:(id)session
{
  vehicleCopy = vehicle;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:vehicleCopy session:session];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v7];

  boldTextPreference = [vehicleCopy boldTextPreference];
  v9 = [NSNumber numberWithBool:boldTextPreference == 1];
  [v10 setObject:v9 forKeyedSubscript:@"boldText"];

  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v10];
}

- (void)axColorFiltersPrefChangedForVehicle:(id)vehicle session:(id)session
{
  vehicleCopy = vehicle;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:vehicleCopy session:session];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v7];

  _axColorFiltersAnalyticsString = [vehicleCopy _axColorFiltersAnalyticsString];

  [v9 setObject:_axColorFiltersAnalyticsString forKeyedSubscript:@"colorFilters"];
  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v9];
}

- (void)axSoundRecognitionChangedForVehicle:(id)vehicle session:(id)session
{
  vehicleCopy = vehicle;
  v7 = [(CARSettingsAnalytics *)self _dictionaryRepresentationWithVehicle:vehicleCopy session:session];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v7];

  _axSoundRecognitionAnalyticsString = [vehicleCopy _axSoundRecognitionAnalyticsString];

  [v9 setObject:_axSoundRecognitionAnalyticsString forKeyedSubscript:@"soundRecognition"];
  [(CARSettingsAnalytics *)self sendEvent:0 withParameters:v9];
}

- (void)sendEvent:(unint64_t)event withParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([objc_opt_class() shouldSendAnalyticsEvents])
  {
    v7 = [(CARSettingsAnalytics *)self _analyticsEventNameForEvent:event];
    if (v7)
    {
      v8 = sub_10001C784();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = parametersCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Settings] Sending CA event %@ with %@", &v9, 0x16u);
      }

      AnalyticsSendEvent();
    }
  }
}

- (id)_analyticsEventNameForEvent:(unint64_t)event
{
  if (event)
  {
    v4 = sub_10001C784();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000918B8(event, v4);
    }

    v5 = 0;
  }

  else
  {
    v5 = [NSString stringWithFormat:@"com.apple.carexperience.%@", @"ax-pref-changed"];
  }

  return v5;
}

- (id)_dictionaryRepresentationWithVehicle:(id)vehicle session:(id)session
{
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  v6 = +[NSMutableDictionary dictionary];
  pPID = [configuration PPID];
  v8 = pPID;
  if (pPID)
  {
    v9 = pPID;
  }

  else
  {
    v9 = @"(no value)";
  }

  [v6 setObject:v9 forKeyedSubscript:@"ppid"];

  name = [configuration name];
  v11 = name;
  if (name)
  {
    v12 = name;
  }

  else
  {
    v12 = @"(no value)";
  }

  [v6 setObject:v12 forKeyedSubscript:@"name"];

  modelName = [configuration modelName];
  v14 = modelName;
  if (modelName)
  {
    v15 = modelName;
  }

  else
  {
    v15 = @"(no value)";
  }

  [v6 setObject:v15 forKeyedSubscript:@"airplayModel"];

  manufacturerName = [configuration manufacturerName];
  v17 = manufacturerName;
  if (manufacturerName)
  {
    v18 = manufacturerName;
  }

  else
  {
    v18 = @"(no value)";
  }

  [v6 setObject:v18 forKeyedSubscript:@"manufacturer"];

  vehicleName = [configuration vehicleName];
  v20 = vehicleName;
  if (vehicleName)
  {
    v21 = vehicleName;
  }

  else
  {
    v21 = @"(no value)";
  }

  [v6 setObject:v21 forKeyedSubscript:@"iAPName"];

  vehicleModelName = [configuration vehicleModelName];
  v23 = vehicleModelName;
  if (vehicleModelName)
  {
    v24 = vehicleModelName;
  }

  else
  {
    v24 = @"(no value)";
  }

  [v6 setObject:v24 forKeyedSubscript:@"iAPModel"];

  vehicleManufacturer = [configuration vehicleManufacturer];
  v26 = vehicleManufacturer;
  if (vehicleManufacturer)
  {
    v27 = vehicleManufacturer;
  }

  else
  {
    v27 = @"(no value)";
  }

  [v6 setObject:v27 forKeyedSubscript:@"iAPManufacturer"];

  vehicleFirmwareVersion = [configuration vehicleFirmwareVersion];
  v29 = vehicleFirmwareVersion;
  if (vehicleFirmwareVersion)
  {
    v30 = vehicleFirmwareVersion;
  }

  else
  {
    v30 = @"(no value)";
  }

  [v6 setObject:v30 forKeyedSubscript:@"firmwareVersion"];

  vehicleHardwareVersion = [configuration vehicleHardwareVersion];
  v32 = vehicleHardwareVersion;
  if (vehicleHardwareVersion)
  {
    v33 = vehicleHardwareVersion;
  }

  else
  {
    v33 = @"(no value)";
  }

  [v6 setObject:v33 forKeyedSubscript:@"hardwareVersion"];

  descriptionForLimitableUserInterfaces = [configuration descriptionForLimitableUserInterfaces];
  v35 = descriptionForLimitableUserInterfaces;
  if (descriptionForLimitableUserInterfaces)
  {
    v36 = descriptionForLimitableUserInterfaces;
  }

  else
  {
    v36 = @"(no value)";
  }

  [v6 setObject:v36 forKeyedSubscript:@"limitableUITypes"];

  [sessionCopy voiceTriggerMode];
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

  screens = [configuration screens];
  v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [screens count]);
  [v6 setObject:v41 forKeyedSubscript:@"screenCount"];

  sourceVersion = [sessionCopy sourceVersion];

  if (sourceVersion)
  {
    v43 = sourceVersion;
  }

  else
  {
    v43 = @"(no value)";
  }

  [v6 setObject:v43 forKeyedSubscript:@"SourceVersion"];

  screens2 = [configuration screens];
  firstObject = [screens2 firstObject];

  if (firstObject)
  {
    descriptionForPrimaryInteractionModel = [firstObject descriptionForPrimaryInteractionModel];
    v47 = descriptionForPrimaryInteractionModel;
    if (descriptionForPrimaryInteractionModel)
    {
      v48 = descriptionForPrimaryInteractionModel;
    }

    else
    {
      v48 = @"(no value)";
    }

    [v6 setObject:v48 forKeyedSubscript:@"primaryInteraction"];

    descriptionForAvailableInteractionModels = [firstObject descriptionForAvailableInteractionModels];
    v50 = descriptionForAvailableInteractionModels;
    if (descriptionForAvailableInteractionModels)
    {
      v51 = descriptionForAvailableInteractionModels;
    }

    else
    {
      v51 = @"(no value)";
    }

    [v6 setObject:v51 forKeyedSubscript:@"availableInteractions"];

    if ([firstObject supportsHighFidelityTouch])
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