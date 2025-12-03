@interface AXAudioHardwareManager
+ (BOOL)channelsAreAirplay:(id)airplay route:(id)route;
+ (BOOL)channelsAreWiredHeadphones:(id)headphones;
+ (id)channelsForPort:(id)port;
+ (id)defaultPort;
+ (id)defaultPortChannels;
+ (id)defaultRouteDescription;
+ (id)sharedManager;
+ (void)disableMultiroute;
+ (void)enableMultiroute;
+ (void)updateTestingChannels;
- (AXAudioHardwareManager)init;
- (BOOL)isDolbyAtmosConfigured;
- (id)_savedIdForRouteDescription:(id)description;
- (id)savedChannelsForOutput:(id)output forSource:(int64_t)source;
- (void)_handleSurroundSoundDefaults:(id)defaults returnedChannels:(id)channels port:(id)port source:(int64_t)source;
- (void)setSavedChannels:(id)channels forOutput:(id)output forSource:(int64_t)source;
@end

@implementation AXAudioHardwareManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[AXAudioHardwareManager sharedManager];
  }

  v3 = sharedManager_Manager;

  return v3;
}

uint64_t __39__AXAudioHardwareManager_sharedManager__block_invoke()
{
  sharedManager_Manager = objc_alloc_init(AXAudioHardwareManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AXAudioHardwareManager)init
{
  v6.receiver = self;
  v6.super_class = AXAudioHardwareManager;
  v2 = [(AXAudioHardwareManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (BOOL)channelsAreAirplay:(id)airplay route:(id)route
{
  routeCopy = route;
  if ([airplay count] == 2)
  {
    outputs = [routeCopy outputs];
    if ([outputs count] == 1)
    {
      firstObject = [outputs firstObject];
      portType = [firstObject portType];
      v9 = [portType isEqualToString:*MEMORY[0x1E69581A0]];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)channelsAreWiredHeadphones:(id)headphones
{
  v18 = *MEMORY[0x1E69E9840];
  headphonesCopy = headphones;
  if ([headphonesCopy count] == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = headphonesCopy;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          owningPortUID = [*(*(&v13 + 1) + 8 * i) owningPortUID];
          v10 = [owningPortUID isEqualToString:@"Wired Headphones"];

          if (!v10)
          {
            v11 = 0;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)enableMultiroute
{
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  category = [mEMORY[0x1E6958460] category];
  v4 = ExistingCategory;
  ExistingCategory = category;

  mEMORY[0x1E6958460]2 = [MEMORY[0x1E6958460] sharedInstance];
  v6 = *MEMORY[0x1E6958058];
  v9 = 0;
  v7 = [mEMORY[0x1E6958460]2 setCategory:v6 withOptions:0 error:&v9];
  v8 = v9;

  if ((v7 & 1) == 0)
  {
    NSLog(&cfstr_Error_0.isa, v8);
    NSLog(&cfstr_Error_0.isa, v8);
  }
}

+ (void)disableMultiroute
{
  v2 = ExistingCategory;
  if (ExistingCategory)
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    v6 = 0;
    v4 = [mEMORY[0x1E6958460] setCategory:ExistingCategory withOptions:0 error:&v6];
    v5 = v6;

    if ((v4 & 1) == 0)
    {
      NSLog(&cfstr_Error_0.isa, v5);
      NSLog(&cfstr_Error_0.isa, v5);
    }

    v2 = ExistingCategory;
  }

  ExistingCategory = 0;
}

+ (id)defaultRouteDescription
{
  if (DefaultRouteDescription)
  {
    currentRoute = DefaultRouteDescription;
  }

  else
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    currentRoute = [mEMORY[0x1E6958460] currentRoute];
  }

  return currentRoute;
}

- (BOOL)isDolbyAtmosConfigured
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  audioFormats = [mEMORY[0x1E6958460] audioFormats];

  v4 = [audioFormats countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(audioFormats);
        }

        intValue = [*(*(&v16 + 1) + 8 * i) intValue];
        if (intValue > 1836344106)
        {
          if (intValue > 1902324530)
          {
            if (intValue == 1902324531 || intValue == 2053319475)
            {
LABEL_30:
              v14 = 1;
              goto LABEL_32;
            }
          }

          else if (intValue == 1836344107 || intValue == 1885547315)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (intValue > 1835103274)
          {
            v9 = intValue == 1835103275;
            v10 = 1836343851;
          }

          else
          {
            v9 = intValue == 1667443507;
            v10 = 1700997939;
          }

          if (v9 || intValue == v10)
          {
            goto LABEL_30;
          }
        }
      }

      v5 = [audioFormats countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_32:

  return v14;
}

+ (void)updateTestingChannels
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = TestingChannels;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        channel = [v8 channel];

        if (channel)
        {
          [array addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if ([array count])
  {
    v10 = array;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&TestingChannels, v10);
}

+ (id)channelsForPort:(id)port
{
  v18 = *MEMORY[0x1E69E9840];
  portCopy = port;
  [self updateTestingChannels];
  if (TestingChannels)
  {
    array = TestingChannels;
  }

  else
  {
    if (AXProcessIsPreferences())
    {
      [self enableMultiroute];
    }

    if (AXProcessIsPreferences())
    {
      [self disableMultiroute];
    }

    array = [MEMORY[0x1E695DF70] array];
    channels = [portCopy channels];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [channels countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(channels);
          }

          v11 = [MEMORY[0x1E69D9EA0] channelWithChannel:*(*(&v13 + 1) + 8 * i)];
          [array addObject:v11];
        }

        v8 = [channels countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return array;
}

+ (id)defaultPortChannels
{
  v3 = +[AXAudioHardwareManager defaultPort];
  v4 = [self channelsForPort:v3];

  return v4;
}

+ (id)defaultPort
{
  v17 = *MEMORY[0x1E69E9840];
  if (TestingPort)
  {
    firstObject = TestingPort;
  }

  else
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    currentRoute = [mEMORY[0x1E6958460] currentRoute];
    outputs = [currentRoute outputs];
    firstObject = [outputs firstObject];

    mEMORY[0x1E69887B0] = [MEMORY[0x1E69887B0] sharedInstance];
    ignoreLogging = [mEMORY[0x1E69887B0] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x1E69887B0] identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        outputs2 = [currentRoute outputs];
        v12 = _AXStringForArgs();

        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138543362;
          v16 = v12;
          _os_log_impl(&dword_18B15E000, v9, v10, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  return firstObject;
}

- (id)_savedIdForRouteDescription:(id)description
{
  v18 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  outputs = [descriptionCopy outputs];
  v6 = [outputs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(outputs);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) UID];
        [array addObject:v10];
      }

      v7 = [outputs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [array sortUsingComparator:&__block_literal_global_14];
  v11 = [array componentsJoinedByString:@"_"];

  return v11;
}

- (id)savedChannelsForOutput:(id)output forSource:(int64_t)source
{
  v90 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  v7 = +[AXSettings sharedInstance];
  _audioHardwareChannelLayout = [v7 _audioHardwareChannelLayout];

  sourceCopy = source;
  source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", source];
  v10 = [_audioHardwareChannelLayout objectForKey:source];

  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v12 = [(AXAudioHardwareManager *)self _savedIdForRouteDescription:outputCopy];
  v66 = [v10 objectForKey:v12];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [outputCopy outputs];
  v13 = 0x1E6988000uLL;
  v70 = array;
  v63 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (v63)
  {
    v54 = v12;
    v55 = v10;
    v56 = _audioHardwareChannelLayout;
    v57 = outputCopy;
    v59 = *v82;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v82 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v14;
        v15 = *(*(&v81 + 1) + 8 * v14);
        v16 = [v15 UID];
        v60 = [v16 isEqualToString:@"Wired Headphones"];

        v71 = v15;
        channels = [v15 channels];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v65 = channels;
        v68 = [channels countByEnumeratingWithState:&v77 objects:v88 count:16];
        if (v68)
        {
          v67 = *v78;
          do
          {
            v18 = 0;
            do
            {
              if (*v78 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v69 = v18;
              v72 = *(*(&v77 + 1) + 8 * v18);
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v19 = v66;
              v20 = [v19 countByEnumeratingWithState:&v73 objects:v87 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v74;
                do
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v74 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v73 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = [v24 objectForKey:@"portUID"];
                      v26 = [v71 UID];
                      if ([v25 isEqualToString:v26])
                      {
                        v27 = [v24 objectForKeyedSubscript:@"channelNumber"];
                        intValue = [v27 intValue];
                        channelNumber = [v72 channelNumber];

                        v13 = 0x1E6988000;
                        v30 = channelNumber == intValue;
                        array = v70;
                        if (!v30)
                        {
LABEL_23:
                          sharedInstance = [*(v13 + 1968) sharedInstance];
                          ignoreLogging = [sharedInstance ignoreLogging];

                          if ((ignoreLogging & 1) == 0)
                          {
                            identifier = [*(v13 + 1968) identifier];
                            v34 = AXLoggerForFacility();

                            v35 = AXOSLogLevelFromAXLogLevel();
                            if (os_log_type_enabled(v34, v35))
                            {
                              v36 = AXColorizeFormatLog();
                              v52 = v72;
                              v53 = array;
                              v51 = v24;
                              v37 = _AXStringForArgs();
                              if (os_log_type_enabled(v34, v35))
                              {
                                *buf = 138543362;
                                v86 = v37;
                                _os_log_impl(&dword_18B15E000, v34, v35, "%{public}@", buf, 0xCu);
                              }
                            }

                            v13 = 0x1E6988000;
                          }

                          continue;
                        }

                        v25 = [MEMORY[0x1E69D9EA0] channelWithChannel:v72];
                        [v70 addObject:v25];
                      }

                      else
                      {
                      }

                      goto LABEL_23;
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v73 objects:v87 count:16];
                }

                while (v21);
              }

              v18 = v69 + 1;
            }

            while (v69 + 1 != v68);
            v68 = [v65 countByEnumeratingWithState:&v77 objects:v88 count:16];
          }

          while (v68);
        }

        [(AXAudioHardwareManager *)selfCopy _handleSurroundSoundDefaults:v65 returnedChannels:array port:v71 source:sourceCopy, v51];

        v14 = v64 + 1;
      }

      while (v64 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
      if (!v63)
      {
        _audioHardwareChannelLayout = v56;
        outputCopy = v57;
        v12 = v54;
        v10 = v55;
        v38 = v60;
        goto LABEL_37;
      }
    }
  }

  v38 = 0;
LABEL_37:

  sharedInstance2 = [*(v13 + 1968) sharedInstance];
  ignoreLogging2 = [sharedInstance2 ignoreLogging];

  if ((ignoreLogging2 & 1) == 0)
  {
    identifier2 = [*(v13 + 1968) identifier];
    v42 = AXLoggerForFacility();

    v43 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = AXColorizeFormatLog();
      v51 = v66;
      v52 = array;
      v45 = _AXStringForArgs();
      if (os_log_type_enabled(v42, v43))
      {
        *buf = 138543362;
        v86 = v45;
        _os_log_impl(&dword_18B15E000, v42, v43, "%{public}@", buf, 0xCu);
      }

      array = v70;
    }
  }

  if (!v38)
  {
    goto LABEL_48;
  }

  outputs = [outputCopy outputs];
  if ([outputs count] != 1)
  {

    goto LABEL_48;
  }

  v47 = [array count];

  if (v47 != 2)
  {
LABEL_48:
    if ([array count])
    {
      v49 = array;
    }

    else
    {
      v49 = 0;
    }

    v48 = v49;
    goto LABEL_52;
  }

  v48 = 0;
LABEL_52:

  return v48;
}

- (void)_handleSurroundSoundDefaults:(id)defaults returnedChannels:(id)channels port:(id)port source:(int64_t)source
{
  v38 = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  channelsCopy = channels;
  portCopy = port;
  if ([defaultsCopy count] == 5 && !objc_msgSend(channelsCopy, "count"))
  {
    portType = [portCopy portType];
    v13 = [portType isEqualToString:*MEMORY[0x1E6958200]];

    if (v13)
    {
      if (source == 2)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v21 = defaultsCopy;
        v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v29;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v29 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v28 + 1) + 8 * i);
              if ([v26 channelLabel] == 1 || objc_msgSend(v26, "channelLabel") == 2 || objc_msgSend(v26, "channelLabel") == 5 || objc_msgSend(v26, "channelLabel") == 6)
              {
                v27 = [MEMORY[0x1E69D9EA0] channelWithChannel:v26];
                [channelsCopy addObject:v27];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v23);
        }

        goto LABEL_29;
      }

      if (source == 1)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = defaultsCopy;
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v32 + 1) + 8 * j);
              if ([v19 channelLabel] == 3 || objc_msgSend(v19, "channelLabel") == 9)
              {
                v20 = [MEMORY[0x1E69D9EA0] channelWithChannel:v19];
                [channelsCopy addObject:v20];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
          }

          while (v16);
        }

LABEL_29:
      }
    }
  }
}

- (void)setSavedChannels:(id)channels forOutput:(id)output forSource:(int64_t)source
{
  v39 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  outputCopy = output;
  v8 = +[AXSettings sharedInstance];
  _audioHardwareChannelLayout = [v8 _audioHardwareChannelLayout];
  v10 = [_audioHardwareChannelLayout mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  source = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", source];
  v12 = [v10 objectForKey:source];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  source2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", source];
  v30 = v10;
  v28 = v13;
  [v10 setObject:v13 forKey:source2];

  array = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = channelsCopy;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v36[0] = @"portUID";
        owningPortUID = [v21 owningPortUID];
        v36[1] = @"channelNumber";
        v37[0] = owningPortUID;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "channelNumber")}];
        v37[1] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
        [array addObject:v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v18);
  }

  v25 = [(AXAudioHardwareManager *)self _savedIdForRouteDescription:outputCopy];
  v26 = AXLogSpeechAssetDownload();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [AXAudioHardwareManager setSavedChannels:v25 forOutput:array forSource:v26];
  }

  [v28 setObject:array forKey:v25];
  v27 = +[AXSettings sharedInstance];
  [v27 _setAudioHardwareChannelLayout:v30];
}

- (void)setSavedChannels:(uint64_t)a1 forOutput:(uint64_t)a2 forSource:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_18B15E000, log, OS_LOG_TYPE_DEBUG, "saving channels: %{public}@ %{public}@", &v3, 0x16u);
}

@end