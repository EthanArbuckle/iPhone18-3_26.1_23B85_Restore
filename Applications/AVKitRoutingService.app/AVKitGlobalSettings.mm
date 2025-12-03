@interface AVKitGlobalSettings
+ (BOOL)_hapticsIsEnabled;
+ (BOOL)_isDisplayingCaptionsOnSkipBack;
+ (BOOL)_overVideoScrubbingGestureEnabled;
+ (id)_mostRecentAudioLanguageCode;
+ (id)_mostRecentLegibleLanguageCode;
+ (id)shared;
+ (unint64_t)_subtitleAutomaticallyEnabledState;
- (AVKitGlobalSettings)init;
- (BOOL)extendedVisualAnalysisEnabled;
- (BOOL)isIntegratedTimelineEnabled;
- (BOOL)subtitlesOnMuteEnabled;
- (BOOL)timelineDiagnosticsEnabled;
- (BOOL)visualAnalysisEnabled;
- (BOOL)visualAnalysisSupported;
- (void)setDisplayingCaptionsOnSkipBack:(BOOL)back;
- (void)setMostRecentAudioLanguageCode:(id)code;
- (void)setMostRecentLegibleLanguageCode:(id)code;
- (void)setPlayerGeneration:(int64_t)generation;
- (void)setSharedSetting:(id)setting toString:(id)string;
- (void)setSubtitleAutomaticallyEnabledState:(unint64_t)state;
@end

@implementation AVKitGlobalSettings

- (void)setSharedSetting:(id)setting toString:(id)string
{
  settingCopy = setting;
  stringCopy = string;
  v7 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.avkit.SharedPreferences"];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AVSharedPreferencesProtocol];
  [v7 setRemoteObjectInterface:v8];

  [v7 resume];
  remoteObjectProxy = [v7 remoteObjectProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005B19C;
  v13[3] = &unk_10007BDC0;
  v14 = settingCopy;
  v15 = stringCopy;
  v16 = v7;
  v10 = v7;
  v11 = stringCopy;
  v12 = settingCopy;
  [remoteObjectProxy setString:v11 forKey:v12 completion:v13];
}

- (BOOL)subtitlesOnMuteEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _os_feature_enabled_impl();
  if ((v2 & 1) != 0 || v3)
  {
    LOBYTE(v3) = _AXSAutomaticSubtitlesShowWhenMuted() != 0;
  }

  return v3;
}

- (BOOL)visualAnalysisEnabled
{
  visualAnalysisEnabled = self->_visualAnalysisEnabled;
  if (visualAnalysisEnabled == -1)
  {
    visualAnalysisEnabled = [(AVKitGlobalSettings *)self visualAnalysisSupported];
    self->_visualAnalysisEnabled = visualAnalysisEnabled;
  }

  return visualAnalysisEnabled == 1;
}

- (BOOL)visualAnalysisSupported
{
  visualAnalysisSupported = self->_visualAnalysisSupported;
  if (visualAnalysisSupported == -1)
  {
    deviceSupportsVisualAnalysis = self->_deviceSupportsVisualAnalysis;
    if (deviceSupportsVisualAnalysis == -1)
    {
      deviceSupportsVisualAnalysis = [sub_10005B370() deviceSupportsImageAnalysis];
      self->_deviceSupportsVisualAnalysis = deviceSupportsVisualAnalysis;
    }

    if (deviceSupportsVisualAnalysis == 1)
    {
      visualAnalysisSupported = dyld_program_sdk_at_least();
      self->_visualAnalysisSupported = visualAnalysisSupported;
    }

    else
    {
      visualAnalysisSupported = self->_visualAnalysisSupported;
    }
  }

  return visualAnalysisSupported == 1;
}

- (BOOL)extendedVisualAnalysisEnabled
{
  extendedVisualAnalysisEnabled = self->_extendedVisualAnalysisEnabled;
  if (extendedVisualAnalysisEnabled == -1)
  {
    deviceSupportsVisualAnalysis = self->_deviceSupportsVisualAnalysis;
    if (deviceSupportsVisualAnalysis == -1)
    {
      deviceSupportsVisualAnalysis = [sub_10005B370() deviceSupportsImageAnalysis];
      self->_deviceSupportsVisualAnalysis = deviceSupportsVisualAnalysis;
    }

    if (deviceSupportsVisualAnalysis == 1)
    {
      extendedVisualAnalysisEnabled = dyld_program_sdk_at_least();
      self->_extendedVisualAnalysisEnabled = extendedVisualAnalysisEnabled;
    }

    else
    {
      extendedVisualAnalysisEnabled = self->_extendedVisualAnalysisEnabled;
    }
  }

  return extendedVisualAnalysisEnabled == 1;
}

- (BOOL)timelineDiagnosticsEnabled
{
  _platformSupportsIntegratedTimeline = [(AVKitGlobalSettings *)self _platformSupportsIntegratedTimeline];
  if (_platformSupportsIntegratedTimeline)
  {
    v3 = sub_10005D9F8();
    v4 = [v3 BOOLForKey:@"TimelineDiagnostics"];

    LOBYTE(_platformSupportsIntegratedTimeline) = v4;
  }

  return _platformSupportsIntegratedTimeline;
}

- (BOOL)isIntegratedTimelineEnabled
{
  _platformSupportsIntegratedTimeline = [(AVKitGlobalSettings *)self _platformSupportsIntegratedTimeline];
  if (_platformSupportsIntegratedTimeline)
  {
    if (_os_feature_enabled_impl())
    {
      LOBYTE(_platformSupportsIntegratedTimeline) = 1;
    }

    else
    {
      v3 = sub_10005B804();
      LOBYTE(_platformSupportsIntegratedTimeline) = _os_feature_enabled_impl() & v3;
    }
  }

  return _platformSupportsIntegratedTimeline;
}

- (void)setDisplayingCaptionsOnSkipBack:(BOOL)back
{
  if (self->_displayingCaptionsOnSkipBack != back)
  {
    backCopy = back;
    v5 = sub_10005AA5C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v9 = 136315650;
      *&v9[4] = "[AVKitGlobalSettings setDisplayingCaptionsOnSkipBack:]";
      *&v9[14] = "displayingCaptionsOnSkipBack";
      *&v9[12] = 2080;
      if (backCopy)
      {
        v6 = "YES";
      }

      *&v9[22] = 2080;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v9, 0x20u);
    }

    self->_displayingCaptionsOnSkipBack = backCopy;
    if (+[AVKitGlobalSettings _isDisplayingCaptionsOnSkipBack]!= backCopy)
    {
      v7 = sub_10005AA5C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 136315138;
        *&v9[4] = "[AVKitGlobalSettings setDisplayingCaptionsOnSkipBack:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting", v9, 0xCu);
      }

      if (backCopy)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      [(AVKitGlobalSettings *)self setSharedSetting:@"isDisplayingCaptionsOnSkipBack" toString:v8, *v9, *&v9[16]];
    }
  }
}

- (void)setSubtitleAutomaticallyEnabledState:(unint64_t)state
{
  if (self->_subtitleAutomaticallyEnabledState != state)
  {
    v5 = sub_10005AA5C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "YES";
      *buf = 136315650;
      v10 = "[AVKitGlobalSettings setSubtitleAutomaticallyEnabledState:]";
      stateCopy = "subtitleAutomaticallyEnabledState";
      v11 = 2080;
      if (!state)
      {
        v6 = "NO";
      }

      v13 = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
    }

    self->_subtitleAutomaticallyEnabledState = state;
    if (+[AVKitGlobalSettings _subtitleAutomaticallyEnabledState]!= state)
    {
      v7 = sub_10005AA5C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[AVKitGlobalSettings setSubtitleAutomaticallyEnabledState:]";
        v11 = 2048;
        stateCopy = state;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting: %ld ", buf, 0x16u);
      }

      state = [NSString stringWithFormat:@"%ld", state];
      [(AVKitGlobalSettings *)self setSharedSetting:@"subtitleAutomaticallyEnabledState" toString:state];
    }
  }
}

- (void)setMostRecentAudioLanguageCode:(id)code
{
  codeCopy = code;
  mostRecentAudioLanguageCode = self->_mostRecentAudioLanguageCode;
  if (mostRecentAudioLanguageCode != codeCopy && (!codeCopy || ![(NSString *)mostRecentAudioLanguageCode isEqualToString:codeCopy]))
  {
    v6 = sub_10005AA5C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[AVKitGlobalSettings setMostRecentAudioLanguageCode:]";
      v14 = 2114;
      v15 = codeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s '%{public}@", &v12, 0x16u);
    }

    v7 = [(NSString *)codeCopy copy];
    v8 = self->_mostRecentAudioLanguageCode;
    self->_mostRecentAudioLanguageCode = v7;

    v9 = +[AVKitGlobalSettings _mostRecentAudioLanguageCode];
    v10 = v9;
    if (v9 != codeCopy && (!codeCopy || !v9 || ![(NSString *)v9 isEqualToString:codeCopy]))
    {
      v11 = sub_10005AA5C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[AVKitGlobalSettings setMostRecentAudioLanguageCode:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting", &v12, 0xCu);
      }

      [(AVKitGlobalSettings *)self setSharedSetting:@"RecentAudioLanguageCode" toString:codeCopy];
    }
  }
}

- (void)setMostRecentLegibleLanguageCode:(id)code
{
  codeCopy = code;
  mostRecentLegibleLanguageCode = self->_mostRecentLegibleLanguageCode;
  if (mostRecentLegibleLanguageCode != codeCopy && (!codeCopy || ![(NSString *)mostRecentLegibleLanguageCode isEqualToString:codeCopy]))
  {
    v6 = sub_10005AA5C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[AVKitGlobalSettings setMostRecentLegibleLanguageCode:]";
      v14 = 2114;
      v15 = codeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s '%{public}@", &v12, 0x16u);
    }

    v7 = [(NSString *)codeCopy copy];
    v8 = self->_mostRecentLegibleLanguageCode;
    self->_mostRecentLegibleLanguageCode = v7;

    v9 = +[AVKitGlobalSettings _mostRecentLegibleLanguageCode];
    v10 = v9;
    if (v9 != codeCopy && (!codeCopy || !v9 || ![(NSString *)v9 isEqualToString:codeCopy]))
    {
      v11 = sub_10005AA5C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[AVKitGlobalSettings setMostRecentLegibleLanguageCode:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s updating the shared setting", &v12, 0xCu);
      }

      [(AVKitGlobalSettings *)self setSharedSetting:@"RecentLegibleLanguageCode" toString:codeCopy];
    }
  }
}

- (void)setPlayerGeneration:(int64_t)generation
{
  if (self)
  {
    generationCopy = generation;
    if (generation == 2)
    {
      if ([(AVKitGlobalSettings *)self thirdGenerationControlsEnabled])
      {
        generationCopy = 2;
      }

      else
      {
        generationCopy = 1;
      }
    }
  }

  else
  {
    generationCopy = 0;
  }

  if (self->_playerGeneration != generationCopy)
  {
    v5 = sub_10005AA5C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:generationCopy];
      v7 = 136315394;
      v8 = "[AVKitGlobalSettings setPlayerGeneration:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
    }

    self->_playerGeneration = generationCopy;
  }
}

- (AVKitGlobalSettings)init
{
  v75.receiver = self;
  v75.super_class = AVKitGlobalSettings;
  v2 = [(AVKitGlobalSettings *)&v75 init];
  if (!v2)
  {
    return v2;
  }

  objc_opt_self();
  objc_opt_self();
  v3 = sub_10005D8C8();
  v4 = [v3 isEqualToString:@"com.apple.Home"];

  if (v4)
  {
    v5 = 0;
  }

  else if (sub_10005CAA4())
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_10005D9F8();
  v7 = [v6 integerForKey:@"playerGeneration"];
  v8 = v7;
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      v5 = 2;
      goto LABEL_18;
    }

    if (v7 == 2)
    {
      v5 = 1;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v5 = 0;
      goto LABEL_18;
    }

LABEL_14:
    v9 = sub_10005AA5C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error: Invalid player generation %ld", location, 0xCu);
    }
  }

LABEL_18:

  v2->_playerGeneration = v5;
  objc_opt_self();
  objc_opt_self();
  _CFMZEnabled();
  v10 = dyld_program_sdk_at_least();
  v11 = dyld_program_sdk_at_least();
  if (!(v11 & 1 | ((v10 & 1) == 0)))
  {
    v12 = sub_10005D8C8();
    lowercaseString = [v12 lowercaseString];

    v11 = [lowercaseString hasPrefix:@"com.apple."];
  }

  v2->_playbackSpeedControlEnabled = v11;
  v2->_deviceSupportsVisualAnalysis = -1;
  v2->_visualAnalysisSupported = -1;
  v2->_visualAnalysisEnabled = -1;
  objc_opt_self();
  v14 = sub_10005D8C8();
  if ([v14 isEqualToString:@"com.apple.quicklook.UIExtension"])
  {
    v15 = 1;
  }

  else
  {
    v15 = [v14 isEqualToString:@"com.apple.quicklook.extension.previewUI"];
  }

  v2->_isQuickLook = v15;
  v2->_isTVApp = sub_10005B804();
  objc_opt_self();
  v16 = sub_10005D8C8();
  v17 = [v16 isEqualToString:@"com.apple.applemediaroom"];

  v2->_isArtemisApp = v17;
  objc_opt_self();
  v18 = sub_10005D9F8();
  v19 = [v18 valueForKey:@"fluidSliderEnabled"];

  if (v19)
  {
    v20 = [v18 BOOLForKey:@"fluidSliderEnabled"];
  }

  else
  {
    v20 = 1;
  }

  v2->_fluidSliderEnabled = v20;
  v2->_showsTVControls = 0;
  objc_opt_self();
  v2->_experienceControllerEnabled = _os_feature_enabled_impl();
  v2->_overVideoScrubbingGestureEnabled = +[AVKitGlobalSettings _overVideoScrubbingGestureEnabled];
  v2->_extendedVisualAnalysisEnabled = -1;
  objc_opt_self();
  v21 = sub_10005D9F8();
  v22 = [v21 valueForKey:@"subjectLiftGestureEnabled"];
  v23 = v22 == 0;

  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = [v21 BOOLForKey:@"subjectLiftGestureEnabled"];
  }

  v2->_subjectLiftGestureEnabled = v24;
  objc_opt_self();
  v25 = sub_10005D8C8();
  v26 = ([v25 isEqualToString:@"com.apple.Fitness"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"com.apple.AVKitTester");

  v2->_attributedContentTitlesSupported = v26;
  objc_opt_self();
  v27 = sub_10005D9F8();
  v28 = [v27 valueForKey:@"searchBannerEnabled"];

  if (v28)
  {
    LOBYTE(v28) = [v27 BOOLForKey:@"searchBannerEnabled"];
  }

  v2->_searchBannerEnabled = v28;
  objc_opt_self();
  v2->_isAVKitMacPlayer = 0;
  v2->_isAVKitTester = sub_10005CA1C();
  objc_opt_self();
  v2->_isXCTester = 0;
  objc_opt_self();
  v29 = sub_10005D8C8();
  if ([v29 isEqualToString:@"com.apple.Photos"] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"com.appleinternal.PhotosPlayground-macOS"))
  {
    v30 = 1;
  }

  else
  {
    v30 = [v29 isEqualToString:@"com.apple.mobileslideshow"];
  }

  v2->_isPhotosApp = v30;
  objc_opt_self();
  v31 = sub_10005D8C8();
  v32 = [v31 isEqualToString:@"com.apple.Fitness"];

  v2->_isFitnessApp = v32;
  v2->_isQuickTimePlayerX = sub_10005CA60();
  objc_opt_self();
  v33 = sub_10005D8C8();
  v34 = [v33 isEqualToString:@"com.apple.Spotlight"];

  v2->_isSpotlight = v34;
  objc_opt_self();
  v2->_backgroundEffectEnabled = 0;
  objc_opt_self();
  v2->_animatedSkipButtonsEnabled = _os_feature_enabled_impl();
  objc_opt_self();
  v2->_prefersTintColorForPlaybackControlsView = _os_feature_enabled_impl();
  objc_opt_self();
  if (_os_feature_enabled_impl() && (sub_10005B804() & 1) != 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_10005CA1C();
  }

  v2->_playerTipsEnabled = v35;
  objc_opt_self();
  v2->_constrainedHDREnabled = _os_feature_enabled_impl();
  objc_opt_self();
  v36 = +[UIScreen avkit_mainScreen];
  traitCollection = [v36 traitCollection];
  v38 = [traitCollection userInterfaceIdiom] == 0;

  if (v38)
  {
    v39 = _os_feature_enabled_impl();
  }

  else
  {
    v39 = 0;
  }

  v2->_unconstrainedHDRForFullscreenEnabled = v39;
  v2->_thirdGenerationControlsEnabled = sub_10005CAA4();
  objc_opt_self();
  v2->_inputPickerGainControlEnabled = _os_feature_enabled_impl();
  objc_opt_self();
  v2->_cameraControlWithAirPodsEnabled = _os_feature_enabled_impl();
  v40 = v2->_isTVApp || v2->_isAVKitTester;
  v2->_supportsContentTabs = v40 & 1;
  objc_opt_self();
  v2->_vibrancyEnabled = 1;
  objc_opt_self();
  v41 = sub_10005D9F8();
  v42 = [v41 BOOLForKey:@"gradientDimmingLayerEnabled"];

  v2->_gradientDimmingLayerEnabled = v42;
  objc_opt_self();
  v2->_shouldUseQTPXSpecificZooming = sub_10005CA60();
  objc_opt_self();
  v43 = sub_10005D9F8();
  [v43 floatForKey:@"extendedDynamicRangeGain"];
  v45 = v44;

  v2->_extendedDynamicRangeGain = v45;
  objc_opt_self();
  v46 = sub_10005D9F8();
  v47 = [v46 BOOLForKey:@"cornerPanGestureForContentTabsEnabled"];

  v2->_cornerPanGestureForContentTabsEnabled = v47;
  objc_opt_self();
  v48 = sub_10005D9F8();
  v49 = [v48 objectForKey:@"visualAnalysisEnabled"];
  if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    v2->_visualAnalysisEnabled = [v50 BOOLValue];
  }

  v51 = +[AVKitGlobalSettings _mostRecentAudioLanguageCode];
  mostRecentAudioLanguageCode = v2->_mostRecentAudioLanguageCode;
  v2->_mostRecentAudioLanguageCode = v51;

  v53 = sub_10005CB00(v2, @"RecentAudioLanguageCode", @"mostRecentAudioLanguageCode");
  mostRecentAudioLanguageCodeObservation = v2->_mostRecentAudioLanguageCodeObservation;
  v2->_mostRecentAudioLanguageCodeObservation = v53;

  v55 = +[AVKitGlobalSettings _mostRecentLegibleLanguageCode];
  mostRecentLegibleLanguageCode = v2->_mostRecentLegibleLanguageCode;
  v2->_mostRecentLegibleLanguageCode = v55;

  v57 = sub_10005CB00(v2, @"RecentLegibleLanguageCode", @"mostRecentLegibleLanguageCode");
  mostRecentLegibleLanguageCodeObservation = v2->_mostRecentLegibleLanguageCodeObservation;
  v2->_mostRecentLegibleLanguageCodeObservation = v57;

  v2->_displayingCaptionsOnSkipBack = +[AVKitGlobalSettings _isDisplayingCaptionsOnSkipBack];
  objc_initWeak(location, v2);
  v59 = sub_10005D9F8();
  v60 = +[NSObservableKeyPath keyPathWithRootObject:path:](NSObservableKeyPath, "keyPathWithRootObject:path:", v59, [@"isDisplayingCaptionsOnSkipBack" UTF8String]);
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10005CC50;
  v73[3] = &unk_10007BD58;
  objc_copyWeak(&v74, location);
  v61 = [v60 addObserverBlock:v73];
  displayingCaptionsOnSkipBackObservation = v2->_displayingCaptionsOnSkipBackObservation;
  v2->_displayingCaptionsOnSkipBackObservation = v61;

  v2->_enhanceDialogueEnabled = +[AVKitGlobalSettings _enhanceDialogueEnabled];
  v2->_customMediaSelectionSchemeEnabled = +[AVKitGlobalSettings _customMediaSelectionSchemeEnabled];
  v2->_subtitleAutomaticallyEnabledState = +[AVKitGlobalSettings _subtitleAutomaticallyEnabledState];
  v63 = sub_10005D9F8();
  v64 = +[NSObservableKeyPath keyPathWithRootObject:path:](NSObservableKeyPath, "keyPathWithRootObject:path:", v63, [@"subtitleAutomaticallyEnabledState" UTF8String]);
  v68 = _NSConcreteStackBlock;
  v69 = 3221225472;
  v70 = sub_10005CCE0;
  v71 = &unk_10007BD58;
  objc_copyWeak(&v72, location);
  v65 = [v64 addObserverBlock:&v68];
  subtitleEnabledFromAutoStateCodeObservation = v2->_subtitleEnabledFromAutoStateCodeObservation;
  v2->_subtitleEnabledFromAutoStateCodeObservation = v65;

  v2->_hapticsEnabled = [AVKitGlobalSettings _hapticsIsEnabled:v68];
  objc_destroyWeak(&v72);
  objc_destroyWeak(&v74);
  objc_destroyWeak(location);

  return v2;
}

+ (BOOL)_hapticsIsEnabled
{
  v2 = MGGetBoolAnswer();
  v3 = _os_feature_enabled_impl();
  v4 = +[UIScreen avkit_mainScreen];
  traitCollection = [v4 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!v3)
  {
    return 0;
  }

  if (userInterfaceIdiom)
  {
    return 0;
  }

  return v2;
}

+ (unint64_t)_subtitleAutomaticallyEnabledState
{
  v2 = sub_10005D9F8();
  v3 = [v2 integerForKey:@"subtitleAutomaticallyEnabledState"];

  return v3;
}

+ (BOOL)_isDisplayingCaptionsOnSkipBack
{
  v2 = sub_10005D9F8();
  v3 = [v2 BOOLForKey:@"isDisplayingCaptionsOnSkipBack"];

  return v3;
}

+ (id)_mostRecentAudioLanguageCode
{
  v2 = sub_10005D9F8();
  v3 = [v2 stringForKey:@"RecentAudioLanguageCode"];

  return v3;
}

+ (id)_mostRecentLegibleLanguageCode
{
  v2 = sub_10005D9F8();
  v3 = [v2 stringForKey:@"RecentLegibleLanguageCode"];

  return v3;
}

+ (BOOL)_overVideoScrubbingGestureEnabled
{
  v2 = sub_10005D9F8();
  v3 = [v2 valueForKey:@"overVideoScrubbingGestureEnabled"];

  if (v3)
  {
    LOBYTE(v3) = [v2 BOOLForKey:@"overVideoScrubbingGestureEnabled"];
  }

  return v3;
}

+ (id)shared
{
  if (qword_100086710 != -1)
  {
    dispatch_once(&qword_100086710, &stru_10007BD78);
  }

  v3 = qword_100086708;

  return v3;
}

@end