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
- (void)scrubToPosition:(double)position;
- (void)setCurrentChartDescriptor:(id)descriptor;
- (void)setCurrentSeriesIndex:(int64_t)index;
- (void)setLiveModeValue:(double)value;
@end

@implementation AXMDataSonificationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AXMDataSonificationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)setLiveModeValue:(double)value
{
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXMDataSonificationManager_setLiveModeValue___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = value;
  dispatch_async(dataSonifierAccessQueue, block);
}

void __47__AXMDataSonificationManager_setLiveModeValue___block_invoke(uint64_t a1)
{
  v2 = +[AXMDataSonifier sharedInstance];
  [v2 setLiveContinuousToneNormalizedFrequency:*(a1 + 32)];
}

- (void)setCurrentChartDescriptor:(id)descriptor
{
  objc_storeStrong(&self->_currentChartDescriptor, descriptor);
  descriptorCopy = descriptor;
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

- (void)scrubToPosition:(double)position
{
  [(AXMDataSonificationManager *)self currentPlaybackPosition];
  v6 = vabdd_f64(position, v5);
  [(AXMDataSonificationManager *)self lastScrubbingValueAnnouncementPosition];
  if (vabdd_f64(position, v7) > 0.1)
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

  if (v6 >= 0.025 || ([(AXMDataSonificationManager *)self lastScrubbingValueAnnouncementPosition], vabdd_f64(v12, position) <= 0.025))
  {
    scrubbingValueAnnouncementTimer = [(AXMDataSonificationManager *)self scrubbingValueAnnouncementTimer];
    [scrubbingValueAnnouncementTimer invalidate];

    [(AXMDataSonificationManager *)self setScrubbingValueAnnouncementTimer:0];
  }

  else
  {
    scrubbingValueAnnouncementTimer2 = [(AXMDataSonificationManager *)self scrubbingValueAnnouncementTimer];
    [scrubbingValueAnnouncementTimer2 invalidate];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__AXMDataSonificationManager_scrubToPosition___block_invoke;
    v18[3] = &unk_1E7A1E148;
    v18[4] = self;
    *&v18[5] = position;
    v14 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v18 block:0.5];
    [(AXMDataSonificationManager *)self setScrubbingValueAnnouncementTimer:v14];
  }

  [(AXMDataSonificationManager *)self setLastPlayheadPosition:position];
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AXMDataSonificationManager_scrubToPosition___block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  *&block[4] = position;
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

- (void)setCurrentSeriesIndex:(int64_t)index
{
  dataSonifierAccessQueue = self->_dataSonifierAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AXMDataSonificationManager_setCurrentSeriesIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = index;
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
  currentSeriesIndex = [v2 currentSeriesIndex];

  return currentSeriesIndex;
}

- (unint64_t)playbackStatus
{
  if ([(AXMDataSonificationManager *)self isScrubbing])
  {
    v3 = +[AXMDataSonifier sharedInstance];
    isEndingScrubbing = [v3 isEndingScrubbing];

    if (!isEndingScrubbing)
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[AXMDataSonifier sharedInstance];
  [v4 currentPlaybackPosition];
  v6 = v5;

  if ([(AXMDataSonificationManager *)self currentSeriesIndex]< 1)
  {
    v106 = 0;
  }

  else
  {
    currentChartDescriptor = [(AXMDataSonificationManager *)self currentChartDescriptor];
    series = [currentChartDescriptor series];
    v106 = [series objectAtIndexedSubscript:{-[AXMDataSonificationManager currentSeriesIndex](self, "currentSeriesIndex") - 1}];
  }

  currentChartDescriptor2 = [(AXMDataSonificationManager *)self currentChartDescriptor];
  xAxis = [currentChartDescriptor2 xAxis];
  isCategoricalAxis = [xAxis isCategoricalAxis];

  if (!isCategoricalAxis)
  {
    if (v106)
    {
      v145 = v106;
      series2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
    }

    else
    {
      currentChartDescriptor3 = [(AXMDataSonificationManager *)self currentChartDescriptor];
      series2 = [currentChartDescriptor3 series];
    }

    currentChartDescriptor4 = [(AXMDataSonificationManager *)self currentChartDescriptor];
    xAxis2 = [currentChartDescriptor4 xAxis];

    [xAxis2 upperBound];
    v49 = v48;
    [xAxis2 lowerBound];
    v51 = v50;
    [xAxis2 lowerBound];
    v53 = v52;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v17 = series2;
    v115 = [v17 countByEnumeratingWithState:&v130 objects:v144 count:16];
    if (!v115)
    {
      v18 = 0;
      xAxis3 = v17;
      goto LABEL_78;
    }

    v54 = 0;
    v55 = v49 - v51;
    v56 = v53 + v6 * (v49 - v51);
    v109 = xAxis2;
    v111 = *v131;
    v57 = v55 * 0.05;
    obja = v17;
    v113 = array;
LABEL_37:
    v58 = 0;
    while (1)
    {
      v59 = array;
      if (*v131 != v111)
      {
        objc_enumerationMutation(v17);
      }

      v60 = *(*(&v130 + 1) + 8 * v58);
      array2 = [MEMORY[0x1E695DF70] array];
      name = [v60 name];
      name2 = [v60 name];

      if (name2)
      {
        v121 = name;
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

      array = v59;
      if ([v60 isContinuous])
      {
        v128 = 0uLL;
        v129 = 0uLL;
        v126 = 0uLL;
        v127 = 0uLL;
        dataPoints = [v60 dataPoints];
        v71 = [dataPoints countByEnumeratingWithState:&v126 objects:v143 count:16];
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
              objc_enumerationMutation(dataPoints);
            }

            v77 = *(*(&v126 + 1) + 8 * i);
            if (v76)
            {
              xValue = [v76 xValue];
              [xValue number];
              if (v56 <= v79)
              {
              }

              else
              {
                xValue2 = [v77 xValue];
                [xValue2 number];
                v82 = v81;

                if (v56 < v82)
                {
                  v94 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
                  v95 = [v94 localizedStringForKey:@"audiograph.datapoint" value:&stru_1F23EA908 table:@"Accessibility"];
                  [array2 addObject:v95];

                  valueDescription = [v76 valueDescription];
                  [array2 addObject:valueDescription];

                  ++v54;
                  goto LABEL_67;
                }
              }
            }

            v73 = v77;
          }

          v72 = [dataPoints countByEnumeratingWithState:&v126 objects:v143 count:16];
        }

        while (v72);
        v76 = v73;
LABEL_67:

        array = v113;
      }

      else
      {
        v124 = 0uLL;
        v125 = 0uLL;
        v122 = 0uLL;
        v123 = 0uLL;
        dataPoints = [v60 dataPoints];
        v83 = [dataPoints countByEnumeratingWithState:&v122 objects:v142 count:16];
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
              objc_enumerationMutation(dataPoints);
            }

            v87 = *(*(&v122 + 1) + 8 * j);
            xValue3 = [v87 xValue];
            [xValue3 number];
            v90 = v89;

            if (vabdd_f64(v90, v56) < v57)
            {
              v91 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
              v92 = [v91 localizedStringForKey:@"audiograph.datapoint" value:&stru_1F23EA908 table:@"Accessibility"];
              [array2 addObject:v92];

              valueDescription2 = [v87 valueDescription];
              [array2 addObject:valueDescription2];

              ++v54;
            }
          }

          v84 = [dataPoints countByEnumeratingWithState:&v122 objects:v142 count:16];
        }

        while (v84);
      }

      v58 = v117;
      v17 = obja;
LABEL_69:

      if ([v17 count] >= 2 && objc_msgSend(array2, "count"))
      {
        [array2 insertObject:v121 atIndex:0];
      }

      [array addObjectsFromArray:array2];

      if (++v58 == v115)
      {
        v115 = [v17 countByEnumeratingWithState:&v130 objects:v144 count:16];
        if (!v115)
        {
          xAxis3 = v17;
          v18 = v54;
          xAxis2 = v109;
          goto LABEL_78;
        }

        goto LABEL_37;
      }
    }
  }

  currentChartDescriptor5 = [(AXMDataSonificationManager *)self currentChartDescriptor];
  xAxis3 = [currentChartDescriptor5 xAxis];

  if (v106)
  {
    v148[0] = v106;
    series3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:1];
  }

  else
  {
    currentChartDescriptor6 = [(AXMDataSonificationManager *)self currentChartDescriptor];
    series3 = [currentChartDescriptor6 series];
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v17 = series3;
  v110 = [v17 countByEnumeratingWithState:&v138 objects:v147 count:16];
  if (v110)
  {
    obj = v17;
    v18 = 0;
    v107 = *v139;
    v108 = xAxis3;
    v112 = array;
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
        array3 = [MEMORY[0x1E695DF70] array];
        name3 = [v20 name];
        name4 = [v20 name];

        if (!name4)
        {
          v23 = [obj indexOfObject:v20];
          v24 = MEMORY[0x1E696AEC0];
          v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
          v26 = [v25 localizedStringForKey:@"audiograph.series.number" value:&stru_1F23EA908 table:@"Accessibility"];
          v27 = [v24 localizedStringWithFormat:v26, v23];

          name3 = v27;
        }

        if ([obj count] >= 2)
        {
          [array3 addObject:name3];
        }

        categoryOrder = [xAxis3 categoryOrder];
        v29 = 1.0 / [categoryOrder count];

        v30 = vcvtmd_s64_f64(v6 / v29);
        categoryOrder2 = [xAxis3 categoryOrder];
        v32 = [categoryOrder2 count];

        v116 = v19;
        if (v32 <= v30)
        {
          v34 = 0;
        }

        else
        {
          categoryOrder3 = [xAxis3 categoryOrder];
          v34 = [categoryOrder3 objectAtIndexedSubscript:v30];
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        dataPoints2 = [v20 dataPoints];
        v36 = [dataPoints2 countByEnumeratingWithState:&v134 objects:v146 count:16];
        v114 = name3;
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
                objc_enumerationMutation(dataPoints2);
              }

              v40 = *(*(&v134 + 1) + 8 * k);
              xValue4 = [v40 xValue];
              category = [xValue4 category];
              v43 = [category isEqualToString:v34];

              if (v43)
              {
                valueDescription3 = [v40 valueDescription];
                [array3 addObject:valueDescription3];

                ++v18;
              }
            }

            v37 = [dataPoints2 countByEnumeratingWithState:&v134 objects:v146 count:16];
          }

          while (v37);
        }

        array = v112;
        [v112 addObjectsFromArray:array3];

        v19 = v116 + 1;
        xAxis3 = v108;
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

  xAxis2 = v17;
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

  v101 = [array componentsJoinedByString:{@", "}];
  v102 = v101;
  if (v100)
  {
    v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v100, v101];
  }

  else
  {
    v101 = v101;
  }

  v104 = v101;

  return v104;
}

- (AXMChartDescriptor)currentChartDescriptor
{
  v2 = +[AXMDataSonifier sharedInstance];
  currentChartDescriptor = [v2 currentChartDescriptor];

  return currentChartDescriptor;
}

@end