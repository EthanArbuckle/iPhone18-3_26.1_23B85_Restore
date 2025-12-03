@interface GAXAccessibilityFeatureManager
- ($DE71691BB3011260155645AE0E7AB3CC)_currentFeatureSet;
- ($DE71691BB3011260155645AE0E7AB3CC)_loadUserPreferredSet;
- (BOOL)_hasSavedUserPreferredFeatures;
- (BOOL)hasAccessibilityTripleClickOptions;
- (GAXAccessibilityFeatureManager)init;
- (id)_accessibilityTripleClickOptions;
- (id)_updateBlocksForFeatureSet:(id)set;
- (id)_updateBlocksForFeatures:(unint64_t)features setEnabled:(BOOL)enabled;
- (void)_processNextUpdateBlockInQueue;
- (void)_saveCurrentAXFeaturesAsUserPreferredSetIfNecessary;
- (void)_saveCurrentFeatureSetAsUserPreferredSet;
- (void)overrideAccessibiltyFeaturesWithFeatureSet:(id)set;
- (void)restoreAccessibilityFeatures;
@end

@implementation GAXAccessibilityFeatureManager

- (GAXAccessibilityFeatureManager)init
{
  v7.receiver = self;
  v7.super_class = GAXAccessibilityFeatureManager;
  v2 = [(GAXAccessibilityFeatureManager *)&v7 init];
  if (v2)
  {
    v3 = [AXAccessQueueTimer alloc];
    v4 = +[AXAccessQueue mainAccessQueue];
    v5 = [v3 initWithTargetAccessQueue:v4];

    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(GAXAccessibilityFeatureManager *)v2 setUpdateTimer:v5];
  }

  return v2;
}

- (BOOL)hasAccessibilityTripleClickOptions
{
  _accessibilityTripleClickOptions = [(GAXAccessibilityFeatureManager *)self _accessibilityTripleClickOptions];
  v3 = [_accessibilityTripleClickOptions count] != 0;

  return v3;
}

- (void)_saveCurrentAXFeaturesAsUserPreferredSetIfNecessary
{
  _hasSavedUserPreferredFeatures = [(GAXAccessibilityFeatureManager *)self _hasSavedUserPreferredFeatures];
  v4 = GAXLogCommon();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (_hasSavedUserPreferredFeatures)
  {
    if (v5)
    {
      sub_29F40();
    }
  }

  else
  {
    if (v5)
    {
      sub_29F0C();
    }

    [(GAXAccessibilityFeatureManager *)self _saveCurrentFeatureSetAsUserPreferredSet];
  }
}

- (void)overrideAccessibiltyFeaturesWithFeatureSet:(id)set
{
  [(GAXAccessibilityFeatureManager *)self setRestoring:0];
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_29F74();
  }

  [(GAXAccessibilityFeatureManager *)self _saveCurrentAXFeaturesAsUserPreferredSetIfNecessary];
  v6 = [(GAXAccessibilityFeatureManager *)self _updateBlocksForFeatureSet:*&set];
  [(GAXAccessibilityFeatureManager *)self setUpdateQueue:v6];

  [(GAXAccessibilityFeatureManager *)self _processNextUpdateBlockInQueue];
}

- (void)restoreAccessibilityFeatures
{
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_29FA8();
  }

  if ([(GAXAccessibilityFeatureManager *)self _hasSavedUserPreferredFeatures])
  {
    [(GAXAccessibilityFeatureManager *)self setRestoring:1];
    v4 = [(GAXAccessibilityFeatureManager *)self _updateBlocksForFeatureSet:[(GAXAccessibilityFeatureManager *)self _loadUserPreferredSet]];
    [(GAXAccessibilityFeatureManager *)self setUpdateQueue:v4];

    [(GAXAccessibilityFeatureManager *)self _processNextUpdateBlockInQueue];
  }

  else
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "No saved preferred features, no need to restore anything.", v6, 2u);
    }
  }
}

- (BOOL)_hasSavedUserPreferredFeatures
{
  v2 = +[GAXSettings sharedInstance];
  savedAccessibilityFeatures = [v2 savedAccessibilityFeatures];
  v4 = savedAccessibilityFeatures != 0;

  return v4;
}

- (void)_saveCurrentFeatureSetAsUserPreferredSet
{
  _currentFeatureSet = [(GAXAccessibilityFeatureManager *)self _currentFeatureSet];
  v16 = +[GAXSettings sharedInstance];
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:_currentFeatureSet & 1];
  [v3 setObject:v4 forKeyedSubscript:@"AXFeatureIDVoiceOver"];

  v5 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 1) & 1];
  [v3 setObject:v5 forKeyedSubscript:@"AXFeatureIDZoom"];

  v6 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 2) & 1];
  [v3 setObject:v6 forKeyedSubscript:@"AXFeatureIDInvertColors"];

  v7 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 4) & 1];
  [v3 setObject:v7 forKeyedSubscript:@"AXFeatureIDAssistiveTouch"];

  v8 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 6) & 1];
  [v3 setObject:v8 forKeyedSubscript:@"AXFeatureIDSpeakSelection"];

  v9 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 7) & 1];
  [v3 setObject:v9 forKeyedSubscript:@"AXFeatureIDMonoAudio"];

  v10 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 8) & 1];
  [v3 setObject:v10 forKeyedSubscript:@"AXFeatureIDGuidedAccess"];

  v11 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 5) & 1];
  [v3 setObject:v11 forKeyedSubscript:@"AXFeatureIDSwitchOver"];

  v12 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 3) & 1];
  [v3 setObject:v12 forKeyedSubscript:@"AXFeatureIDGrayscale"];

  v13 = [NSNumber numberWithUnsignedInt:(_currentFeatureSet >> 10) & 1];
  [v3 setObject:v13 forKeyedSubscript:@"AXFeatureIDCommandAndControl"];

  [v16 setSavedAccessibilityFeatures:v3];
  v14 = +[NSMutableArray array];
  v15 = v14;
  if ((_currentFeatureSet & 0x800) != 0)
  {
    [v14 addObject:@"AXFeatureIDVoiceOver"];
    if ((_currentFeatureSet & 0x2000) == 0)
    {
LABEL_3:
      if ((_currentFeatureSet & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((_currentFeatureSet & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  [v15 addObject:@"AXFeatureIDInvertColors"];
  if ((_currentFeatureSet & 0x1000) == 0)
  {
LABEL_4:
    if ((_currentFeatureSet & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v15 addObject:@"AXFeatureIDZoom"];
  if ((_currentFeatureSet & 0x80000) == 0)
  {
LABEL_5:
    if ((_currentFeatureSet & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v15 addObject:@"AXFeatureIDReduceWhitePoint"];
  if ((_currentFeatureSet & 0x8000) == 0)
  {
LABEL_6:
    if ((_currentFeatureSet & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v15 addObject:@"AXFeatureIDAssistiveTouch"];
  if ((_currentFeatureSet & 0x20000) == 0)
  {
LABEL_7:
    if ((_currentFeatureSet & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v15 addObject:@"AXFeatureIDGuidedAccess"];
  if ((_currentFeatureSet & 0x40000) == 0)
  {
LABEL_8:
    if ((_currentFeatureSet & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v15 addObject:@"AXFeatureIDHearingAids"];
  if ((_currentFeatureSet & 0x10000) == 0)
  {
LABEL_9:
    if ((_currentFeatureSet & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v15 addObject:@"AXFeatureIDSwitchOver"];
  if ((_currentFeatureSet & 0x4000) == 0)
  {
LABEL_10:
    if ((_currentFeatureSet & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  [v15 addObject:@"AXFeatureIDGrayscale"];
  if ((_currentFeatureSet & 0x100000) != 0)
  {
LABEL_11:
    [v15 addObject:@"AXFeatureIDCommandAndControl"];
  }

LABEL_12:
  [v16 setSavedAccessibilityTripleClickOptions:v15];
}

- ($DE71691BB3011260155645AE0E7AB3CC)_loadUserPreferredSet
{
  v2 = +[GAXSettings sharedInstance];
  v43 = v2;
  savedAccessibilityFeatures = [v2 savedAccessibilityFeatures];
  v4 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDVoiceOver"];
  bOOLValue = [v4 BOOLValue];

  v6 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDZoom"];
  if ([v6 BOOLValue])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | bOOLValue;

  v9 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDInvertColors"];
  if ([v9 BOOLValue])
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDAssistiveTouch"];
  if ([v11 BOOLValue])
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  v49 = v8 | v10 | v12;

  v13 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDSpeakSelection"];
  if ([v13 BOOLValue])
  {
    v14 = 64;
  }

  else
  {
    v14 = 0;
  }

  v15 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDMonoAudio"];
  if ([v15 BOOLValue])
  {
    v16 = 128;
  }

  else
  {
    v16 = 0;
  }

  v17 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDGuidedAccess"];
  if ([v17 BOOLValue])
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v47 = v14 | v16;
  v48 = v18;

  v19 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDSwitchOver"];
  if ([v19 BOOLValue])
  {
    v20 = 32;
  }

  else
  {
    v20 = 0;
  }

  v46 = v20;

  v21 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDGrayscale"];
  if ([v21 BOOLValue])
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  v45 = v22;

  v23 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDReduceWhitePoint"];
  if ([v23 BOOLValue])
  {
    v24 = 512;
  }

  else
  {
    v24 = 0;
  }

  v44 = v24;

  v25 = [savedAccessibilityFeatures objectForKey:@"AXFeatureIDCommandAndControl"];
  if ([v25 BOOLValue])
  {
    v26 = 1024;
  }

  else
  {
    v26 = 0;
  }

  v42 = v26;

  savedAccessibilityTripleClickOptions = [v2 savedAccessibilityTripleClickOptions];
  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDVoiceOver"])
  {
    v28 = 2048;
  }

  else
  {
    v28 = 0;
  }

  v41 = v28;
  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDInvertColors"])
  {
    v29 = 0x2000;
  }

  else
  {
    v29 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDZoom"])
  {
    v30 = 4096;
  }

  else
  {
    v30 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDReduceWhitePoint"])
  {
    v31 = 0x80000;
  }

  else
  {
    v31 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDAssistiveTouch"])
  {
    v32 = 0x8000;
  }

  else
  {
    v32 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDGuidedAccess"])
  {
    v33 = 0x20000;
  }

  else
  {
    v33 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDHearingAids"])
  {
    v34 = 0x40000;
  }

  else
  {
    v34 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDSwitchOver"])
  {
    v35 = 0x10000;
  }

  else
  {
    v35 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDGrayscale"])
  {
    v36 = 0x4000;
  }

  else
  {
    v36 = 0;
  }

  if ([savedAccessibilityTripleClickOptions containsObject:@"AXFeatureIDCommandAndControl"])
  {
    v37 = 0x100000;
  }

  else
  {
    v37 = 0;
  }

  v38 = v49 | v47 | v48 | v46 | v45 | v44 | v42 | v41 | v29 | v30 | v31 | v32 | v33;
  v39 = v34 | v35 | v36 | v37;

  return (v38 | v39);
}

- ($DE71691BB3011260155645AE0E7AB3CC)_currentFeatureSet
{
  v3 = _AXSVoiceOverTouchEnabled() & 1;
  v4 = v3 & 0xFFFFFFFD | (2 * (_AXSZoomTouchEnabled() & 1));
  v5 = v4 & 0xFFFFFFFB | (4 * (_AXSInvertColorsEnabled() & 1));
  v6 = v5 & 0xFFFFFFF7 | (8 * (_AXSGrayscaleEnabled() & 1));
  LOBYTE(v6) = v6 & 0xEF | (16 * (_AXSAssistiveTouchEnabled() & 1));
  v7 = _AXSQuickSpeakEnabled();
  v8 = v6 & 0x9F | ((v7 & 1) << 6) | (_AXSMonoAudioEnabled() << 7);
  v9 = v8 | (_AXSGuidedAccessEnabled() << 8);
  v10 = v9 & 0x1FF | (32 * (_AXSAssistiveTouchScannerEnabled() & 1));
  v11 = v10 | ((_AXSReduceWhitePointEnabled() & 1) << 9);
  v12 = v11 | ((_AXSCommandAndControlEnabled() & 1) << 10);
  _accessibilityTripleClickOptions = [(GAXAccessibilityFeatureManager *)self _accessibilityTripleClickOptions];
  if ([_accessibilityTripleClickOptions containsObject:&off_516C8])
  {
    v14 = 2048;
  }

  else
  {
    v14 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_516E0])
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_516F8])
  {
    v16 = 4096;
  }

  else
  {
    v16 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_51710])
  {
    v17 = 0x8000;
  }

  else
  {
    v17 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_51728])
  {
    v18 = 0x20000;
  }

  else
  {
    v18 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_51740])
  {
    v19 = 0x40000;
  }

  else
  {
    v19 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_51758])
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_51770])
  {
    v21 = 0x4000;
  }

  else
  {
    v21 = 0;
  }

  v22 = v14 | v15;
  if ([_accessibilityTripleClickOptions containsObject:&off_51788])
  {
    v23 = 0x80000;
  }

  else
  {
    v23 = 0;
  }

  if ([_accessibilityTripleClickOptions containsObject:&off_517A0])
  {
    v24 = 0x100000;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 | v16 | v17 | v18 | v19 | v20 | v21 | v23 | v24;

  return (v12 | v25);
}

- (id)_updateBlocksForFeatures:(unint64_t)features setEnabled:(BOOL)enabled
{
  featuresCopy = features;
  v6 = objc_opt_new();
  if (featuresCopy)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_3964;
    v21[3] = &unk_4C9D8;
    enabledCopy = enabled;
    v9 = [v21 copy];
    [v6 addObject:v9];

    if ((featuresCopy & 2) == 0)
    {
LABEL_3:
      if ((featuresCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((featuresCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_396C;
  v19[3] = &unk_4C9D8;
  enabledCopy2 = enabled;
  v10 = [v19 copy];
  [v6 addObject:v10];

  if ((featuresCopy & 8) == 0)
  {
LABEL_4:
    if ((featuresCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_3974;
  v17[3] = &unk_4C9D8;
  enabledCopy3 = enabled;
  v11 = [v17 copy];
  [v6 addObject:v11];

  if ((featuresCopy & 0x10) == 0)
  {
LABEL_5:
    if ((featuresCopy & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_397C;
  v15[3] = &unk_4C9D8;
  enabledCopy4 = enabled;
  v12 = objc_retainBlock(v15);
  [v6 addObject:v12];

  if ((featuresCopy & 4) != 0)
  {
LABEL_6:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3984;
    v13[3] = &unk_4C9D8;
    enabledCopy5 = enabled;
    v7 = [v13 copy];
    [v6 addObject:v7];
  }

LABEL_7:

  return v6;
}

- (id)_updateBlocksForFeatureSet:(id)set
{
  v4 = +[NSMutableArray array];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_3EFC;
  v59[3] = &unk_4C9F8;
  setCopy = set;
  v5 = objc_retainBlock(v59);
  v6 = [v5 copy];

  v7 = objc_retainBlock(v6);
  [v4 addObject:v7];

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_406C;
  v57[3] = &unk_4C9F8;
  setCopy2 = set;
  v8 = objc_retainBlock(v57);

  v9 = [v8 copy];
  v10 = objc_retainBlock(v9);
  [v4 addObject:v10];

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_4078;
  v55[3] = &unk_4C9F8;
  setCopy3 = set;
  v11 = objc_retainBlock(v55);

  v12 = [v11 copy];
  v13 = objc_retainBlock(v12);
  [v4 addObject:v13];

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_4084;
  v53[3] = &unk_4C9F8;
  setCopy4 = set;
  v14 = objc_retainBlock(v53);

  v15 = [v14 copy];
  v16 = objc_retainBlock(v15);
  [v4 addObject:v16];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_4090;
  v51[3] = &unk_4C9F8;
  setCopy5 = set;
  v17 = objc_retainBlock(v51);

  v18 = [v17 copy];
  v19 = objc_retainBlock(v18);
  [v4 addObject:v19];

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_409C;
  v49[3] = &unk_4C9F8;
  setCopy6 = set;
  v20 = objc_retainBlock(v49);

  v21 = [v20 copy];
  v22 = objc_retainBlock(v21);
  [v4 addObject:v22];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_40A8;
  v47[3] = &unk_4C9F8;
  setCopy7 = set;
  v23 = objc_retainBlock(v47);

  v24 = [v23 copy];
  v25 = objc_retainBlock(v24);
  [v4 addObject:v25];

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_40B4;
  v45[3] = &unk_4C9F8;
  setCopy8 = set;
  v26 = objc_retainBlock(v45);

  v27 = [v26 copy];
  v28 = objc_retainBlock(v27);
  [v4 addObject:v28];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_40C0;
  v43[3] = &unk_4C9F8;
  setCopy9 = set;
  v29 = objc_retainBlock(v43);

  v30 = [v29 copy];
  v31 = objc_retainBlock(v30);
  [v4 addObject:v31];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_40CC;
  v41[3] = &unk_4C9F8;
  setCopy10 = set;
  v32 = objc_retainBlock(v41);

  v33 = [v32 copy];
  v34 = objc_retainBlock(v33);
  [v4 addObject:v34];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_40D8;
  v39[3] = &unk_4C9F8;
  setCopy11 = set;
  v35 = objc_retainBlock(v39);

  v36 = [v35 copy];
  v37 = objc_retainBlock(v36);
  [v4 addObject:v37];

  return v4;
}

- (void)_processNextUpdateBlockInQueue
{
  updateTimer = [(GAXAccessibilityFeatureManager *)self updateTimer];
  [updateTimer cancel];

  updateQueue = [(GAXAccessibilityFeatureManager *)self updateQueue];
  v5 = [updateQueue count];

  if (v5)
  {
    updateQueue2 = [(GAXAccessibilityFeatureManager *)self updateQueue];
    v7 = [updateQueue2 objectAtIndex:0];

    v7[2](v7);
    updateQueue3 = [(GAXAccessibilityFeatureManager *)self updateQueue];
    [updateQueue3 removeObjectAtIndex:0];

    updateTimer2 = [(GAXAccessibilityFeatureManager *)self updateTimer];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4288;
    v13[3] = &unk_4C958;
    v13[4] = self;
    [updateTimer2 afterDelay:v13 processBlock:1.0];
  }

  else
  {
    v10 = GAXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_29FDC(self, v10);
    }

    if ([(GAXAccessibilityFeatureManager *)self isRestoring])
    {
      v11 = +[GAXSettings sharedInstance];
      [v11 setSavedAccessibilityFeatures:0];

      v12 = +[GAXSettings sharedInstance];
      [v12 setSavedAccessibilityTripleClickOptions:0];
    }

    [(GAXAccessibilityFeatureManager *)self setRestoring:0];
  }
}

- (id)_accessibilityTripleClickOptions
{
  v2 = _AXSTripleClickCopyOptions();
  if (!v2)
  {
    v2 = +[NSArray array];
  }

  return v2;
}

@end