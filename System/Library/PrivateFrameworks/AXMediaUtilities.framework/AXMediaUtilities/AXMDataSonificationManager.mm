@interface AXMDataSonificationManager
+ (id)sharedManager;
- (AXMChartDescriptor)currentChartDescriptor;
- (AXMDataSonificationManager)init;
- (BOOL)isPaused;
- (BOOL)isPlaying;
- (BOOL)isScrubbing;
- (double)currentPlaybackPosition;
- (id)valueDescriptionForPlayheadPosition;
- (int64_t)currentSeriesIndex;
- (unint64_t)playbackStatus;
- (void)beginLiveModeSession;
- (void)beginScrubbingSession;
- (void)scrubToPosition:(double)a3;
- (void)setCurrentChartDescriptor:(id)a3;
- (void)setCurrentSeriesIndex:(int64_t)a3;
- (void)setLiveModeValue:(double)a3;
@end

@implementation AXMDataSonificationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AXMDataSonificationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager__SharedSonificationManager;

  return v2;
}

void __43__AXMDataSonificationManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager__SharedSonificationManager;
  sharedManager__SharedSonificationManager = v1;

  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v3 = +[AXMDataSonifier sharedInstance];
    [v3 addPlaybackObserver:sharedManager__SharedSonificationManager];
  }
}

- (AXMDataSonificationManager)init
{
  v6.receiver = self;
  v6.super_class = AXMDataSonificationManager;
  v2 = [(AXMDataSonificationManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.accessibility.vot.DataSonifierAccess", 0);
    dataSonifierAccessQueue = v2->_dataSonifierAccessQueue;
    v2->_dataSonifierAccessQueue = v3;

    v2->_hapticsEnabled = 1;
  }

  return v2;
}

- (void)beginLiveModeSession
{
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AXMDataSonificationManager_beginLiveModeSession__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_async(dataSonifierAccessQueue, block);
}

void __50__AXMDataSonificationManager_beginLiveModeSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopSpeaking];
  v1 = +[AXMDataSonifier sharedInstance];
  [v1 beginLiveContinuousToneSession];
}

void __48__AXMDataSonificationManager_endLiveModeSession__block_invoke()
{
  v0 = +[AXMDataSonifier sharedInstance];
  [v0 endLiveContinuousToneSession];
}

- (void)setLiveModeValue:(double)a3
{
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXMDataSonificationManager_setLiveModeValue___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = a3;
  dispatch_async(dataSonifierAccessQueue, block);
}

void __47__AXMDataSonificationManager_setLiveModeValue___block_invoke(uint64_t a1)
{
  v2 = +[AXMDataSonifier sharedInstance];
  [v2 setLiveContinuousToneNormalizedFrequency:*(a1 + 32)];
}

- (void)setCurrentChartDescriptor:(id)a3
{
  objc_storeStrong(&self->_currentChartDescriptor, a3);
  v5 = a3;
  v6 = +[AXMDataSonifier sharedInstance];
  [v6 setCurrentChartDescriptor:self->_currentChartDescriptor];
}

- (BOOL)isPlaying
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AXMDataSonificationManager_isPlaying__block_invoke;
  block[3] = &unk_1E7A1C700;
  block[4] = &v6;
  dispatch_sync(dataSonifierAccessQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__AXMDataSonificationManager_isPlaying__block_invoke(uint64_t a1)
{
  v3 = +[AXMDataSonifier sharedInstance];
  if ([v3 isPlaying])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v2 = +[AXMDataSonifier sharedInstance];
    *(*(*(a1 + 32) + 8) + 24) = [v2 isInLiveContinuousToneSession];
  }
}

- (BOOL)isPaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AXMDataSonificationManager_isPaused__block_invoke;
  block[3] = &unk_1E7A1C700;
  block[4] = &v6;
  dispatch_sync(dataSonifierAccessQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __38__AXMDataSonificationManager_isPaused__block_invoke(uint64_t a1)
{
  v2 = +[AXMDataSonifier sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 isPaused];
}

- (BOOL)isScrubbing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AXMDataSonificationManager_isScrubbing__block_invoke;
  block[3] = &unk_1E7A1C700;
  block[4] = &v6;
  dispatch_sync(dataSonifierAccessQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__AXMDataSonificationManager_isScrubbing__block_invoke(uint64_t a1)
{
  v2 = +[AXMDataSonifier sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 isScrubbing];
}

- (double)currentPlaybackPosition
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AXMDataSonificationManager_currentPlaybackPosition__block_invoke;
  block[3] = &unk_1E7A1C700;
  block[4] = &v6;
  dispatch_sync(dataSonifierAccessQueue, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __53__AXMDataSonificationManager_currentPlaybackPosition__block_invoke(uint64_t a1)
{
  v3 = +[AXMDataSonifier sharedInstance];
  [v3 currentPlaybackPosition];
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void __34__AXMDataSonificationManager_play__block_invoke()
{
  v0 = +[AXMDataSonifier sharedInstance];
  [v0 play];
}

void __35__AXMDataSonificationManager_pause__block_invoke()
{
  v0 = +[AXMDataSonifier sharedInstance];
  [v0 pause];
}

void __41__AXMDataSonificationManager_stopPlaying__block_invoke()
{
  v0 = +[AXMDataSonifier sharedInstance];
  [v0 stopPlaying];
}

- (void)beginScrubbingSession
{
  [(AXMDataSonificationManager *)self setLastScrubbingValueAnnouncementPosition:1.79769313e308];
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;

  dispatch_sync(dataSonifierAccessQueue, &__block_literal_global_34);
}

void __51__AXMDataSonificationManager_beginScrubbingSession__block_invoke()
{
  v0 = +[AXMDataSonifier sharedInstance];
  [v0 beginScrubbing];
}

- (void)scrubToPosition:(double)a3
{
  [(AXMDataSonificationManager *)self currentPlaybackPosition];
  v6 = vabdd_f64(a3, v5);
  [(AXMDataSonificationManager *)self lastScrubbingValueAnnouncementPosition];
  if (vabdd_f64(a3, v7) > 0.1)
  {
    [(AXMDataSonificationManager *)self stopSpeaking];
    v8 = +[AXMDataSonifier sharedInstance];
    [v8 masterVolume];
    v10 = v9;

    if (v10 < 1.0)
    {
      v11 = +[AXMDataSonifier sharedInstance];
      [v11 setMasterVolume:1.0 fadeDuration:0.5];
    }
  }

  if (v6 >= 0.025 || ([(AXMDataSonificationManager *)self lastScrubbingValueAnnouncementPosition], vabdd_f64(v12, a3) <= 0.025))
  {
    v15 = [(AXMDataSonificationManager *)self scrubbingValueAnnouncementTimer];
    [v15 invalidate];

    [(AXMDataSonificationManager *)self setScrubbingValueAnnouncementTimer:0];
  }

  else
  {
    v13 = [(AXMDataSonificationManager *)self scrubbingValueAnnouncementTimer];
    [v13 invalidate];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__AXMDataSonificationManager_scrubToPosition___block_invoke;
    v18[3] = &unk_1E7A1E148;
    v18[4] = self;
    *&v18[5] = a3;
    v14 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v18 block:0.5];
    [(AXMDataSonificationManager *)self setScrubbingValueAnnouncementTimer:v14];
  }

  [(AXMDataSonificationManager *)self setLastPlayheadPosition:a3];
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AXMDataSonificationManager_scrubToPosition___block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = a3;
  dispatch_sync(dataSonifierAccessQueue, block);
}

uint64_t __46__AXMDataSonificationManager_scrubToPosition___block_invoke(uint64_t a1)
{
  v2 = +[AXMDataSonifier sharedInstance];
  [v2 setMasterVolume:0.4 fadeDuration:0.5];

  [*(a1 + 32) announceValueForPlayheadPosition];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  return [v4 setLastScrubbingValueAnnouncementPosition:v3];
}

void __46__AXMDataSonificationManager_scrubToPosition___block_invoke_2(uint64_t a1)
{
  v2 = +[AXMDataSonifier sharedInstance];
  [v2 setPlaybackPosition:*(a1 + 32)];
}

void __49__AXMDataSonificationManager_endScrubbingSession__block_invoke()
{
  v0 = +[AXMDataSonifier sharedInstance];
  [v0 endScrubbing];

  v1 = +[AXMDataSonifier sharedInstance];
  [v1 setMasterVolume:1.0];
}

- (void)setCurrentSeriesIndex:(int64_t)a3
{
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AXMDataSonificationManager_setCurrentSeriesIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_sync(dataSonifierAccessQueue, block);
}

void __52__AXMDataSonificationManager_setCurrentSeriesIndex___block_invoke(uint64_t a1)
{
  v2 = +[AXMDataSonifier sharedInstance];
  [v2 setCurrentSeriesIndex:*(a1 + 32)];
}

- (int64_t)currentSeriesIndex
{
  v2 = +[AXMDataSonifier sharedInstance];
  v3 = [v2 currentSeriesIndex];

  return v3;
}

- (unint64_t)playbackStatus
{
  if ([(AXMDataSonificationManager *)self isScrubbing])
  {
    v3 = +[AXMDataSonifier sharedInstance];
    v4 = [v3 isEndingScrubbing];

    if (!v4)
    {
      return 3;
    }
  }

  if ([(AXMDataSonificationManager *)self isPlaying])
  {
    return 1;
  }

  if ([(AXMDataSonificationManager *)self isPaused])
  {
    return 2;
  }

  return 0;
}

- (id)valueDescriptionForPlayheadPosition
{
  v148[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[AXMDataSonifier sharedInstance];
  [v4 currentPlaybackPosition];
  v6 = v5;

  if ([(AXMDataSonificationManager *)self currentSeriesIndex]< 1)
  {
    v106 = 0;
  }

  else
  {
    v7 = [(AXMDataSonificationManager *)self currentChartDescriptor];
    v8 = [v7 series];
    v106 = [v8 objectAtIndexedSubscript:{-[AXMDataSonificationManager currentSeriesIndex](self, "currentSeriesIndex") - 1}];
  }

  v9 = [(AXMDataSonificationManager *)self currentChartDescriptor];
  v10 = [v9 xAxis];
  v11 = [v10 isCategoricalAxis];

  if (!v11)
  {
    if (v106)
    {
      v145 = v106;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
    }

    else
    {
      v45 = [(AXMDataSonificationManager *)self currentChartDescriptor];
      v15 = [v45 series];
    }

    v46 = [(AXMDataSonificationManager *)self currentChartDescriptor];
    v47 = [v46 xAxis];

    [v47 upperBound];
    v49 = v48;
    [v47 lowerBound];
    v51 = v50;
    [v47 lowerBound];
    v53 = v52;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v17 = v15;
    v115 = [v17 countByEnumeratingWithState:&v130 objects:v144 count:16];
    if (!v115)
    {
      v18 = 0;
      v13 = v17;
      goto LABEL_78;
    }

    v54 = 0;
    v55 = v49 - v51;
    v56 = v53 + v6 * (v49 - v51);
    v109 = v47;
    v111 = *v131;
    v57 = v55 * 0.05;
    obja = v17;
    v113 = v3;
LABEL_37:
    v58 = 0;
    while (1)
    {
      v59 = v3;
      if (*v131 != v111)
      {
        objc_enumerationMutation(v17);
      }

      v60 = *(*(&v130 + 1) + 8 * v58);
      v61 = [MEMORY[0x1E695DF70] array];
      v62 = [v60 name];
      v63 = [v60 name];

      if (v63)
      {
        v121 = v62;
      }

      else
      {
        v64 = [v17 indexOfObject:v60];
        v65 = MEMORY[0x1E696AEC0];
        v66 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v67 = [v66 localizedStringForKey:@"audiograph.series.number" value:&stru_1F23EA908 table:@"Accessibility"];
        v68 = v65;
        v17 = obja;
        v69 = [v68 localizedStringWithFormat:v67, v64];

        v121 = v69;
      }

      v3 = v59;
      if ([v60 isContinuous])
      {
        v128 = 0uLL;
        v129 = 0uLL;
        v126 = 0uLL;
        v127 = 0uLL;
        v70 = [v60 dataPoints];
        v71 = [v70 countByEnumeratingWithState:&v126 objects:v143 count:16];
        if (!v71)
        {
          goto LABEL_69;
        }

        v72 = v71;
        v117 = v58;
        v73 = 0;
        v74 = *v127;
        do
        {
          for (i = 0; i != v72; ++i)
          {
            v76 = v73;
            if (*v127 != v74)
            {
              objc_enumerationMutation(v70);
            }

            v77 = *(*(&v126 + 1) + 8 * i);
            if (v76)
            {
              v78 = [v76 xValue];
              [v78 number];
              if (v56 <= v79)
              {
              }

              else
              {
                v80 = [v77 xValue];
                [v80 number];
                v82 = v81;

                if (v56 < v82)
                {
                  v94 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
                  v95 = [v94 localizedStringForKey:@"audiograph.datapoint" value:&stru_1F23EA908 table:@"Accessibility"];
                  [v61 addObject:v95];

                  v96 = [v76 valueDescription];
                  [v61 addObject:v96];

                  ++v54;
                  goto LABEL_67;
                }
              }
            }

            v73 = v77;
          }

          v72 = [v70 countByEnumeratingWithState:&v126 objects:v143 count:16];
        }

        while (v72);
        v76 = v73;
LABEL_67:

        v3 = v113;
      }

      else
      {
        v124 = 0uLL;
        v125 = 0uLL;
        v122 = 0uLL;
        v123 = 0uLL;
        v70 = [v60 dataPoints];
        v83 = [v70 countByEnumeratingWithState:&v122 objects:v142 count:16];
        if (!v83)
        {
          goto LABEL_69;
        }

        v84 = v83;
        v117 = v58;
        v85 = *v123;
        do
        {
          for (j = 0; j != v84; ++j)
          {
            if (*v123 != v85)
            {
              objc_enumerationMutation(v70);
            }

            v87 = *(*(&v122 + 1) + 8 * j);
            v88 = [v87 xValue];
            [v88 number];
            v90 = v89;

            if (vabdd_f64(v90, v56) < v57)
            {
              v91 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
              v92 = [v91 localizedStringForKey:@"audiograph.datapoint" value:&stru_1F23EA908 table:@"Accessibility"];
              [v61 addObject:v92];

              v93 = [v87 valueDescription];
              [v61 addObject:v93];

              ++v54;
            }
          }

          v84 = [v70 countByEnumeratingWithState:&v122 objects:v142 count:16];
        }

        while (v84);
      }

      v58 = v117;
      v17 = obja;
LABEL_69:

      if ([v17 count] >= 2 && objc_msgSend(v61, "count"))
      {
        [v61 insertObject:v121 atIndex:0];
      }

      [v3 addObjectsFromArray:v61];

      if (++v58 == v115)
      {
        v115 = [v17 countByEnumeratingWithState:&v130 objects:v144 count:16];
        if (!v115)
        {
          v13 = v17;
          v18 = v54;
          v47 = v109;
          goto LABEL_78;
        }

        goto LABEL_37;
      }
    }
  }

  v12 = [(AXMDataSonificationManager *)self currentChartDescriptor];
  v13 = [v12 xAxis];

  if (v106)
  {
    v148[0] = v106;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:1];
  }

  else
  {
    v16 = [(AXMDataSonificationManager *)self currentChartDescriptor];
    v14 = [v16 series];
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v17 = v14;
  v110 = [v17 countByEnumeratingWithState:&v138 objects:v147 count:16];
  if (v110)
  {
    obj = v17;
    v18 = 0;
    v107 = *v139;
    v108 = v13;
    v112 = v3;
    do
    {
      v19 = 0;
      do
      {
        if (*v139 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v138 + 1) + 8 * v19);
        v120 = [MEMORY[0x1E695DF70] array];
        v21 = [v20 name];
        v22 = [v20 name];

        if (!v22)
        {
          v23 = [obj indexOfObject:v20];
          v24 = MEMORY[0x1E696AEC0];
          v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
          v26 = [v25 localizedStringForKey:@"audiograph.series.number" value:&stru_1F23EA908 table:@"Accessibility"];
          v27 = [v24 localizedStringWithFormat:v26, v23];

          v21 = v27;
        }

        if ([obj count] >= 2)
        {
          [v120 addObject:v21];
        }

        v28 = [v13 categoryOrder];
        v29 = 1.0 / [v28 count];

        v30 = vcvtmd_s64_f64(v6 / v29);
        v31 = [v13 categoryOrder];
        v32 = [v31 count];

        v116 = v19;
        if (v32 <= v30)
        {
          v34 = 0;
        }

        else
        {
          v33 = [v13 categoryOrder];
          v34 = [v33 objectAtIndexedSubscript:v30];
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v35 = [v20 dataPoints];
        v36 = [v35 countByEnumeratingWithState:&v134 objects:v146 count:16];
        v114 = v21;
        if (v36)
        {
          v37 = v36;
          v38 = *v135;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v135 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v134 + 1) + 8 * k);
              v41 = [v40 xValue];
              v42 = [v41 category];
              v43 = [v42 isEqualToString:v34];

              if (v43)
              {
                v44 = [v40 valueDescription];
                [v120 addObject:v44];

                ++v18;
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v134 objects:v146 count:16];
          }

          while (v37);
        }

        v3 = v112;
        [v112 addObjectsFromArray:v120];

        v19 = v116 + 1;
        v13 = v108;
      }

      while (v116 + 1 != v110);
      v110 = [obj countByEnumeratingWithState:&v138 objects:v147 count:16];
    }

    while (v110);
    v17 = obj;
  }

  else
  {
    v18 = 0;
  }

  v47 = v17;
LABEL_78:

  if (v18 < 2)
  {
    v100 = 0;
  }

  else
  {
    v97 = MEMORY[0x1E696AEC0];
    v98 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v99 = [v98 localizedStringForKey:@"audiograph.datapoints.count" value:&stru_1F23EA908 table:@"Accessibility"];
    v100 = [v97 localizedStringWithFormat:v99, v18];
  }

  v101 = [v3 componentsJoinedByString:{@", "}];
  v102 = v101;
  if (v100)
  {
    v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v100, v101];
  }

  else
  {
    v103 = v101;
  }

  v104 = v103;

  return v104;
}

- (AXMChartDescriptor)currentChartDescriptor
{
  v2 = +[AXMDataSonifier sharedInstance];
  v3 = [v2 currentChartDescriptor];

  return v3;
}

@end