@interface LoopAudioComposer
- (int)composeLoopWithAudio:(id)audio withAudioSource:(id)source startTime:(id *)time fadeTime:(id *)fadeTime periodTime:(id *)periodTime metadata:(id)metadata andOutputURL:(id)l;
@end

@implementation LoopAudioComposer

- (int)composeLoopWithAudio:(id)audio withAudioSource:(id)source startTime:(id *)time fadeTime:(id *)fadeTime periodTime:(id *)periodTime metadata:(id)metadata andOutputURL:(id)l
{
  audioCopy = audio;
  sourceCopy = source;
  metadataCopy = metadata;
  lCopy = l;
  time1.start = *fadeTime;
  v15 = MEMORY[0x277CC08F0];
  *time2 = *MEMORY[0x277CC08F0];
  *&time2[16] = *(MEMORY[0x277CC08F0] + 16);
  v16 = CMTimeCompare(&time1.start, time2);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v19 = [defaultManager fileExistsAtPath:path];

  if (v19)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [lCopy path];
    [defaultManager2 removeItemAtPath:path2 error:0];
  }

  *&time1.start.value = *&periodTime->var0;
  time1.start.epoch = periodTime->var3;
  if (audioCopy)
  {
    [audioCopy duration];
  }

  else
  {
    memset(time2, 0, 24);
  }

  if (CMTimeCompare(&time1.start, time2))
  {
    var0 = periodTime->var0;
    var1 = periodTime->var1;
    if (audioCopy)
    {
      [audioCopy duration];
      value = time1.start.value;
      [audioCopy duration];
      v25 = *&time2[8];
    }

    else
    {
      v25 = 0;
      value = 0;
      memset(&time1, 0, 24);
      memset(time2, 0, 24);
    }

    NSLog(&cfstr_WarningLoopPer.isa, var0, var1, value, v25);
  }

  v26 = *MEMORY[0x277CE5EA8];
  v27 = [audioCopy tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [audioCopy tracksWithMediaType:v26];
    v54 = [v29 objectAtIndex:0];

    v30 = *MEMORY[0x277CE5E48];
    v31 = [sourceCopy tracksWithMediaType:*MEMORY[0x277CE5E48]];
    v32 = [v31 count];

    if (v32)
    {
      v33 = [sourceCopy tracksWithMediaType:v30];
      v34 = [v33 objectAtIndex:0];

      composition = [MEMORY[0x277CE6548] composition];
      v53 = [composition addMutableTrackWithMediaType:v26 preferredTrackID:0];
      *time2 = *&v15->value;
      *&time2[16] = v15->epoch;
      duration = *periodTime;
      CMTimeRangeMake(&time1, time2, &duration);
      *time2 = *&v15->value;
      *&time2[16] = v15->epoch;
      [v53 insertTimeRange:&time1 ofTrack:v54 atTime:time2 error:0];
      *time2 = *&periodTime->var0;
      *&time2[16] = periodTime->var3;
      if (v34)
      {
        [v34 timeRange];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      duration = time1.duration;
      if (CMTimeCompare(time2, &duration) < 1)
      {
        if (v54)
        {
          [v54 preferredTransform];
        }

        else
        {
          memset(&v58, 0, sizeof(v58));
        }

        time1 = v58;
        [v53 setPreferredTransform:&time1];
        memset(time2, 0, 24);
        *&time1.start.value = *&periodTime->var0;
        time1.start.epoch = periodTime->var3;
        duration = *fadeTime;
        CMTimeSubtract(time2, &time1.start, &duration);
        if (v16 <= 0)
        {
          v43 = [composition addMutableTrackWithMediaType:v30 preferredTrackID:0];
          duration = *time;
          rhs = *periodTime;
          CMTimeRangeMake(&time1, &duration, &rhs);
          duration = *v15;
          [v43 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
          audioMix = 0;
          v42 = 0;
          v49 = 0;
          v50 = 0;
        }

        else
        {
          v48 = [composition addMutableTrackWithMediaType:v30 preferredTrackID:0];
          v49 = [composition addMutableTrackWithMediaType:v30 preferredTrackID:0];
          v50 = [composition addMutableTrackWithMediaType:v30 preferredTrackID:0];
          *&time1.start.value = *&fadeTime->var0;
          time1.start.epoch = fadeTime->var3;
          duration = *v15;
          if (CMTimeCompare(&time1.start, &duration) >= 1)
          {
            duration = *time;
            rhs = *fadeTime;
            CMTimeRangeMake(&time1, &duration, &rhs);
            duration = *time2;
            [v48 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
            *&time1.start.value = *&time->var0;
            time1.start.epoch = time->var3;
            rhs = *periodTime;
            CMTimeAdd(&duration, &time1.start, &rhs);
            rhs = *fadeTime;
            CMTimeRangeMake(&time1, &duration, &rhs);
            duration = *time2;
            [v49 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
          }

          *&time1.start.value = *time2;
          time1.start.epoch = *&time2[16];
          duration = *v15;
          if (CMTimeCompare(&time1.start, &duration) >= 1)
          {
            *&time1.start.value = *&time->var0;
            time1.start.epoch = time->var3;
            rhs = *fadeTime;
            CMTimeAdd(&duration, &time1.start, &rhs);
            rhs = *time2;
            CMTimeRangeMake(&time1, &duration, &rhs);
            duration = *v15;
            [v50 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
          }

          audioMix = [MEMORY[0x277CE6538] audioMix];
          v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
          *&time1.start.value = *time2;
          time1.start.epoch = *&time2[16];
          duration = *periodTime;
          v42 = v48;
          sub_2418F7750(v49, v41, &time1.start, &duration, 1);
          *&time1.start.value = *time2;
          time1.start.epoch = *&time2[16];
          duration = *periodTime;
          sub_2418F7750(v48, v41, &time1.start, &duration, 0);
          [audioMix setInputParameters:v41];

          v43 = 0;
        }

        v44 = [MEMORY[0x277CE6400] exportPresetsCompatibleWithAsset:audioCopy];
        v45 = *MEMORY[0x277CE5C00];
        if ([*MEMORY[0x277CE5C00] isEqualToString:*MEMORY[0x277CE5C78]] & 1) != 0 || (objc_msgSend(v44, "containsObject:", v45))
        {
          v46 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:composition presetName:v45];
          [v46 setOutputURL:lCopy];
          [v46 setOutputFileType:*MEMORY[0x277CE5DA8]];
          [v46 setShouldOptimizeForNetworkUse:1];
          [v46 setAudioMix:audioMix];
          if (metadataCopy)
          {
            [v46 setMetadata:metadataCopy];
          }

          if (sub_2418E86FC(v46))
          {
            NSLog(&cfstr_AudioExportErr_0.isa);
            v35 = -1;
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          NSLog(&cfstr_AudioExportErr.isa);
          v35 = 0;
        }
      }

      else
      {
        v36 = periodTime->var0;
        v37 = periodTime->var1;
        if (v34)
        {
          [v34 timeRange];
          v38 = time1.duration.value;
          [v34 timeRange];
          v39 = v60;
        }

        else
        {
          v39 = 0;
          v38 = 0;
          memset(&time1, 0, sizeof(time1));
          v60 = 0u;
          memset(time2, 0, sizeof(time2));
        }

        NSLog(&cfstr_AudioTrackOfIn.isa, v36, v37, v38, v39);
        v35 = -1;
      }
    }

    else
    {
      NSLog(&cfstr_NoAudioTrackAv.isa);
      v35 = -1;
    }
  }

  else
  {
    NSLog(&cfstr_NoVideoTrackAv.isa);
    v35 = -1;
  }

  return v35;
}

@end