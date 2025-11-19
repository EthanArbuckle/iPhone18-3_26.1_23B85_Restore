@interface LoopAudioComposer
- (int)composeLoopWithAudio:(id)a3 withAudioSource:(id)a4 startTime:(id *)a5 fadeTime:(id *)a6 periodTime:(id *)a7 metadata:(id)a8 andOutputURL:(id)a9;
@end

@implementation LoopAudioComposer

- (int)composeLoopWithAudio:(id)a3 withAudioSource:(id)a4 startTime:(id *)a5 fadeTime:(id *)a6 periodTime:(id *)a7 metadata:(id)a8 andOutputURL:(id)a9
{
  v13 = a3;
  v56 = a4;
  v55 = a8;
  v14 = a9;
  time1.start = *a6;
  v15 = MEMORY[0x277CC08F0];
  *time2 = *MEMORY[0x277CC08F0];
  *&time2[16] = *(MEMORY[0x277CC08F0] + 16);
  v16 = CMTimeCompare(&time1.start, time2);
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v14 path];
  v19 = [v17 fileExistsAtPath:v18];

  if (v19)
  {
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [v14 path];
    [v20 removeItemAtPath:v21 error:0];
  }

  *&time1.start.value = *&a7->var0;
  time1.start.epoch = a7->var3;
  if (v13)
  {
    [v13 duration];
  }

  else
  {
    memset(time2, 0, 24);
  }

  if (CMTimeCompare(&time1.start, time2))
  {
    var0 = a7->var0;
    var1 = a7->var1;
    if (v13)
    {
      [v13 duration];
      value = time1.start.value;
      [v13 duration];
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
  v27 = [v13 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [v13 tracksWithMediaType:v26];
    v54 = [v29 objectAtIndex:0];

    v30 = *MEMORY[0x277CE5E48];
    v31 = [v56 tracksWithMediaType:*MEMORY[0x277CE5E48]];
    v32 = [v31 count];

    if (v32)
    {
      v33 = [v56 tracksWithMediaType:v30];
      v34 = [v33 objectAtIndex:0];

      v52 = [MEMORY[0x277CE6548] composition];
      v53 = [v52 addMutableTrackWithMediaType:v26 preferredTrackID:0];
      *time2 = *&v15->value;
      *&time2[16] = v15->epoch;
      duration = *a7;
      CMTimeRangeMake(&time1, time2, &duration);
      *time2 = *&v15->value;
      *&time2[16] = v15->epoch;
      [v53 insertTimeRange:&time1 ofTrack:v54 atTime:time2 error:0];
      *time2 = *&a7->var0;
      *&time2[16] = a7->var3;
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
        *&time1.start.value = *&a7->var0;
        time1.start.epoch = a7->var3;
        duration = *a6;
        CMTimeSubtract(time2, &time1.start, &duration);
        if (v16 <= 0)
        {
          v43 = [v52 addMutableTrackWithMediaType:v30 preferredTrackID:0];
          duration = *a5;
          rhs = *a7;
          CMTimeRangeMake(&time1, &duration, &rhs);
          duration = *v15;
          [v43 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
          v40 = 0;
          v42 = 0;
          v49 = 0;
          v50 = 0;
        }

        else
        {
          v48 = [v52 addMutableTrackWithMediaType:v30 preferredTrackID:0];
          v49 = [v52 addMutableTrackWithMediaType:v30 preferredTrackID:0];
          v50 = [v52 addMutableTrackWithMediaType:v30 preferredTrackID:0];
          *&time1.start.value = *&a6->var0;
          time1.start.epoch = a6->var3;
          duration = *v15;
          if (CMTimeCompare(&time1.start, &duration) >= 1)
          {
            duration = *a5;
            rhs = *a6;
            CMTimeRangeMake(&time1, &duration, &rhs);
            duration = *time2;
            [v48 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
            *&time1.start.value = *&a5->var0;
            time1.start.epoch = a5->var3;
            rhs = *a7;
            CMTimeAdd(&duration, &time1.start, &rhs);
            rhs = *a6;
            CMTimeRangeMake(&time1, &duration, &rhs);
            duration = *time2;
            [v49 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
          }

          *&time1.start.value = *time2;
          time1.start.epoch = *&time2[16];
          duration = *v15;
          if (CMTimeCompare(&time1.start, &duration) >= 1)
          {
            *&time1.start.value = *&a5->var0;
            time1.start.epoch = a5->var3;
            rhs = *a6;
            CMTimeAdd(&duration, &time1.start, &rhs);
            rhs = *time2;
            CMTimeRangeMake(&time1, &duration, &rhs);
            duration = *v15;
            [v50 insertTimeRange:&time1 ofTrack:v34 atTime:&duration error:0];
          }

          v40 = [MEMORY[0x277CE6538] audioMix];
          v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
          *&time1.start.value = *time2;
          time1.start.epoch = *&time2[16];
          duration = *a7;
          v42 = v48;
          sub_2418F7750(v49, v41, &time1.start, &duration, 1);
          *&time1.start.value = *time2;
          time1.start.epoch = *&time2[16];
          duration = *a7;
          sub_2418F7750(v48, v41, &time1.start, &duration, 0);
          [v40 setInputParameters:v41];

          v43 = 0;
        }

        v44 = [MEMORY[0x277CE6400] exportPresetsCompatibleWithAsset:v13];
        v45 = *MEMORY[0x277CE5C00];
        if ([*MEMORY[0x277CE5C00] isEqualToString:*MEMORY[0x277CE5C78]] & 1) != 0 || (objc_msgSend(v44, "containsObject:", v45))
        {
          v46 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:v52 presetName:v45];
          [v46 setOutputURL:v14];
          [v46 setOutputFileType:*MEMORY[0x277CE5DA8]];
          [v46 setShouldOptimizeForNetworkUse:1];
          [v46 setAudioMix:v40];
          if (v55)
          {
            [v46 setMetadata:v55];
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
        v36 = a7->var0;
        v37 = a7->var1;
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