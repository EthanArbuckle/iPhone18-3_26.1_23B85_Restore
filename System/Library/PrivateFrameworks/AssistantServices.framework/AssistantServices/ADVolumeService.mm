@interface ADVolumeService
- (ADVolumeService)initWithQueue:(id)queue instanceContext:(id)context speechController:(id)controller;
- (BOOL)_fetchSystemVolumeForCategory:(id)category andMode:(id)mode audioRoute:(id)route withName:(id)name usingSystemController:(id)controller volume:(float *)volume;
- (BOOL)_updateSystemVolumeForCategory:(id)category andMode:(id)mode audioRoute:(id)route withName:(id)name usingSystemController:(id)controller volume:(float)volume operationType:(int64_t)type;
- (float)_mediaPlaybackVolume;
- (void)_fetchSmartSiriVolumeForType:(unint64_t)type;
- (void)_fetchSystemVolumes;
- (void)_fetchSystemVolumesUsingSystemController:(id)controller;
- (void)_handleSystemVolumeChangeForCategory:(id)category volume:(float)volume audioCategory:(id)audioCategory reason:(id)reason;
- (void)_setNeedsUpdateSiriVolume;
- (void)_startObservingSystemControllerLifecycle;
- (void)_startObservingSystemVolumes;
- (void)_stopObservingSystemControllerLifecycle;
- (void)_stopObservingSystemVolumes;
- (void)_updateSiriVolume:(BOOL)volume completion:(id)completion;
- (void)_updateSiriVolumeIfNeeded;
- (void)adAVSystemControllerDidChange:(id)change;
- (void)fetchSmartSiriVolumeForType:(unint64_t)type;
- (void)getMusicOutputVolumeForAudioRoute:(id)route withName:(id)name completion:(id)completion;
- (void)getSiriOutputVolumeForAudioRoute:(id)route withName:(id)name completion:(id)completion;
- (void)invalidate;
- (void)setClientConfiguration:(id)configuration;
- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route withName:(id)name operationType:(int64_t)type completion:(id)completion;
- (void)systemVolumeChanged:(id)changed;
- (void)updateSiriOutputVolume:(BOOL)volume completion:(id)completion;
- (void)waitUntilSiriOutputVolumeUpdatesAfterTimestamp:(unint64_t)timestamp withTimeout:(double)timeout block:(id)block;
@end

@implementation ADVolumeService

- (float)_mediaPlaybackVolume
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableDictionary *)self->_volumesByCategory objectForKey:@"Audio/Video"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)_updateSiriVolume:(BOOL)volume completion:(id)completion
{
  volumeCopy = volume;
  completionCopy = completion;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[ADVolumeService _updateSiriVolume:completion:]";
    v43 = 1024;
    LODWORD(v44) = volumeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s forceUpdate = %d", buf, 0x12u);
  }

  self->_needsUpdateSiriVolume = 0;
  v8 = mach_absolute_time();
  smartSiriVolume = self->_smartSiriVolume;
  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[ADVolumeService _updateSiriVolume:completion:]";
    v43 = 2048;
    v44 = smartSiriVolume;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Cached Smart Siri volume is %f.", buf, 0x16u);
  }

  if (AFIsHorseman())
  {
    deviceSetupFlowBeginDate = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowBeginDate];
    deviceSetupFlowEndDate = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowEndDate];
    IsActive = AFDeviceSetupIsActive();

    if (IsActive)
    {
      v14 = AFSiriLogContextSpeech;
      if (self->_deviceSetupFlowSiriVolume == 0.0)
      {
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v42 = "[ADVolumeService _updateSiriVolume:completion:]";
          v43 = 2048;
          v44 = smartSiriVolume;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Setting device setup volume to %f", buf, 0x16u);
          v14 = AFSiriLogContextSpeech;
        }

        self->_deviceSetupFlowSiriVolume = smartSiriVolume;
      }

      else
      {
        smartSiriVolume = self->_deviceSetupFlowSiriVolume;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "[ADVolumeService _updateSiriVolume:completion:]";
        v43 = 2048;
        v44 = smartSiriVolume;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Setting resolved volume to device setup volume %f", buf, 0x16u);
        smartSiriVolume = self->_deviceSetupFlowSiriVolume;
      }
    }

    else
    {
      v15 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v42 = "[ADVolumeService _updateSiriVolume:completion:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Resetting device setup volume", buf, 0xCu);
      }

      self->_deviceSetupFlowSiriVolume = 0.0;
    }

    [(AFClientConfiguration *)self->_clientConfiguration outputVolume];
    if (v16 > 0.0)
    {
      v17 = v16;
      v18 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "[ADVolumeService _updateSiriVolume:completion:]";
        v43 = 2048;
        v44 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Setting resolved volume to client configured output volume %f", buf, 0x16u);
      }

      smartSiriVolume = v17;
    }
  }

  if (AFIsInternalInstall())
  {
    v19 = +[ADPreferences sharedPreferences];
    v40 = 0.0;
    if ([v19 getMinimumOutputVolume:&v40])
    {
      v20 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "[ADVolumeService _updateSiriVolume:completion:]";
        v43 = 2048;
        v44 = v40;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Minimum Siri volume is set to %f.", buf, 0x16u);
      }

      if (smartSiriVolume < v40)
      {
        smartSiriVolume = v40;
      }
    }

    v39 = 0.0;
    if ([v19 getMaximumOutputVolume:&v39])
    {
      v21 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "[ADVolumeService _updateSiriVolume:completion:]";
        v43 = 2048;
        v44 = v39;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Maximum Siri volume is set to %f.", buf, 0x16u);
      }

      if (smartSiriVolume >= v39)
      {
        smartSiriVolume = v39;
      }
    }
  }

  v22 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[ADVolumeService _updateSiriVolume:completion:]";
    v43 = 2048;
    v44 = smartSiriVolume;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Resolved Siri volume is %f.", buf, 0x16u);
  }

  if (!volumeCopy)
  {
    v23 = [(NSMutableDictionary *)self->_volumesByCategory objectForKey:@"VoiceCommand"];
    v24 = v23;
    if (v23)
    {
      [v23 floatValue];
      v26 = v25;
      v27 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v42 = "[ADVolumeService _updateSiriVolume:completion:]";
        v43 = 2048;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Cached Siri volume is %f.", buf, 0x16u);
      }

      if (vabds_f32(smartSiriVolume, v26) < 0.01)
      {
        v28 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v42 = "[ADVolumeService _updateSiriVolume:completion:]";
          v43 = 2048;
          v44 = v26;
          v45 = 2048;
          v46 = smartSiriVolume;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Ignored because current Siri volume is %f and resolved Siri volume is %f. They are close enough.", buf, 0x20u);
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v29 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v42 = "[ADVolumeService _updateSiriVolume:completion:]";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Cached Siri volume is missing.", buf, 0xCu);
      }
    }
  }

  v30 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v31 = AFSiriLogContextSpeech;
  v32 = v31;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "SiriUpdateOutputVolume", "enableTelemetry=YES", buf, 2u);
  }

  v33 = +[ADAVSystemControllerLifecycleManager sharedManager];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10035A5B0;
  v34[3] = &unk_10051D430;
  v38 = smartSiriVolume;
  v34[4] = self;
  v36 = v30;
  v37 = v8;
  v35 = completionCopy;
  [v33 getAVSystemControllerWithTimeout:v34 completion:2.0];

LABEL_51:
}

- (void)_updateSiriVolumeIfNeeded
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    needsUpdateSiriVolume = self->_needsUpdateSiriVolume;
    v5 = 136315394;
    v6 = "[ADVolumeService _updateSiriVolumeIfNeeded]";
    v7 = 1024;
    v8 = needsUpdateSiriVolume;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s needsUpdateSiriVolume = %d", &v5, 0x12u);
  }

  if (self->_needsUpdateSiriVolume)
  {
    [(ADVolumeService *)self _updateSiriVolume:0 completion:0];
  }
}

- (void)_setNeedsUpdateSiriVolume
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    needsUpdateSiriVolume = self->_needsUpdateSiriVolume;
    *buf = 136315394;
    v9 = "[ADVolumeService _setNeedsUpdateSiriVolume]";
    v10 = 1024;
    v11 = needsUpdateSiriVolume;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s needsUpdateSiriVolume = %d", buf, 0x12u);
  }

  if (!self->_needsUpdateSiriVolume)
  {
    self->_needsUpdateSiriVolume = 1;
    v5 = dispatch_time(0, 200000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035AC50;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_after(v5, queue, block);
  }
}

- (void)_fetchSmartSiriVolumeForType:(unint64_t)type
{
  deviceSetupFlowBeginDate = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowBeginDate];
  deviceSetupFlowEndDate = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowEndDate];
  IsActive = AFDeviceSetupIsActive();

  if (IsActive)
  {
    type = 3;
  }

  [(CSSpeechController *)self->_speechController getVolumeForTTSType:type];
  v9 = v8;
  if (v8 >= 0.0 && v8 <= 1.0)
  {
    self->_smartSiriVolume = v8;
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v13 = 136315650;
      v14 = "[ADVolumeService _fetchSmartSiriVolumeForType:]";
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Smart Siri volume is %f for type: %lu.", &v13, 0x20u);
    }
  }

  else
  {
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "_ADVolumeServiceSmartSiriVolumeIsValid";
      v15 = 2048;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Invalid Smart Siri Volume: %f", &v13, 0x16u);
    }
  }
}

- (void)_handleSystemVolumeChangeForCategory:(id)category volume:(float)volume audioCategory:(id)audioCategory reason:(id)reason
{
  categoryCopy = category;
  audioCategoryCopy = audioCategory;
  reasonCopy = reason;
  v13 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v18 = 136316162;
    v19 = "[ADVolumeService _handleSystemVolumeChangeForCategory:volume:audioCategory:reason:]";
    v20 = 2112;
    v21 = categoryCopy;
    v22 = 2048;
    volumeCopy = volume;
    v24 = 2112;
    v25 = audioCategoryCopy;
    v26 = 2112;
    v27 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s category = %@, volume = %f, audioCategory = %@, reason = %@", &v18, 0x34u);
  }

  v14 = [(NSMutableDictionary *)self->_volumesByCategory objectForKey:categoryCopy];
  *&v15 = volume;
  v16 = [NSNumber numberWithFloat:v15];
  if ([v14 isEqual:v16])
  {
    AFIsHorseman();
  }

  else
  {
    [(NSMutableDictionary *)self->_volumesByCategory setObject:v16 forKey:categoryCopy];
    if (AFIsHorseman() && [audioCategoryCopy isEqualToString:@"Audio/Video"] && self->_deviceSetupFlowSiriVolume > 0.0)
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v18 = 136315650;
        v19 = "[ADVolumeService _handleSystemVolumeChangeForCategory:volume:audioCategory:reason:]";
        v20 = 2112;
        v21 = audioCategoryCopy;
        v22 = 2112;
        volumeCopy = *&reasonCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Resetting device setup volume due to %@ audio category volume change for %@.", &v18, 0x20u);
      }

      self->_deviceSetupFlowSiriVolume = 0.0;
    }
  }
}

- (void)systemVolumeChanged:(id)changed
{
  changedCopy = changed;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[ADVolumeService systemVolumeChanged:]";
    v26 = 2112;
    v27 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s notification = %@", buf, 0x16u);
  }

  v6 = mach_absolute_time();
  userInfo = [changedCopy userInfo];
  v8 = [userInfo objectForKey:AVSystemController_AudioCategoryNotificationParameter];
  v9 = [userInfo objectForKey:AVSystemController_AudioVolumeChangeReasonNotificationParameter];
  v10 = v9;
  v11 = @"Notification";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [userInfo objectForKey:AVSystemController_AudioVolumeNotificationParameter];
  [v13 floatValue];
  v15 = v14;

  if (v8)
  {
    v16 = +[ADAVSystemControllerLifecycleManager sharedManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10035B2B8;
    v18[3] = &unk_10051D3E0;
    v18[4] = self;
    v19 = v8;
    v23 = v15;
    v20 = v12;
    v22 = v6;
    v21 = changedCopy;
    [v16 getAVSystemControllerWithTimeout:v18 completion:2.0];
  }

  else
  {
    v17 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[ADVolumeService systemVolumeChanged:]";
      v26 = 2112;
      v27 = changedCopy;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Ignored because no audio category is specified in the notification %@.", buf, 0x16u);
    }
  }
}

- (BOOL)_updateSystemVolumeForCategory:(id)category andMode:(id)mode audioRoute:(id)route withName:(id)name usingSystemController:(id)controller volume:(float)volume operationType:(int64_t)type
{
  categoryCopy = category;
  modeCopy = mode;
  routeCopy = route;
  nameCopy = name;
  controllerCopy = controller;
  v20 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316674;
    v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
    v67 = 2112;
    v68 = categoryCopy;
    v69 = 2112;
    v70 = modeCopy;
    v71 = 2112;
    v72 = routeCopy;
    v73 = 2112;
    v74 = nameCopy;
    v75 = 2048;
    volumeCopy = volume;
    v77 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s category = %@, mode = %@, audioRoute = %@, routeName = %@, volume = %f, operationType = %ld", buf, 0x48u);
  }

  v21 = 0;
  if (categoryCopy && controllerCopy)
  {
    if (routeCopy)
    {
      avscRouteDescription = [routeCopy avscRouteDescription];
      if (avscRouteDescription)
      {
LABEL_7:
        v23 = avscRouteDescription;
        goto LABEL_8;
      }

      v39 = AFSiriLogContextSpeech;
      if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136315394;
      v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
      v67 = 2112;
      v68 = routeCopy;
      v50 = "%s Unable to find a pickable route matching audio route %@.";
      v51 = v39;
      v52 = 22;
      goto LABEL_47;
    }

    if (!nameCopy)
    {
      avscRouteDescription = [controllerCopy attributeForKey:AVSystemController_PickedRouteAttribute];
      if (avscRouteDescription)
      {
        goto LABEL_7;
      }

      v49 = AFSiriLogContextSpeech;
      if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136315138;
      v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
      v50 = "%s There's no picked route.";
      v51 = v49;
      v52 = 12;
LABEL_47:
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);
LABEL_27:
      v21 = 0;
      goto LABEL_42;
    }

    v53 = modeCopy;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v54 = controllerCopy;
    v57 = categoryCopy;
    v31 = [controllerCopy pickableRoutesForCategory:categoryCopy andMode:modeCopy];
    v32 = [v31 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v59;
LABEL_19:
      v35 = 0;
      while (1)
      {
        if (*v59 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v58 + 1) + 8 * v35);
        v37 = [v36 objectForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
        v38 = [nameCopy isEqualToString:v37];

        if (v38)
        {
          break;
        }

        if (v33 == ++v35)
        {
          v33 = [v31 countByEnumeratingWithState:&v58 objects:v64 count:16];
          if (v33)
          {
            goto LABEL_19;
          }

          goto LABEL_25;
        }
      }

      v23 = v36;

      if (!v23)
      {
        goto LABEL_30;
      }

      controllerCopy = v54;
      categoryCopy = v57;
      modeCopy = v53;
LABEL_8:
      v24 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
        v67 = 2112;
        v68 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s routeInfo = %@", buf, 0x16u);
      }

      v25 = [v23 objectForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
      v26 = [v23 objectForKey:AVSystemController_RouteDescriptionKey_RouteUID];
      v56 = [v23 objectForKey:AVSystemController_RouteDescriptionKey_RouteSubtype];
      v27 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
        v67 = 2112;
        v68 = v25;
        v69 = 2112;
        v70 = v26;
        v71 = 2112;
        v72 = v56;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s route = %@, deviceIdentifier = %@, routeSubtype = %@", buf, 0x2Au);
      }

      if (type == 1)
      {
        *&v28 = volume;
        if ([controllerCopy setVolume:categoryCopy category:modeCopy mode:v25 route:v26 deviceIdentifier:v56 routeSubtype:v28 rampUpDuration:0.0 rampDownDuration:0.0])
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (type == 3)
        {
          v29 = controllerCopy;
          v30 = 0;
        }

        else
        {
          if (type != 2)
          {
            v47 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
              _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s Unsupported volume operation type.", buf, 0xCu);
            }

            goto LABEL_40;
          }

          v29 = controllerCopy;
          v30 = 1;
        }

        if ([v29 changeVolumeForRoute:v30 forCategory:categoryCopy mode:modeCopy route:v25 deviceIdentifier:v26 andRouteSubtype:v56])
        {
LABEL_40:
          v21 = 0;
          goto LABEL_41;
        }
      }

      +[AFAnalytics sharedAnalytics];
      v55 = controllerCopy;
      v41 = routeCopy;
      v43 = v42 = modeCopy;
      v62[0] = @"category";
      v62[1] = @"volume";
      v63[0] = categoryCopy;
      *&v44 = volume;
      v45 = [NSNumber numberWithFloat:v44];
      v63[1] = v45;
      v46 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
      [v43 logEventWithType:4603 context:v46];

      modeCopy = v42;
      routeCopy = v41;
      controllerCopy = v55;
      v21 = 1;
LABEL_41:

      goto LABEL_42;
    }

LABEL_25:

LABEL_30:
    v40 = AFSiriLogContextSpeech;
    modeCopy = v53;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
      v67 = 2112;
      v68 = 0;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Unable to find a pickable route matching audio route %@.", buf, 0x16u);
    }

    v21 = 0;
    controllerCopy = v54;
    categoryCopy = v57;
  }

LABEL_42:

  return v21;
}

- (BOOL)_fetchSystemVolumeForCategory:(id)category andMode:(id)mode audioRoute:(id)route withName:(id)name usingSystemController:(id)controller volume:(float *)volume
{
  categoryCopy = category;
  modeCopy = mode;
  routeCopy = route;
  nameCopy = name;
  controllerCopy = controller;
  v18 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
    v62 = 2112;
    v63 = categoryCopy;
    v64 = 2112;
    v65 = modeCopy;
    v66 = 2112;
    v67 = routeCopy;
    v68 = 2112;
    v69 = nameCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s category = %@, mode = %@, audioRoute = %@, routeName = %@", buf, 0x34u);
  }

  if (!volume)
  {
    goto LABEL_27;
  }

  v19 = 0;
  *volume = 0.0;
  if (!categoryCopy || !controllerCopy)
  {
    goto LABEL_28;
  }

  if (routeCopy)
  {
    avscRouteDescription = [routeCopy avscRouteDescription];
    if (avscRouteDescription)
    {
LABEL_8:
      v21 = avscRouteDescription;
LABEL_9:
      v22 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
        v62 = 2112;
        v63 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s routeInfo = %@", buf, 0x16u);
      }

      v51 = [v21 objectForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
      v23 = [v21 objectForKey:AVSystemController_RouteDescriptionKey_RouteUID];
      v24 = [v21 objectForKey:AVSystemController_RouteDescriptionKey_RouteSubtype];
      v25 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
        v62 = 2112;
        v63 = v51;
        v64 = 2112;
        v65 = v23;
        v66 = 2112;
        v67 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s route = %@, deviceIdentifier = %@, routeSubtype = %@", buf, 0x2Au);
      }

      v26 = [controllerCopy getVolume:volume category:categoryCopy mode:modeCopy route:v51 deviceIdentifier:v23 routeSubtype:v24];
      v19 = v26 == 0;
      if (!v26)
      {
        v47 = +[AFAnalytics sharedAnalytics];
        v57[1] = @"volume";
        v58[0] = categoryCopy;
        v57[0] = @"category";
        *&v27 = *volume;
        v46 = [NSNumber numberWithFloat:v27];
        v58[1] = v46;
        [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
        v49 = controllerCopy;
        v28 = routeCopy;
        v30 = v29 = modeCopy;
        [v47 logEventWithType:4602 context:v30];

        modeCopy = v29;
        routeCopy = v28;
        controllerCopy = v49;
      }

      goto LABEL_28;
    }

    v39 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      v19 = 0;
      goto LABEL_28;
    }

    *buf = 136315394;
    v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
    v62 = 2112;
    v63 = routeCopy;
    v43 = "%s Unable to find a pickable route matching audio route %@.";
    v44 = v39;
    v45 = 22;
LABEL_38:
    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v43, buf, v45);
    goto LABEL_27;
  }

  if (!nameCopy)
  {
    avscRouteDescription = [controllerCopy attributeForKey:AVSystemController_PickedRouteAttribute];
    if (avscRouteDescription)
    {
      goto LABEL_8;
    }

    v42 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
    v43 = "%s There's no picked route.";
    v44 = v42;
    v45 = 12;
    goto LABEL_38;
  }

  v48 = modeCopy;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v50 = controllerCopy;
  v52 = categoryCopy;
  v31 = [controllerCopy pickableRoutesForCategory:categoryCopy andMode:modeCopy];
  v32 = [v31 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v54;
LABEL_19:
    v35 = 0;
    while (1)
    {
      if (*v54 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v53 + 1) + 8 * v35);
      v37 = [v36 objectForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
      v38 = [nameCopy isEqualToString:v37];

      if (v38)
      {
        break;
      }

      if (v33 == ++v35)
      {
        v33 = [v31 countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v33)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    v21 = v36;

    if (!v21)
    {
      goto LABEL_31;
    }

    controllerCopy = v50;
    categoryCopy = v52;
    modeCopy = v48;
    goto LABEL_9;
  }

LABEL_25:

LABEL_31:
  v41 = AFSiriLogContextSpeech;
  modeCopy = v48;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
    v62 = 2112;
    v63 = 0;
    _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s Unable to find a pickable route matching audio route %@.", buf, 0x16u);
  }

  v19 = 0;
  controllerCopy = v50;
  categoryCopy = v52;
LABEL_28:

  return v19;
}

- (void)_fetchSystemVolumesUsingSystemController:(id)controller
{
  controllerCopy = controller;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADVolumeService _fetchSystemVolumesUsingSystemController:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = 0;
  v6 = [controllerCopy volumeCategoryForAudioCategory:@"Audio/Video"];
  if (v6)
  {
    if ([(ADVolumeService *)self _fetchSystemVolumeForCategory:v6 andMode:0 audioRoute:0 withName:0 usingSystemController:controllerCopy volume:&v12])
    {
      LODWORD(v7) = v12;
      [(ADVolumeService *)self _handleSystemVolumeChangeForCategory:v6 volume:@"Audio/Video" audioCategory:@"ClientFetch" reason:v7];
    }
  }

  else
  {
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[ADVolumeService _fetchSystemVolumesUsingSystemController:]";
      v15 = 2112;
      v16 = @"Audio/Video";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to get the volume category for audio category '%@'", buf, 0x16u);
    }
  }

  v12 = 0;
  v9 = [controllerCopy volumeCategoryForAudioCategory:@"VoiceCommand"];

  if (v9)
  {
    if ([(ADVolumeService *)self _fetchSystemVolumeForCategory:v9 andMode:@"SpeechRecognition" audioRoute:0 withName:0 usingSystemController:controllerCopy volume:&v12])
    {
      LODWORD(v10) = v12;
      [(ADVolumeService *)self _handleSystemVolumeChangeForCategory:v9 volume:@"VoiceCommand" audioCategory:@"ClientFetch" reason:v10];
    }
  }

  else
  {
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[ADVolumeService _fetchSystemVolumesUsingSystemController:]";
      v15 = 2112;
      v16 = @"VoiceCommand";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unable to get the volume category for audio category '%@'", buf, 0x16u);
    }
  }
}

- (void)_fetchSystemVolumes
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADVolumeService _fetchSystemVolumes]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = +[ADAVSystemControllerLifecycleManager sharedManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10035C634;
  v5[3] = &unk_10051D390;
  v5[4] = self;
  [v4 getAVSystemControllerWithTimeout:v5 completion:2.0];
}

- (void)_stopObservingSystemVolumes
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVSystemController_SystemVolumeDidChangeNotification object:0];
}

- (void)_startObservingSystemVolumes
{
  [(ADVolumeService *)self _stopObservingSystemVolumes];
  v3 = +[AVSystemController sharedAVSystemController];
  v6 = AVSystemController_SystemVolumeDidChangeNotification;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"systemVolumeChanged:" name:AVSystemController_SystemVolumeDidChangeNotification object:0];
}

- (void)_stopObservingSystemControllerLifecycle
{
  v3 = +[ADAVSystemControllerLifecycleManager sharedManager];
  [v3 removeObserver:self];
}

- (void)_startObservingSystemControllerLifecycle
{
  [(ADVolumeService *)self _stopObservingSystemControllerLifecycle];
  v3 = +[ADAVSystemControllerLifecycleManager sharedManager];
  [v3 addObserver:self];
}

- (void)adAVSystemControllerDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035CA4C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035CB28;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route withName:(id)name operationType:(int64_t)type completion:(id)completion
{
  routeCopy = route;
  nameCopy = name;
  completionCopy = completion;
  v15 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v27 = "[ADVolumeService setSiriOutputVolume:forAudioRoute:withName:operationType:completion:]";
    v28 = 2048;
    volumeCopy = volume;
    v30 = 2112;
    v31 = routeCopy;
    v32 = 2112;
    v33 = nameCopy;
    v34 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s volume = %f, audioRoute = %@, routeName = %@, operationType = %ld", buf, 0x34u);
  }

  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10035CD4C;
  v20[3] = &unk_10051D368;
  v20[4] = self;
  v21 = routeCopy;
  v22 = nameCopy;
  v23 = completionCopy;
  volumeCopy2 = volume;
  typeCopy2 = type;
  v17 = nameCopy;
  v18 = routeCopy;
  v19 = completionCopy;
  dispatch_async(queue, v20);
}

- (void)getSiriOutputVolumeForAudioRoute:(id)route withName:(id)name completion:(id)completion
{
  routeCopy = route;
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADVolumeService getSiriOutputVolumeForAudioRoute:withName:completion:]";
      v19 = 2112;
      v20 = routeCopy;
      v21 = 2112;
      v22 = nameCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s audioRoute = %@, routeName = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10035D374;
    v13[3] = &unk_10051E0D8;
    v13[4] = self;
    v14 = routeCopy;
    v15 = nameCopy;
    v16 = completionCopy;
    dispatch_async(queue, v13);
  }
}

- (void)getMusicOutputVolumeForAudioRoute:(id)route withName:(id)name completion:(id)completion
{
  routeCopy = route;
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADVolumeService getMusicOutputVolumeForAudioRoute:withName:completion:]";
      v19 = 2112;
      v20 = routeCopy;
      v21 = 2112;
      v22 = nameCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s audioRoute = %@, routeName = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10035D93C;
    v13[3] = &unk_10051E0D8;
    v13[4] = self;
    v14 = routeCopy;
    v15 = nameCopy;
    v16 = completionCopy;
    dispatch_async(queue, v13);
  }
}

- (void)setClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10035DE44;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

- (void)waitUntilSiriOutputVolumeUpdatesAfterTimestamp:(unint64_t)timestamp withTimeout:(double)timeout block:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if (self->_isSmartSiriVolumeAvailable)
    {
      v9 = [AFSafetyBlock alloc];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10035E0F4;
      v18[3] = &unk_10051D250;
      v18[4] = self;
      v19 = blockCopy;
      timestampCopy = timestamp;
      v10 = [v9 initWithBlock:v18];
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10035E118;
      block[3] = &unk_10051D278;
      v15 = v10;
      timestampCopy2 = timestamp;
      block[4] = self;
      timeoutCopy = timeout;
      v12 = v10;
      dispatch_async(queue, block);
    }

    else
    {
      v13 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[ADVolumeService waitUntilSiriOutputVolumeUpdatesAfterTimestamp:withTimeout:block:]";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Smart Siri Volume is not supported on this platform.", buf, 0xCu);
      }

      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

- (void)updateSiriOutputVolume:(BOOL)volume completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (!self->_isSmartSiriVolumeAvailable)
  {
    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[ADVolumeService updateSiriOutputVolume:completion:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Smart Siri Volume is not supported on this platform.", buf, 0xCu);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    v7[2](v7, 0);
    goto LABEL_6;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035E3EC;
  block[3] = &unk_10051D228;
  block[4] = self;
  volumeCopy = volume;
  v11 = completionCopy;
  dispatch_async(queue, block);

LABEL_6:
}

- (void)fetchSmartSiriVolumeForType:(unint64_t)type
{
  if (self->_isSmartSiriVolumeAvailable)
  {
    queue = self->_queue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10035E50C;
    v5[3] = &unk_10051D770;
    v5[4] = self;
    v5[5] = type;
    dispatch_async(queue, v5);
  }

  else
  {
    v4 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[ADVolumeService fetchSmartSiriVolumeForType:]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Smart Siri Volume is not supported on this platform.", buf, 0xCu);
    }
  }
}

- (ADVolumeService)initWithQueue:(id)queue instanceContext:(id)context speechController:(id)controller
{
  queueCopy = queue;
  contextCopy = context;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = ADVolumeService;
  v12 = [(ADVolumeService *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    if (contextCopy)
    {
      v14 = contextCopy;
    }

    else
    {
      v14 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v13->_instanceContext;
    v13->_instanceContext = v14;

    objc_storeStrong(&v13->_speechController, controller);
    v13->_isSmartSiriVolumeAvailable = sub_10001A2F8(v13->_instanceContext);
    queue = v13->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035E658;
    block[3] = &unk_10051DFE8;
    v19 = v13;
    dispatch_async(queue, block);
  }

  return v13;
}

@end