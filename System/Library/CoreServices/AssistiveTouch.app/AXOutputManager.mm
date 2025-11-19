@interface AXOutputManager
+ (AXOutputManager)sharedOutputManager;
- (AXOutputManager)init;
- (BOOL)_scatLanguage:(id)a3 matchesOverrideLanguage:(id)a4;
- (BOOL)_scatOutputCanSpeakString:(id)a3 withLanguage:(id)a4;
- (BOOL)areSoundEffectsEnabled;
- (BOOL)isSpeechEnabled;
- (BOOL)scanningInterruptsSpeech;
- (float)_volume;
- (id)_scatProcessAttributedString:(id)a3;
- (id)_urlForSoundEffect:(int)a3;
- (id)processAXOutputAction:(id)a3;
- (id)selectionForLanguage:(id)a3;
- (void)_applySelectionToAction:(id)a3 selection:(id)a4;
- (void)_audioPlayerFinished:(id)a3;
- (void)_flushSoundIDs;
- (void)_scatAddCompletionBlockToAction:(id)a3 completionBlock:(id)a4;
- (void)_setDuckingLevelAlways:(double)a3;
- (void)_setDuckingLevelOnlySpeaking:(double)a3;
- (void)_setDuckingProperties;
- (void)_setUnDuckingProperties;
- (void)_updateAudioSessionProperties;
- (void)_updateDuckingMode;
- (void)_updateSoundEffect:(int)a3 isActive:(BOOL)a4;
- (void)cancelSpeech;
- (void)clearRecentSpeech;
- (void)dealloc;
- (void)dispatchSpeechAction:(id)a3;
- (void)outputScannerAnnouncement:(id)a3 completionBlock:(id)a4;
- (void)outputScannerAttributedString:(id)a3 completionBlock:(id)a4;
- (void)outputScannerFocusContext:(id)a3 completion:(id)a4;
- (void)playMouseClickSound;
- (void)playSound:(int)a3;
- (void)setSoundAudioSessionActive:(BOOL)a3;
- (void)setSpeechAudioSessionActive:(BOOL)a3;
- (void)setSpeechEnabled:(BOOL)a3;
@end

@implementation AXOutputManager

+ (AXOutputManager)sharedOutputManager
{
  if (qword_100218BE8 != -1)
  {
    sub_10012AEC4();
  }

  v3 = qword_100218BE0;

  return v3;
}

- (AXOutputManager)init
{
  v24.receiver = self;
  v24.super_class = AXOutputManager;
  v2 = [(AXOutputManager *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    soundIDsToAudioPlayer = v2->_soundIDsToAudioPlayer;
    v2->_soundIDsToAudioPlayer = v3;

    v5 = objc_alloc_init(NSMutableSet);
    activeSoundIDs = v2->_activeSoundIDs;
    v2->_activeSoundIDs = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    registeredSoundIDs = v2->_registeredSoundIDs;
    v2->_registeredSoundIDs = v7;

    v9 = [[AXAccessQueue alloc] initWithParentClass:objc_opt_class() description:&stru_1001DB590 appendUUIDToLabel:0];
    outputAccessQueue = v2->_outputAccessQueue;
    v2->_outputAccessQueue = v9;

    v11 = +[NSMutableSet set];
    unfinishedSpeechActionsWithCompletionBlocks = v2->_unfinishedSpeechActionsWithCompletionBlocks;
    v2->_unfinishedSpeechActionsWithCompletionBlocks = v11;

    v13 = +[NSMutableArray array];
    cachedRecentSpeechOutputRequests = v2->_cachedRecentSpeechOutputRequests;
    v2->_cachedRecentSpeechOutputRequests = v13;

    v2->_lastSetOptions = 0;
    LODWORD(v15) = 1.0;
    v2->_cacheSCVolumeForDuckingOff = [NSNumber numberWithFloat:v15];
    objc_initWeak(&location, v2);
    v16 = +[AXSettings sharedInstance];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000CD8E0;
    v21[3] = &unk_1001D3460;
    objc_copyWeak(&v22, &location);
    [v16 registerUpdateBlock:v21 forRetrieveSelector:"voiceOverMediaDuckingAmount" withListener:v2];

    objc_destroyWeak(&v22);
    v17 = +[AXSettings sharedInstance];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000CD920;
    v19[3] = &unk_1001D3460;
    objc_copyWeak(&v20, &location);
    [v17 registerUpdateBlock:v19 forRetrieveSelector:"voiceOverMediaDuckingMode" withListener:v2];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(AXOutputManager *)self _flushSoundIDs];
  v3.receiver = self;
  v3.super_class = AXOutputManager;
  [(AXOutputManager *)&v3 dealloc];
}

- (void)setSpeechEnabled:(BOOL)a3
{
  if (self->_speechEnabled != a3)
  {
    if (a3)
    {
      if (!self->_speechManager)
      {
        v5 = objc_alloc_init(TTSSpeechManager);
        speechManager = self->_speechManager;
        self->_speechManager = v5;

        [(TTSSpeechManager *)self->_speechManager setSpeechSource:AXSpeechSourceKeySwitchControl];
        [(TTSSpeechManager *)self->_speechManager setAudioSessionCategory:AVAudioSessionCategoryVoiceOver];
        [(TTSSpeechManager *)self->_speechManager setUsesAuxiliarySession:1];
        [(AXOutputManager *)self _updateAudioSessionProperties];
      }
    }

    else
    {
      v7 = [(AXOutputManager *)self unfinishedSpeechActionsWithCompletionBlocks];
      v8 = [v7 copy];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            v15 = [v14 completionCallback];
            (v15)[2](v15, v14, 0);
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      v16 = [(AXOutputManager *)self unfinishedSpeechActionsWithCompletionBlocks];
      v17 = [v16 count];

      if (v17)
      {
        v18 = SWCHLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_10012AED8(v18);
        }
      }

      v19 = [(AXOutputManager *)self unfinishedSpeechActionsWithCompletionBlocks];
      [v19 removeAllObjects];

      [(TTSSpeechManager *)self->_speechManager tearDown];
      v20 = self->_speechManager;
      self->_speechManager = 0;

      self->_lastSetOptions = 0;
    }

    self->_speechEnabled = a3;
  }
}

- (void)setSpeechAudioSessionActive:(BOOL)a3
{
  if (self->_speechAudioSessionActive != a3)
  {
    self->_speechAudioSessionActive = a3;
  }
}

- (void)setSoundAudioSessionActive:(BOOL)a3
{
  if (self->_soundAudioSessionActive != a3)
  {
    self->_soundAudioSessionActive = a3;
  }
}

- (BOOL)isSpeechEnabled
{
  if (self->_speechEnabled)
  {
    v2 = +[HNDAccessibilityManager sharedManager];
    v3 = [v2 isSystemSleeping] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)areSoundEffectsEnabled
{
  if (self->_soundEffectsEnabled)
  {
    v2 = +[HNDAccessibilityManager sharedManager];
    v3 = [v2 isSystemSleeping] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)playSound:(int)a3
{
  if ([(AXOutputManager *)self areSoundEffectsEnabled])
  {
    v5 = [(AXOutputManager *)self outputAccessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CDD60;
    v6[3] = &unk_1001D70C0;
    v6[4] = self;
    v7 = a3;
    [v5 performAsynchronousWritingBlock:v6];
  }
}

- (void)playMouseClickSound
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseClickSoundsEnabled];

  if (v3)
  {
    if (qword_100218BF8 != -1)
    {
      sub_10012AFB0();
    }

    v4 = dword_100218BF0;

    _AudioServicesPlaySoundWithBehavior(v4, 1111);
  }
}

- (void)dispatchSpeechAction:(id)a3
{
  v10 = a3;
  [v10 setShouldProcessEmoji:1];
  [(AXOutputManager *)self _volume];
  [v10 setVolume:v4];
  [(TTSSpeechManager *)self->_speechManager dispatchSpeechAction:v10];
  v5 = [(AXOutputManager *)self cachedRecentSpeechOutputRequests];
  v6 = [v5 count];

  if (v6 == 10)
  {
    v7 = [(AXOutputManager *)self cachedRecentSpeechOutputRequests];
    [v7 removeObjectAtIndex:0];
  }

  v8 = [v10 string];
  if ([v8 length])
  {
    v9 = [(AXOutputManager *)self cachedRecentSpeechOutputRequests];
    [v9 addObject:v8];
  }
}

- (void)cancelSpeech
{
  [(TTSSpeechManager *)self->_speechManager clearSpeechQueue];
  speechManager = self->_speechManager;

  [(TTSSpeechManager *)speechManager stopSpeaking];
}

- (void)clearRecentSpeech
{
  v2 = [(AXOutputManager *)self cachedRecentSpeechOutputRequests];
  [v2 removeAllObjects];
}

- (void)_flushSoundIDs
{
  v3 = [(AXOutputManager *)self outputAccessQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CE32C;
  v4[3] = &unk_1001D3488;
  v4[4] = self;
  [v3 performSynchronousWritingBlock:v4];
}

- (id)_urlForSoundEffect:(int)a3
{
  if (a3 > 1002)
  {
    if (a3 <= 1004)
    {
      if (a3 == 1003)
      {
        v4 = objc_allocWithZone(NSURL);
        v5 = [(AXOutputManager *)self _voiceOverBundle];
        v6 = [v5 resourcePath];
        [NSString stringWithFormat:@"%@/Sounds/Alert.aiff", v6];
      }

      else
      {
        v4 = objc_allocWithZone(NSURL);
        v5 = [(AXOutputManager *)self _voiceOverBundle];
        v6 = [v5 resourcePath];
        [NSString stringWithFormat:@"%@/Sounds/WrapBoundary.aiff", v6];
      }

      goto LABEL_17;
    }

    if (a3 == 1005)
    {
      v4 = objc_allocWithZone(NSURL);
      v5 = [(AXOutputManager *)self _voiceOverBundle];
      v6 = [v5 resourcePath];
      [NSString stringWithFormat:@"%@/Sounds/ScreenChange.aiff", v6];
      goto LABEL_17;
    }

    if (a3 == 1006)
    {
      v4 = objc_allocWithZone(NSURL);
      v5 = [(AXOutputManager *)self _voiceOverBundle];
      v6 = [v5 resourcePath];
      [NSString stringWithFormat:@"%@/Sounds/iOSScreenOff.aiff", v6];
      goto LABEL_17;
    }

LABEL_13:
    _AXLogWithFacility();
    v7 = 0;
    goto LABEL_18;
  }

  if (a3 == 1000)
  {
    v4 = objc_allocWithZone(NSURL);
    v5 = [(AXOutputManager *)self _voiceOverBundle];
    v6 = [v5 resourcePath];
    [NSString stringWithFormat:@"%@/Sounds/ElementBorder.aiff", v6];
    goto LABEL_17;
  }

  if (a3 == 1001)
  {
    v4 = objc_allocWithZone(NSURL);
    v5 = [(AXOutputManager *)self _voiceOverBundle];
    v6 = [v5 resourcePath];
    [NSString stringWithFormat:@"%@/Sounds/Select.aiff", v6];
    goto LABEL_17;
  }

  if (a3 != 1002)
  {
    goto LABEL_13;
  }

  v4 = objc_allocWithZone(NSURL);
  v5 = [(AXOutputManager *)self _voiceOverBundle];
  v6 = [v5 resourcePath];
  [NSString stringWithFormat:@"%@/Sounds/PopupAppeared.aiff", v6];
  v8 = LABEL_17:;
  v7 = [v4 initFileURLWithPath:v8 isDirectory:0];

LABEL_18:

  return v7;
}

- (void)_updateAudioSessionProperties
{
  if (self->_speechManager)
  {
    v3 = SWCHLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[AXSettings sharedInstance];
      v5 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v4 voiceOverMediaDuckingMode]);
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update audio session properties: ducking mode: %@.", buf, 0xCu);
    }

    v6 = +[AXSettings sharedInstance];
    v7 = [v6 voiceOverMediaDuckingMode];

    if (v7)
    {
      v8 = +[AXSettings sharedInstance];
      if ([v8 voiceOverMediaDuckingMode] == 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      [(AXOutputManager *)self _setDuckingProperties];
    }

    else
    {
      [(AXOutputManager *)self _setUnDuckingProperties];
      v9 = 1;
    }

    if (v9 == [(AXOutputManager *)self lastSetOptions])
    {
      v10 = SWCHLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        return;
      }

      v11 = [NSNumber numberWithUnsignedInteger:self->_lastSetOptions];
      v12 = [NSNumber numberWithUnsignedInteger:v9];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not updating audio session. New options are the same as current options: (lastSet: %@, newSet: %@)", buf, 0x16u);
    }

    else
    {
      [(AXOutputManager *)self setLastSetOptions:v9];
      [(TTSSpeechManager *)self->_speechManager setAudioSessionCategoryOptions:v9];
      if (![(AXOutputManager *)self _usesAVAudioPlayer])
      {
        return;
      }

      v13 = +[AVAudioSession sharedInstance];
      v14 = 0;
      [v13 setCategory:AVAudioSessionCategoryVoiceOver withOptions:v9 error:&v14];
      v10 = v14;

      if (!v10)
      {
        goto LABEL_18;
      }

      v11 = SWCHLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10012AFC4();
      }
    }

    goto LABEL_18;
  }
}

- (void)_setDuckingProperties
{
  if (self->_speechManager)
  {
    v3 = SWCHLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[AXSettings sharedInstance];
      v5 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v4 voiceOverMediaDuckingMode]);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating audio ducking properties for audio ducking mode %@.", &v11, 0xCu);
    }

    v6 = +[AXSettings sharedInstance];
    [v6 voiceOverMediaDuckingAmount];
    v8 = 1.0 - v7;

    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverMediaDuckingMode];

    if (v10 == 2)
    {
      [(AXOutputManager *)self _setDuckingLevelAlways:1.0 - v8];
    }

    else
    {
      [(AXOutputManager *)self _setDuckingLevelAlways:1.0];
      [(AXOutputManager *)self _setDuckingLevelOnlySpeaking:1.0 - v8];
    }
  }
}

- (void)_setUnDuckingProperties
{
  if (self->_speechManager)
  {
    v3 = SWCHLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting ducking levels to default.", v4, 2u);
    }

    [(AXOutputManager *)self _setDuckingLevelAlways:1.0];
    [(AXOutputManager *)self _setDuckingLevelOnlySpeaking:1.0];
  }
}

- (float)_volume
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverEffectiveSpeakingVolume];
  v4 = v3;

  return v4;
}

- (void)_updateDuckingMode
{
  if (self->_speechManager)
  {
    v3 = SWCHLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[AXSettings sharedInstance];
      v5 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v4 voiceOverMediaDuckingMode]);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update Switch Control audio ducking mode: %@.", &v6, 0xCu);
    }

    [(AXOutputManager *)self _updateAudioSessionProperties];
  }
}

- (void)_setDuckingLevelAlways:(double)a3
{
  if (self->_speechManager)
  {
    v4 = SWCHLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSNumber numberWithDouble:a3];
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting audio ducking ALWAYS to duckingVolume level %@.", &v11, 0xCu);
    }

    v6 = +[AVSystemController sharedAVSystemController];
    *&v7 = a3;
    v8 = [v6 setDuckScalarForVoiceOver:v7];
    if (v8)
    {
      v9 = v8;
      v10 = SWCHLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10012B02C(v9, v10);
      }
    }
  }
}

- (void)_setDuckingLevelOnlySpeaking:(double)a3
{
  if (self->_speechManager)
  {
    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithDouble:a3];
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting audio ducking WHEN SPEAKING to ducking amount level %@.", buf, 0xCu);
    }

    v7 = [(TTSSpeechManager *)self->_speechManager audioSession];
    v8 = [NSNumber numberWithDouble:a3];
    v14 = 0;
    v9 = [v7 setDuckToLevelScalar:v8 unduckToLevelScalar:0 error:&v14];
    v10 = v14;

    if (v10)
    {
      v11 = SWCHLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10012B0A4();
      }
    }

    v12 = SWCHLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithBool:v9];
      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updated audio ducking level result: %@", buf, 0xCu);
    }
  }
}

- (void)_updateSoundEffect:(int)a3 isActive:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(AXOutputManager *)self activeSoundIDs];
  v8 = [NSNumber numberWithUnsignedInt:v5];
  if (v4)
  {
    [v7 addObject:v8];
  }

  else
  {
    [v7 removeObject:v8];
  }

  v9 = [(AXOutputManager *)self activeSoundIDs];
  v10 = [v9 count];

  v11 = +[AVAudioSession sharedInstance];
  v12 = (v10 != 0) ^ [v11 isActive];

  if ((v12 & 1) == 0)
  {
    v13 = +[AVAudioSession sharedInstance];
    v16 = 0;
    [v13 setActive:v10 != 0 withOptions:0 error:&v16];
    v14 = v16;

    if (v14)
    {
      v15 = SWCHLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10012B10C();
      }
    }
  }
}

- (void)_audioPlayerFinished:(id)a3
{
  v4 = a3;
  v5 = [(AXOutputManager *)self soundIDsToAudioPlayer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF1DC;
  v7[3] = &unk_1001D7108;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)selectionForLanguage:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000CF4EC;
  v14 = sub_1000CF4FC;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF504;
  v7[3] = &unk_1001D7130;
  v9 = &v10;
  v4 = dispatch_semaphore_create(0);
  v8 = v4;
  [_TtC15assistivetouchd13AXPrefsBridge voiceSelectionForLanguageCode:v3 completionHandler:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)_scatProcessAttributedString:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = 0;
    v28 = 0;
    v26 = [v4 length];
    if (v26)
    {
      v6 = 0;
      while (1)
      {
        v7 = [v4 attributesAtIndex:v6 effectiveRange:&v27];
        v8 = v7;
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v9 = [v4 substringWithRange:{v27, v28}];
        v10 = [[AXOutputAction alloc] initWithString:v9];
        v11 = [AXOutputRequest addAttributesToAction:v10 fromDictionary:v8];

        v12 = [(AXOutputManager *)self processAXOutputAction:v11];
        [v12 setShouldProcessEmoji:1];
        [v9 rangeOfString:v9];
        v13 = [v11 objectForVariant:16];

        v14 = 16;
        if (v13 || ([v11 objectForVariant:15], v15 = objc_claimAutoreleasedReturnValue(), v15, v14 = 15, v15))
        {
          [v12 setShouldDetectLanguage:1];
          v16 = [v11 objectForVariant:v14];
          [v12 setLanguage:v16];
        }

        v17 = +[AXLanguageManager sharedInstance];
        v18 = [v17 systemLanguageID];

        v19 = [v12 language];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        v22 = v21;

        v23 = [(AXOutputManager *)self selectionForLanguage:v22];

        [(AXOutputManager *)self _applySelectionToAction:v12 selection:v23];
        [v5 addObject:v12];

        v6 = v28 + v27;
        v27 = v6;
        if (v6 >= v26)
        {
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v24 = [TTSSpeechAction actionWithString:v4 shouldQueue:1];
    [v24 setShouldProcessEmoji:1];
    [v5 addObject:v24];
  }

LABEL_15:

  return v5;
}

- (void)_applySelectionToAction:(id)a3 selection:(id)a4
{
  v22 = a3;
  v5 = a4;
  v6 = [v5 voiceId];
  [v22 setVoiceIdentifier:v6];

  v7 = [v5 rate];
  if (v7)
  {
    v8 = [v5 rate];
    [v8 floatValue];
    [v22 setSpeakingRate:v9];
  }

  else
  {
    [v22 setSpeakingRate:0.5];
  }

  v10 = [v5 pitch];
  if (v10)
  {
    v11 = [v5 pitch];
    [v11 floatValue];
    [v22 setPitch:v12];
  }

  else
  {
    [v22 setPitch:0.5];
  }

  [v22 pitch];
  v14 = v13;
  [v22 pitch];
  if (v15 >= 0.5)
  {
    [v22 pitch];
    v16 = (v17 + -1.0) * 2.0 + 2.0;
  }

  else
  {
    v16 = v14 + 0.5;
  }

  v18 = v16;
  [v22 setPitch:v18];
  v19 = [v5 volume];
  if (v19)
  {
    v20 = [v5 volume];
    [v20 floatValue];
    [v22 setVolume:v21];
  }

  else
  {
    [v22 setVolume:1.0];
  }
}

- (id)processAXOutputAction:(id)a3
{
  v3 = [a3 string];
  v4 = [TTSSpeechAction actionWithString:v3 shouldQueue:1];

  return v4;
}

- (BOOL)_scatLanguage:(id)a3 matchesOverrideLanguage:(id)a4
{
  v5 = a3;
  v6 = [a4 lowercaseString];
  v7 = [v6 rangeOfString:@"-"];
  v8 = v6;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v6 substringToIndex:v7];
  }

  v9 = [v5 hasPrefix:v8];

  return v9;
}

- (BOOL)_scatOutputCanSpeakString:(id)a3 withLanguage:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AXLanguageManager sharedInstance];
  v8 = [v7 dialectForLanguageID:v5];

  v9 = +[AXLanguageManager sharedInstance];
  v10 = [v9 dialectsThatCanSpeakString:v6];

  LOBYTE(v6) = [v10 containsObject:v8];
  return v6;
}

- (void)outputScannerFocusContext:(id)a3 completion:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (![(AXOutputManager *)self isSpeechEnabled])
  {
    _AXAssert();
  }

  if (![(AXOutputManager *)self isSpeechEnabled])
  {
    v6[2](v6, 0);
    goto LABEL_19;
  }

  if ([v16 selectBehavior] == 4)
  {
    v7 = @"EXIT_GROUP";
LABEL_11:
    v14 = sub_100042B24(v7);
    goto LABEL_14;
  }

  v8 = [v16 element];
  v9 = [v16 menuElement];

  if (v8 == v9)
  {
    v7 = @"EXIT_MENU";
    goto LABEL_11;
  }

  v10 = [v16 element];
  v11 = objc_opt_respondsToSelector();

  v12 = [v16 element];
  v13 = v12;
  if (v11)
  {
    [v12 scatSpeakableDescription:{objc_msgSend(v16, "isFirstInSequence")}];
  }

  else
  {
    [v12 scatSpeakableDescription];
  }
  v14 = ;

LABEL_14:
  v15 = [v14 length];
  if (!v6 || v15)
  {
    [(AXOutputManager *)self outputScannerAnnouncement:v14 completionBlock:v6];
  }

  else
  {
    v6[2](v6, 0);
  }

LABEL_19:
}

- (void)outputScannerAnnouncement:(id)a3 completionBlock:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(AXOutputManager *)self speechManager];
  [v7 stopSpeaking:0];

  v8 = [(AXOutputManager *)self speechManager];
  [v8 clearSpeechQueue];

  if ([v15 isAXAttributedString])
  {
    v9 = [[AXAttributedString alloc] initWithString:v15];
    [(AXOutputManager *)self outputScannerAttributedString:v9 completionBlock:v6];
  }

  else
  {
    v9 = [TTSSpeechAction actionWithString:v15 shouldQueue:1];
    [v9 setShouldProcessEmoji:1];
    v10 = +[AXLanguageManager sharedInstance];
    v11 = [v10 systemLanguageID];

    v12 = [(AXOutputManager *)self selectionForLanguage:v11];
    [(AXOutputManager *)self _applySelectionToAction:v9 selection:v12];

    [(AXOutputManager *)self _scatAddCompletionBlockToAction:v9 completionBlock:v6];
    v13 = +[HNDAccessibilityManager sharedManager];
    LOBYTE(v12) = [v13 isOKToSpeak];

    if (v12)
    {
      [(AXOutputManager *)self dispatchSpeechAction:v9];
    }

    else
    {
      v14 = [v9 completionCallback];
      (v14)[2](v14, v9, 0);
    }

    v6 = v11;
  }
}

- (void)outputScannerAttributedString:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [(AXOutputManager *)self _scatProcessAttributedString:a3];
  v8 = [v7 lastObject];
  [(AXOutputManager *)self _scatAddCompletionBlockToAction:v8 completionBlock:v6];

  v9 = +[HNDAccessibilityManager sharedManager];
  v10 = [v9 isOKToSpeak];

  if (v10)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(AXOutputManager *)self dispatchSpeechAction:*(*(&v19 + 1) + 8 * v15), v19];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v16 = [v7 lastObject];
    v17 = [v16 completionCallback];

    if (v17)
    {
      v18 = [v16 completionCallback];
      (v18)[2](v18, v16, 0);
    }
  }
}

- (void)_scatAddCompletionBlockToAction:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(AXOutputManager *)self unfinishedSpeechActionsWithCompletionBlocks];
    [v8 addObject:v6];

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D01A8;
    v9[3] = &unk_1001D7180;
    objc_copyWeak(&v11, &location);
    v10 = v7;
    [v6 setCompletionCallback:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (BOOL)scanningInterruptsSpeech
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerSpeechIsInterruptedByScanning];

  return v3 ^ 1;
}

@end