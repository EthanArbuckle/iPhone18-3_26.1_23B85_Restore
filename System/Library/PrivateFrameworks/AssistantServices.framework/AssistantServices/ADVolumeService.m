@interface ADVolumeService
- (ADVolumeService)initWithQueue:(id)a3 instanceContext:(id)a4 speechController:(id)a5;
- (BOOL)_fetchSystemVolumeForCategory:(id)a3 andMode:(id)a4 audioRoute:(id)a5 withName:(id)a6 usingSystemController:(id)a7 volume:(float *)a8;
- (BOOL)_updateSystemVolumeForCategory:(id)a3 andMode:(id)a4 audioRoute:(id)a5 withName:(id)a6 usingSystemController:(id)a7 volume:(float)a8 operationType:(int64_t)a9;
- (float)_mediaPlaybackVolume;
- (void)_fetchSmartSiriVolumeForType:(unint64_t)a3;
- (void)_fetchSystemVolumes;
- (void)_fetchSystemVolumesUsingSystemController:(id)a3;
- (void)_handleSystemVolumeChangeForCategory:(id)a3 volume:(float)a4 audioCategory:(id)a5 reason:(id)a6;
- (void)_setNeedsUpdateSiriVolume;
- (void)_startObservingSystemControllerLifecycle;
- (void)_startObservingSystemVolumes;
- (void)_stopObservingSystemControllerLifecycle;
- (void)_stopObservingSystemVolumes;
- (void)_updateSiriVolume:(BOOL)a3 completion:(id)a4;
- (void)_updateSiriVolumeIfNeeded;
- (void)adAVSystemControllerDidChange:(id)a3;
- (void)fetchSmartSiriVolumeForType:(unint64_t)a3;
- (void)getMusicOutputVolumeForAudioRoute:(id)a3 withName:(id)a4 completion:(id)a5;
- (void)getSiriOutputVolumeForAudioRoute:(id)a3 withName:(id)a4 completion:(id)a5;
- (void)invalidate;
- (void)setClientConfiguration:(id)a3;
- (void)setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 withName:(id)a5 operationType:(int64_t)a6 completion:(id)a7;
- (void)systemVolumeChanged:(id)a3;
- (void)updateSiriOutputVolume:(BOOL)a3 completion:(id)a4;
- (void)waitUntilSiriOutputVolumeUpdatesAfterTimestamp:(unint64_t)a3 withTimeout:(double)a4 block:(id)a5;
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

- (void)_updateSiriVolume:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[ADVolumeService _updateSiriVolume:completion:]";
    v43 = 1024;
    LODWORD(v44) = v4;
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
    v11 = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowBeginDate];
    v12 = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowEndDate];
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

  if (!v4)
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

        if (v6)
        {
          v6[2](v6, 0);
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
  v35 = v6;
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

- (void)_fetchSmartSiriVolumeForType:(unint64_t)a3
{
  v5 = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowBeginDate];
  v6 = [(AFClientConfiguration *)self->_clientConfiguration deviceSetupFlowEndDate];
  IsActive = AFDeviceSetupIsActive();

  if (IsActive)
  {
    a3 = 3;
  }

  [(CSSpeechController *)self->_speechController getVolumeForTTSType:a3];
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
      v18 = a3;
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

- (void)_handleSystemVolumeChangeForCategory:(id)a3 volume:(float)a4 audioCategory:(id)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v18 = 136316162;
    v19 = "[ADVolumeService _handleSystemVolumeChangeForCategory:volume:audioCategory:reason:]";
    v20 = 2112;
    v21 = v10;
    v22 = 2048;
    v23 = a4;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s category = %@, volume = %f, audioCategory = %@, reason = %@", &v18, 0x34u);
  }

  v14 = [(NSMutableDictionary *)self->_volumesByCategory objectForKey:v10];
  *&v15 = a4;
  v16 = [NSNumber numberWithFloat:v15];
  if ([v14 isEqual:v16])
  {
    AFIsHorseman();
  }

  else
  {
    [(NSMutableDictionary *)self->_volumesByCategory setObject:v16 forKey:v10];
    if (AFIsHorseman() && [v11 isEqualToString:@"Audio/Video"] && self->_deviceSetupFlowSiriVolume > 0.0)
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v18 = 136315650;
        v19 = "[ADVolumeService _handleSystemVolumeChangeForCategory:volume:audioCategory:reason:]";
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = *&v12;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Resetting device setup volume due to %@ audio category volume change for %@.", &v18, 0x20u);
      }

      self->_deviceSetupFlowSiriVolume = 0.0;
    }
  }
}

- (void)systemVolumeChanged:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[ADVolumeService systemVolumeChanged:]";
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s notification = %@", buf, 0x16u);
  }

  v6 = mach_absolute_time();
  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:AVSystemController_AudioCategoryNotificationParameter];
  v9 = [v7 objectForKey:AVSystemController_AudioVolumeChangeReasonNotificationParameter];
  v10 = v9;
  v11 = @"Notification";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [v7 objectForKey:AVSystemController_AudioVolumeNotificationParameter];
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
    v21 = v4;
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
      v27 = v4;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Ignored because no audio category is specified in the notification %@.", buf, 0x16u);
    }
  }
}

- (BOOL)_updateSystemVolumeForCategory:(id)a3 andMode:(id)a4 audioRoute:(id)a5 withName:(id)a6 usingSystemController:(id)a7 volume:(float)a8 operationType:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316674;
    v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
    v67 = 2112;
    v68 = v15;
    v69 = 2112;
    v70 = v16;
    v71 = 2112;
    v72 = v17;
    v73 = 2112;
    v74 = v18;
    v75 = 2048;
    v76 = a8;
    v77 = 2048;
    v78 = a9;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s category = %@, mode = %@, audioRoute = %@, routeName = %@, volume = %f, operationType = %ld", buf, 0x48u);
  }

  v21 = 0;
  if (v15 && v19)
  {
    if (v17)
    {
      v22 = [v17 avscRouteDescription];
      if (v22)
      {
LABEL_7:
        v23 = v22;
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
      v68 = v17;
      v50 = "%s Unable to find a pickable route matching audio route %@.";
      v51 = v39;
      v52 = 22;
      goto LABEL_47;
    }

    if (!v18)
    {
      v22 = [v19 attributeForKey:AVSystemController_PickedRouteAttribute];
      if (v22)
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

    v53 = v16;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v54 = v19;
    v57 = v15;
    v31 = [v19 pickableRoutesForCategory:v15 andMode:v16];
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
        v38 = [v18 isEqualToString:v37];

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

      v19 = v54;
      v15 = v57;
      v16 = v53;
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

      if (a9 == 1)
      {
        *&v28 = a8;
        if ([v19 setVolume:v15 category:v16 mode:v25 route:v26 deviceIdentifier:v56 routeSubtype:v28 rampUpDuration:0.0 rampDownDuration:0.0])
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (a9 == 3)
        {
          v29 = v19;
          v30 = 0;
        }

        else
        {
          if (a9 != 2)
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

          v29 = v19;
          v30 = 1;
        }

        if ([v29 changeVolumeForRoute:v30 forCategory:v15 mode:v16 route:v25 deviceIdentifier:v26 andRouteSubtype:v56])
        {
LABEL_40:
          v21 = 0;
          goto LABEL_41;
        }
      }

      +[AFAnalytics sharedAnalytics];
      v55 = v19;
      v41 = v17;
      v43 = v42 = v16;
      v62[0] = @"category";
      v62[1] = @"volume";
      v63[0] = v15;
      *&v44 = a8;
      v45 = [NSNumber numberWithFloat:v44];
      v63[1] = v45;
      v46 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
      [v43 logEventWithType:4603 context:v46];

      v16 = v42;
      v17 = v41;
      v19 = v55;
      v21 = 1;
LABEL_41:

      goto LABEL_42;
    }

LABEL_25:

LABEL_30:
    v40 = AFSiriLogContextSpeech;
    v16 = v53;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[ADVolumeService _updateSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:operationType:]";
      v67 = 2112;
      v68 = 0;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Unable to find a pickable route matching audio route %@.", buf, 0x16u);
    }

    v21 = 0;
    v19 = v54;
    v15 = v57;
  }

LABEL_42:

  return v21;
}

- (BOOL)_fetchSystemVolumeForCategory:(id)a3 andMode:(id)a4 audioRoute:(id)a5 withName:(id)a6 usingSystemController:(id)a7 volume:(float *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
    v62 = 2112;
    v63 = v13;
    v64 = 2112;
    v65 = v14;
    v66 = 2112;
    v67 = v15;
    v68 = 2112;
    v69 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s category = %@, mode = %@, audioRoute = %@, routeName = %@", buf, 0x34u);
  }

  if (!a8)
  {
    goto LABEL_27;
  }

  v19 = 0;
  *a8 = 0.0;
  if (!v13 || !v17)
  {
    goto LABEL_28;
  }

  if (v15)
  {
    v20 = [v15 avscRouteDescription];
    if (v20)
    {
LABEL_8:
      v21 = v20;
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

      v26 = [v17 getVolume:a8 category:v13 mode:v14 route:v51 deviceIdentifier:v23 routeSubtype:v24];
      v19 = v26 == 0;
      if (!v26)
      {
        v47 = +[AFAnalytics sharedAnalytics];
        v57[1] = @"volume";
        v58[0] = v13;
        v57[0] = @"category";
        *&v27 = *a8;
        v46 = [NSNumber numberWithFloat:v27];
        v58[1] = v46;
        [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
        v49 = v17;
        v28 = v15;
        v30 = v29 = v14;
        [v47 logEventWithType:4602 context:v30];

        v14 = v29;
        v15 = v28;
        v17 = v49;
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
    v63 = v15;
    v43 = "%s Unable to find a pickable route matching audio route %@.";
    v44 = v39;
    v45 = 22;
LABEL_38:
    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v43, buf, v45);
    goto LABEL_27;
  }

  if (!v16)
  {
    v20 = [v17 attributeForKey:AVSystemController_PickedRouteAttribute];
    if (v20)
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

  v48 = v14;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v50 = v17;
  v52 = v13;
  v31 = [v17 pickableRoutesForCategory:v13 andMode:v14];
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
      v38 = [v16 isEqualToString:v37];

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

    v17 = v50;
    v13 = v52;
    v14 = v48;
    goto LABEL_9;
  }

LABEL_25:

LABEL_31:
  v41 = AFSiriLogContextSpeech;
  v14 = v48;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v61 = "[ADVolumeService _fetchSystemVolumeForCategory:andMode:audioRoute:withName:usingSystemController:volume:]";
    v62 = 2112;
    v63 = 0;
    _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s Unable to find a pickable route matching audio route %@.", buf, 0x16u);
  }

  v19 = 0;
  v17 = v50;
  v13 = v52;
LABEL_28:

  return v19;
}

- (void)_fetchSystemVolumesUsingSystemController:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADVolumeService _fetchSystemVolumesUsingSystemController:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = 0;
  v6 = [v4 volumeCategoryForAudioCategory:@"Audio/Video"];
  if (v6)
  {
    if ([(ADVolumeService *)self _fetchSystemVolumeForCategory:v6 andMode:0 audioRoute:0 withName:0 usingSystemController:v4 volume:&v12])
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
  v9 = [v4 volumeCategoryForAudioCategory:@"VoiceCommand"];

  if (v9)
  {
    if ([(ADVolumeService *)self _fetchSystemVolumeForCategory:v9 andMode:@"SpeechRecognition" audioRoute:0 withName:0 usingSystemController:v4 volume:&v12])
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

- (void)adAVSystemControllerDidChange:(id)a3
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

- (void)setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 withName:(id)a5 operationType:(int64_t)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v27 = "[ADVolumeService setSiriOutputVolume:forAudioRoute:withName:operationType:completion:]";
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2048;
    v35 = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s volume = %f, audioRoute = %@, routeName = %@, operationType = %ld", buf, 0x34u);
  }

  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10035CD4C;
  v20[3] = &unk_10051D368;
  v20[4] = self;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v25 = a3;
  v24 = a6;
  v17 = v13;
  v18 = v12;
  v19 = v14;
  dispatch_async(queue, v20);
}

- (void)getSiriOutputVolumeForAudioRoute:(id)a3 withName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADVolumeService getSiriOutputVolumeForAudioRoute:withName:completion:]";
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s audioRoute = %@, routeName = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10035D374;
    v13[3] = &unk_10051E0D8;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v13);
  }
}

- (void)getMusicOutputVolumeForAudioRoute:(id)a3 withName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADVolumeService getMusicOutputVolumeForAudioRoute:withName:completion:]";
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s audioRoute = %@, routeName = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10035D93C;
    v13[3] = &unk_10051E0D8;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(queue, v13);
  }
}

- (void)setClientConfiguration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10035DE44;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)waitUntilSiriOutputVolumeUpdatesAfterTimestamp:(unint64_t)a3 withTimeout:(double)a4 block:(id)a5
{
  v8 = a5;
  if (v8)
  {
    if (self->_isSmartSiriVolumeAvailable)
    {
      v9 = [AFSafetyBlock alloc];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10035E0F4;
      v18[3] = &unk_10051D250;
      v18[4] = self;
      v19 = v8;
      v20 = a3;
      v10 = [v9 initWithBlock:v18];
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10035E118;
      block[3] = &unk_10051D278;
      v15 = v10;
      v16 = a3;
      block[4] = self;
      v17 = a4;
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

      (*(v8 + 2))(v8, 0);
    }
  }
}

- (void)updateSiriOutputVolume:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
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
  v12 = a3;
  v11 = v6;
  dispatch_async(queue, block);

LABEL_6:
}

- (void)fetchSmartSiriVolumeForType:(unint64_t)a3
{
  if (self->_isSmartSiriVolumeAvailable)
  {
    queue = self->_queue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10035E50C;
    v5[3] = &unk_10051D770;
    v5[4] = self;
    v5[5] = a3;
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

- (ADVolumeService)initWithQueue:(id)a3 instanceContext:(id)a4 speechController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = ADVolumeService;
  v12 = [(ADVolumeService *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v13->_instanceContext;
    v13->_instanceContext = v14;

    objc_storeStrong(&v13->_speechController, a5);
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