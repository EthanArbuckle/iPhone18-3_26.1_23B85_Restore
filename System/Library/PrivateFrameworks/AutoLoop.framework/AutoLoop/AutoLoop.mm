uint64_t autoloopSettingsDestroy(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 240);
    if (v1)
    {
      MEMORY[0x245CF24E0](v1, 0x1000C40D4159EFELL);
    }

    JUMPOUT(0x245CF24E0);
  }

  return result;
}

uint64_t sub_2418D12A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, CMTime *a5@<X8>)
{
  v10 = MEMORY[0x277CC08F0];
  *&a5->value = *MEMORY[0x277CC08F0];
  a5->epoch = v10->epoch;
  if (a2)
  {
    v16 = *v10;
    time1 = *(a1 + 120);
    CMTimeMaximum(a5, &v16, &time1);
    if (!a3)
    {
LABEL_3:
      if (!a4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!a3)
  {
    goto LABEL_3;
  }

  time1 = *a5;
  time2 = *(a1 + 248);
  CMTimeMaximum(&v16, &time1, &time2);
  *a5 = v16;
  if (a4)
  {
LABEL_4:
    time1 = *a5;
    time2 = *(a1 + 320);
    CMTimeMaximum(&v16, &time1, &time2);
    *a5 = v16;
  }

LABEL_5:
  v16 = *a5;
  time1 = *v10;
  result = CMTimeCompare(&v16, &time1);
  if ((result & 0x80000000) != 0)
  {
    *&a5->value = *&v10->value;
    a5->epoch = v10->epoch;
    if (!a2)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v16 = *a5;
  time1.value = v12;
  time1.timescale = v13;
  *&time1.flags = *(a1 + 132);
  HIDWORD(time1.epoch) = *(a1 + 140);
  result = CMTimeCompare(&v16, &time1);
  if (result)
  {
    return printf("WARNING: MIN REQUIRED INPUT LENGTH INCREASED BY BOUNCE AND/OR LONG EXPOSURE SETTINGS TO %lld/%d (AutoLoop requires %lld/%d)\n.", a5->value, a5->timescale, v12, v13);
  }

  return result;
}

double sub_2418D14D8(uint64_t a1, CMTime *a2)
{
  *(a1 + 368) = 1;
  memset(&v9, 0, sizeof(v9));
  CMTimeMake(&time1, 80, 600);
  time2 = *a2;
  CMTimeMinimum(&v9, &time1, &time2);
  time2 = *a2;
  v6 = v9;
  CMTimeSubtract(&time1, &time2, &v6);
  *(a1 + 120) = time1;
  v4 = MEMORY[0x277CC08F0];
  *(a1 + 168) = *MEMORY[0x277CC08F0];
  *(a1 + 184) = *(v4 + 16);
  *(a1 + 192) = 0;
  time2 = *a2;
  v6 = v9;
  CMTimeSubtract(&time1, &time2, &v6);
  *(a1 + 248) = time1;
  *(a1 + 296) = *v4;
  *(a1 + 312) = *(v4 + 16);
  time2 = *a2;
  v6 = v9;
  CMTimeSubtract(&time1, &time2, &v6);
  result = *&time1.value;
  *(a1 + 320) = time1;
  return result;
}

uint64_t validateInputVideoAndGetDuration(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(MEMORY[0x277CC0898] + 16);
  *a2 = *MEMORY[0x277CC0898];
  *(a2 + 16) = v4;
  v5 = sub_2418D1BB0(v3, &v11);
  if (!v5)
  {
    time1 = v11;
    v6 = MEMORY[0x277CC08F0];
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      time1 = v12;
      time2 = *v6;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        NSLog(&cfstr_InputVideoDura.isa);
      }

      else
      {
        time1 = v12;
        getMinimumSafeInputDuration_0(&time2);
        if (CMTimeCompare(&time1, &time2) > 0)
        {
          v5 = 0;
          *a2 = v12;
          goto LABEL_10;
        }

        getMinimumSafeInputDuration_0(&time1);
        Seconds = CMTimeGetSeconds(&time1);
        NSLog(&cfstr_InputVideoDura_0.isa, *&Seconds);
      }

      v5 = 7;
      goto LABEL_10;
    }

    NSLog(&cfstr_VideoTrackDoes.isa);
    v5 = 5;
  }

LABEL_10:

  return v5;
}

uint64_t createBundleDefaultGatingClassifierURL()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.acg.AutoLoop"];
  v1 = [v0 URLForResource:@"gatingClassifier" withExtension:@"plist"];

  return v1;
}

uint64_t autoloopSettingsSetGating(uint64_t result, uint64_t a2, uint64_t a3, char a4, int a5)
{
  if (result)
  {
    *(result + 224) = a3;
    *(result + 232) = a2;
    *(result + 216) = a4;
    v5 = 7;
    if (a5)
    {
      v5 = 23;
    }

    *(result + 208) = v5;
  }

  return result;
}

uint64_t autoloopSettingsSetGatingFeaturesProviderCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 400) = a2;
  *(result + 408) = a3;
  return result;
}

uint64_t sub_2418D1BB0(void *a1, _OWORD *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [v6 objectAtIndex:0];
      v8 = v7;
      if (v7)
      {
        [v7 timeRange];
        v9 = 0;
        *a2 = v11;
        a2[1] = v12;
        a2[2] = v13;
      }

      else
      {
        NSLog(&cfstr_MissingInputAs_0.isa);
        v9 = 5;
      }
    }

    else
    {
      NSLog(&cfstr_MissingInputAs_0.isa);
      v9 = 5;
    }
  }

  else
  {
    NSLog(&cfstr_MissingInputAs.isa);
    v9 = 5;
  }

  return v9;
}

uint64_t sub_2418D1CD8(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v9 = a2;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_50;
  }

  v11 = sub_2418D1BB0(v9, &v30);
  if (v11)
  {
    goto LABEL_51;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!a3)
  {
    goto LABEL_16;
  }

  v15 = 1;
  do
  {
    v17 = *a4++;
    v16 = v17;
    if (v17 > 1)
    {
      if (v16 != 2)
      {
        if (v16 == 3)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      v12 = 1;
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          v13 = 1;
          goto LABEL_14;
        }

LABEL_11:
        v15 = 0;
        goto LABEL_14;
      }

      v14 = 1;
    }

LABEL_14:
    --a3;
  }

  while (a3);
  if ((v15 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_16:
  sub_2418D12A8(a1, v14 & 1, v13 & 1, v12 & 1, &time1.start);
  *a5 = *&time1.start.value;
  *(a5 + 16) = time1.start.epoch;
  memset(&v29, 0, sizeof(v29));
  getMinimumSafeInputDuration_0(&v29);
  time1.start = v30.duration;
  *&time2.start.value = *a5;
  time2.start.epoch = *(a5 + 16);
  if (CMTimeCompare(&time1.start, &time2.start) < 0)
  {
    NSLog(&cfstr_InputVideoTrac.isa, v30.duration.value, v30.duration.timescale);
LABEL_36:
    v11 = 7;
    goto LABEL_51;
  }

  time1.start = v30.duration;
  time2.start = v29;
  if (CMTimeCompare(&time1.start, &time2.start) < 0)
  {
    NSLog(&cfstr_InputVideoTrac_0.isa, v30.duration.value, v30.duration.timescale);
    goto LABEL_36;
  }

  if (*(a1 + 368) == 1)
  {
    NSLog(&cfstr_WarningUsingSh.isa, v30.duration.value, v30.duration.timescale);
  }

  *&time1.start.value = *(a1 + 144);
  time1.start.epoch = *(a1 + 160);
  v18 = MEMORY[0x277CC08F0];
  *&time2.start.value = *MEMORY[0x277CC08F0];
  time2.start.epoch = *(MEMORY[0x277CC08F0] + 16);
  if (CMTimeCompare(&time1.start, &time2.start) < 1)
  {
    goto LABEL_50;
  }

  *&time1.start.value = *(a1 + 144);
  time1.start.epoch = *(a1 + 160);
  *&time2.start.value = *(a1 + 120);
  time2.start.epoch = *(a1 + 136);
  if (CMTimeCompare(&time1.start, &time2.start) < 0)
  {
    goto LABEL_50;
  }

  time1 = v30;
  *&time2.start.value = *(a1 + 72);
  time2.start.epoch = *(a1 + 88);
  if (!CMTimeRangeContainsTime(&time1, &time2.start))
  {
    NSLog(&cfstr_TrimStartLldDO.isa, *(a1 + 72), *(a1 + 80));
LABEL_43:
    v11 = 12;
    goto LABEL_51;
  }

  if ((*(a1 + 108) & 0x1D) == 1)
  {
    *&time1.start.value = *(a1 + 96);
    time1.start.epoch = *(a1 + 112);
    *&time2.start.value = *&v18->value;
    time2.start.epoch = v18->epoch;
    if (CMTimeCompare(&time1.start, &time2.start) <= 0)
    {
      NSLog(&cfstr_TrimLengthZero.isa);
      goto LABEL_43;
    }
  }

  memset(&time1, 0, sizeof(time1));
  time2 = v30;
  *&start.start.value = *(a1 + 72);
  start.start.epoch = *(a1 + 88);
  *&duration.start.value = *(a1 + 96);
  duration.start.epoch = *(a1 + 112);
  CMTimeRangeMake(&otherRange, &start.start, &duration.start);
  CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
  time2.start = time1.duration;
  start.start = v29;
  *&duration.start.value = *a5;
  duration.start.epoch = *(a5 + 16);
  CMTimeMaximum(&otherRange.start, &start.start, &duration.start);
  if (CMTimeCompare(&time2.start, &otherRange.start) < 0)
  {
    NSLog(&cfstr_TrimLengthLldD.isa, time1.duration.value, time1.duration.timescale);
    goto LABEL_43;
  }

  if ((~*(a1 + 12) & 0x11) != 0)
  {
    time2 = time1;
    *&otherRange.start.value = *a1;
    otherRange.start.epoch = *(a1 + 16);
    if (!CMTimeRangeContainsTime(&time2, &otherRange.start))
    {
      NSLog(&cfstr_ReferenceTimeL.isa, *a1, *(a1 + 8));
      goto LABEL_50;
    }
  }

  if ((*(a1 + 36) & 1) == 0 || (*(a1 + 60) & 1) == 0 || *(a1 + 64) || (*(a1 + 48) & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v20 = *(a1 + 40);
  *&time2.start.value = *(a1 + 24);
  *&time2.start.epoch = v20;
  *&time2.duration.timescale = *(a1 + 56);
  if ((*(a1 + 12) & 0x1D) == 1)
  {
    v21 = *(a1 + 40);
    *&start.start.value = *(a1 + 24);
    *&start.start.epoch = v21;
    *&start.duration.timescale = *(a1 + 56);
    v23 = *a1;
    v22 = *v18;
    CMTimeRangeMake(&duration, &v23, &v22);
    CMTimeRangeGetUnion(&otherRange, &start, &duration);
    time2 = otherRange;
  }

  otherRange = time1;
  start = time2;
  if (!CMTimeRangeContainsTimeRange(&otherRange, &start))
  {
    NSLog(&cfstr_RequiredRangeO.isa);
LABEL_50:
    v11 = 11;
    goto LABEL_51;
  }

  otherRange.start = time2.duration;
  *&duration.start.value = *(a1 + 144);
  duration.start.epoch = *(a1 + 160);
  v23 = *(a1 + 272);
  CMTimeMinimum(&start.start, &duration.start, &v23);
  if (CMTimeCompare(&otherRange.start, &start.start) >= 1)
  {
    NSLog(&cfstr_EffectiveRequi.isa);
    goto LABEL_50;
  }

LABEL_31:
  if (v14)
  {
    *&time2.start.value = *(a1 + 120);
    time2.start.epoch = *(a1 + 136);
    *&otherRange.start.value = *(a1 + 144);
    otherRange.start.epoch = *(a1 + 160);
    if (CMTimeCompare(&time2.start, &otherRange.start) > 0)
    {
      NSLog(&cfstr_InvalidSetting.isa);
      goto LABEL_50;
    }
  }

  if (v13)
  {
    *&time2.start.value = *(a1 + 248);
    time2.start.epoch = *(a1 + 264);
    *&otherRange.start.value = *(a1 + 272);
    otherRange.start.epoch = *(a1 + 288);
    if (CMTimeCompare(&time2.start, &otherRange.start) > 0)
    {
      NSLog(&cfstr_InvalidSetting_0.isa);
      goto LABEL_50;
    }
  }

  if (v12)
  {
    *&time2.start.value = *(a1 + 320);
    time2.start.epoch = *(a1 + 336);
    *&otherRange.start.value = *(a1 + 344);
    otherRange.start.epoch = *(a1 + 360);
    if (CMTimeCompare(&time2.start, &otherRange.start) >= 1)
    {
      NSLog(&cfstr_InvalidSetting_1.isa);
      goto LABEL_50;
    }
  }

  v11 = 0;
LABEL_51:

  return v11;
}

void autoloopSettingsSetPointOfInterestAndTrim(uint64_t a1, __int128 *a2, CMTime *a3, CMTime *a4, void *a5, int *a6)
{
  v11 = a5;
  *a6 = 0;
  if ((a3->flags & 0x1D) != 1)
  {
    goto LABEL_16;
  }

  time1 = *a3;
  v12 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    goto LABEL_16;
  }

  if ((a4->flags & 0x1D) != 1)
  {
    goto LABEL_16;
  }

  time1 = *a4;
  time2 = *v12;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    goto LABEL_16;
  }

  time1 = **&MEMORY[0x277CC0888];
  if (v11)
  {
    Duration = validateInputVideoAndGetDuration(v11, &time1);
  }

  else
  {
    Duration = 5;
  }

  *a6 = Duration;
  memset(&time2, 0, sizeof(time2));
  sub_2418D12A8(a1, 1, 1, 1, &time2);
  if (*a6)
  {
    goto LABEL_18;
  }

  v24 = time1;
  v23 = time2;
  if (CMTimeCompare(&v24, &v23) < 0)
  {
    v17 = 7;
    goto LABEL_17;
  }

  if (*a6)
  {
    goto LABEL_18;
  }

  v14 = *&a3->value;
  *(a1 + 88) = a3->epoch;
  *(a1 + 72) = v14;
  v15 = *&a4->value;
  *(a1 + 112) = a4->epoch;
  *(a1 + 96) = v15;
  v16 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v16;
  *&v23.value = *&time1.value;
  *&v21.value = *&a4->value;
  *&v22.value = *&v12->value;
  memset(&v24, 0, sizeof(v24));
  v23.epoch = time1.epoch;
  v21.epoch = a4->epoch;
  v22.epoch = v12->epoch;
  lhs = time1;
  v18 = *a3;
  CMTimeSubtract(&v19, &lhs, &v18);
  CMTimeMaximum(&lhs, &v22, &v19);
  CMTimeMinimum(&v22, &v21, &lhs);
  CMTimeMinimum(&v24, &v23, &v22);
  v23 = v24;
  getMinimumSafeInputDuration_0(&v22);
  if (CMTimeCompare(&v23, &v22) < 0)
  {
LABEL_16:
    v17 = 12;
LABEL_17:
    *a6 = v17;
    goto LABEL_18;
  }

  if ((v24.flags & 0x1D) == 1)
  {
    v23 = v24;
    v22 = time2;
    if (CMTimeCompare(&v23, &v22) < 0)
    {
      v23 = v24;
      sub_2418D14D8(a1, &v23);
    }
  }

  *a6 = sub_2418D1CD8(a1, v11, 0, 0, &v23);
LABEL_18:
}

id sub_2418D2654(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 208)];
  [v2 setObject:v3 forKeyedSubscript:qword_27E54E750];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 216)];
  [v2 setObject:v4 forKeyedSubscript:qword_27E54E758];

  *&v22.start.value = *a1;
  v22.start.epoch = *(a1 + 16);
  v5 = *MEMORY[0x277CBECE8];
  v6 = CMTimeCopyAsDictionary(&v22.start, *MEMORY[0x277CBECE8]);
  [v2 setObject:v6 forKeyedSubscript:qword_27E54E760];

  v7 = *(a1 + 40);
  *&v22.start.value = *(a1 + 24);
  *&v22.start.epoch = v7;
  *&v22.duration.timescale = *(a1 + 56);
  v8 = CMTimeRangeCopyAsDictionary(&v22, v5);
  [v2 setObject:v8 forKeyedSubscript:qword_27E54E768];

  *&v22.start.value = *(a1 + 72);
  v22.start.epoch = *(a1 + 88);
  v9 = CMTimeCopyAsDictionary(&v22.start, v5);
  [v2 setObject:v9 forKeyedSubscript:qword_27E54E770];

  *&v22.start.value = *(a1 + 96);
  v22.start.epoch = *(a1 + 112);
  v10 = CMTimeCopyAsDictionary(&v22.start, v5);
  [v2 setObject:v10 forKeyedSubscript:qword_27E54E778];

  *&v22.start.value = *(a1 + 168);
  v22.start.epoch = *(a1 + 184);
  v11 = CMTimeCopyAsDictionary(&v22.start, v5);
  [v2 setObject:v11 forKeyedSubscript:qword_27E54E780];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 196)];
  [v2 setObject:v12 forKeyedSubscript:qword_27E54E788];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 200)];
  [v2 setObject:v13 forKeyedSubscript:qword_27E54E790];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 204)];
  [v2 setObject:v14 forKeyedSubscript:qword_27E54E798];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:**(a1 + 240)];
  [v2 setObject:v15 forKeyedSubscript:qword_27E54E7A0];

  v16 = *(a1 + 240);
  v17 = *(v16 + 20);
  *&v22.start.value = *(v16 + 4);
  v22.start.epoch = v17;
  v18 = CMTimeCopyAsDictionary(&v22.start, v5);
  [v2 setObject:v18 forKeyedSubscript:qword_27E54E7A8];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(a1 + 240) + 36)];
  [v2 setObject:v19 forKeyedSubscript:qword_27E54E7B0];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a1 + 240) + 40)];
  [v2 setObject:v20 forKeyedSubscript:qword_27E54E7B8];

  return v2;
}

id alInterpolateMetadataForGap(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v120 = *MEMORY[0x277D85DE8];
  v77 = a3;
  v76 = a4;
  v73 = a5;
  v71 = a1;
  if (*(a1 + 12))
  {
    v70 = a2;
    if ((*(a2 + 12) & 1) == 0)
    {
      if (a6)
      {
        v115 = *MEMORY[0x277CCA068];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"End frame time not valid"];
        v116 = v13;
        obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];

        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AutoLoopsErrorDomain" code:5 userInfo:obj];
        goto LABEL_7;
      }

LABEL_8:
      v72 = 0;
      goto LABEL_82;
    }

    if (qword_281504A50 != -1)
    {
      sub_24190F1D4();
    }

    v69 = qword_281504A58;
    v74 = objc_opt_new();
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v69;
    v14 = [obj countByEnumeratingWithState:&v97 objects:v114 count:16];
    if (v14)
    {
      v15 = *v98;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v98 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v97 + 1) + 8 * i);
          v18 = [v77 objectForKey:v17];

          v19 = [v76 objectForKey:v17];

          if (v18 != 0 && v19 != 0)
          {
            [v74 addObject:v17];
          }

          else if ((v18 != 0) != (v19 != 0))
          {
            if (a6)
            {
              v112 = *MEMORY[0x277CCA068];
              v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Metadata key not found in both start and end data: %@", v17];
              v113 = v58;
              v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];

              *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AutoLoopsErrorDomain" code:5 userInfo:v59];
            }

            goto LABEL_79;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v97 objects:v114 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    if ([v74 count])
    {
      if ([v73 count])
      {
        __p = 0;
        v95 = 0;
        v96 = 0;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v85 = v73;
        v20 = [v85 countByEnumeratingWithState:&v90 objects:v107 count:16];
        if (!v20)
        {
          goto LABEL_43;
        }

        v21 = *v91;
LABEL_25:
        v22 = 0;
        while (1)
        {
          if (*v91 != v21)
          {
            objc_enumerationMutation(v85);
          }

          v23 = *(*(&v90 + 1) + 8 * v22);
          memset(&v119, 0, sizeof(v119));
          CMTimeMakeFromDictionary(&v119, v23);
          if ((v119.flags & 1) == 0)
          {
            break;
          }

          v24 = v95;
          if (v95 >= v96)
          {
            v27 = 0xAAAAAAAAAAAAAAABLL * ((v95 - __p) >> 3);
            v28 = v27 + 1;
            if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_2418D3940();
            }

            if (0x5555555555555556 * ((v96 - __p) >> 3) > v28)
            {
              v28 = 0x5555555555555556 * ((v96 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v96 - __p) >> 3) >= 0x555555555555555)
            {
              v29 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              sub_2418D39E8(&__p, v29);
            }

            v30 = 8 * ((v95 - __p) >> 3);
            v31 = *&v119.value;
            *(v30 + 16) = v119.epoch;
            *v30 = v31;
            v26 = 24 * v27 + 24;
            v32 = (24 * v27 - (v95 - __p));
            memcpy((v30 - (v95 - __p)), __p, v95 - __p);
            v33 = __p;
            __p = v32;
            v95 = v26;
            v96 = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            v25 = *&v119.value;
            v95[2] = v119.epoch;
            *v24 = v25;
            v26 = v24 + 24;
          }

          v95 = v26;
          if (v20 == ++v22)
          {
            v20 = [v85 countByEnumeratingWithState:&v90 objects:v107 count:16];
            if (!v20)
            {
LABEL_43:

              v72 = objc_opt_new();
              v34 = __p;
              v67 = v95;
              if (__p == v95)
              {
                goto LABEL_90;
              }

              while (2)
              {
                v89 = *v71;
                v88 = *v70;
                v87 = *v34;
                v68 = v34;
                v35 = v74;
                v82 = v77;
                v81 = v76;
                v83 = objc_opt_new();
                v103 = 0u;
                v104 = 0u;
                v101 = 0u;
                v102 = 0u;
                v80 = v35;
                v36 = [v80 countByEnumeratingWithState:&v101 objects:&v119 count:16];
                if (!v36)
                {
                  goto LABEL_74;
                }

                v84 = *v102;
LABEL_46:
                v86 = v36;
                v37 = 0;
LABEL_47:
                if (*v102 != v84)
                {
                  objc_enumerationMutation(v80);
                }

                v38 = *(*(&v101 + 1) + 8 * v37);
                if (([@"privECMVct" isEqualToString:v38] & 1) != 0 || objc_msgSend(@"privEMBVct", "isEqualToString:", v38))
                {
                  v39 = [v82 objectForKeyedSubscript:v38];
                  v40 = [v81 objectForKeyedSubscript:v38];
                  sub_2418D37FC(&v89, &v88, &v87);
                  v42 = v41;
                  v43 = v39;
                  v44 = v40;
                  v45 = [v43 count];
                  if (v45 == [v44 count])
                  {
                    v46 = objc_opt_new();
                    for (j = 0; [v43 count] > j; ++j)
                    {
                      v48 = [v43 objectAtIndexedSubscript:j];
                      [v48 doubleValue];
                      v50 = v49;

                      v51 = [v44 objectAtIndexedSubscript:j];
                      [v51 doubleValue];
                      v53 = v52;

                      v54 = [MEMORY[0x277CCABB0] numberWithDouble:v50 + v42 * (v53 - v50)];
                      [v46 addObject:v54];
                    }
                  }

                  else
                  {
                    v46 = 0;
                  }

                  [v83 setObject:v46 forKeyedSubscript:v38];
                  goto LABEL_69;
                }

                if (([@"privET" isEqualToString:v38] & 1) != 0 || (objc_msgSend(@"privTZF", "isEqualToString:", v38) & 1) != 0 || (objc_msgSend(@"privImgG", "isEqualToString:", v38) & 1) != 0 || (objc_msgSend(@"privAFS", "isEqualToString:", v38) & 1) != 0 || (objc_msgSend(@"privAFSt", "isEqualToString:", v38) & 1) != 0 || objc_msgSend(@"privFM", "isEqualToString:", v38))
                {
                  sub_2418D37FC(&v89, &v88, &v87);
                  v56 = v55;
                  if (v55 >= 0.5)
                  {
                    v57 = [v81 objectForKeyedSubscript:v38];
                    v78 = v57;
                  }

                  else
                  {
                    v57 = [v82 objectForKeyedSubscript:v38];
                    v79 = v57;
                  }

                  [v83 setObject:v57 forKeyedSubscript:v38];
                  if (v56 >= 0.5)
                  {
                    v43 = v78;
                  }

                  else
                  {
                    v43 = v79;
                  }

LABEL_69:
                }

                else
                {
                  NSLog(&cfstr_Getgapfilldata.isa, v38);
                }

                if (++v37 == v86)
                {
                  v36 = [v80 countByEnumeratingWithState:&v101 objects:&v119 count:16];
                  if (!v36)
                  {
LABEL_74:

                    [v72 addObject:v83];
                    v34 = v68 + 1;
                    if (&v68[1] == v67)
                    {
                      goto LABEL_90;
                    }

                    continue;
                  }

                  goto LABEL_46;
                }

                goto LABEL_47;
              }
            }

            goto LABEL_25;
          }
        }

        if (a6)
        {
          v105 = *MEMORY[0x277CCA068];
          v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fill time CMTime dict at index %zu is invalid", 0xAAAAAAAAAAAAAAABLL * ((v95 - __p) >> 3)];
          v106 = v63;
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];

          *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AutoLoopsErrorDomain" code:5 userInfo:v64];
        }

        v72 = 0;
LABEL_90:
        if (__p)
        {
          v95 = __p;
          operator delete(__p);
        }

        goto LABEL_80;
      }

      if (a6)
      {
        v108 = *MEMORY[0x277CCA068];
        v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"No fill times provided to interpolate"];
        v109 = v65;
        v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];

        *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AutoLoopsErrorDomain" code:5 userInfo:v66];
      }
    }

    else if (a6)
    {
      v110 = *MEMORY[0x277CCA068];
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"No keys available to interpolate"];
      v111 = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];

      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AutoLoopsErrorDomain" code:5 userInfo:v62];
    }

LABEL_79:
    v72 = 0;
LABEL_80:

    goto LABEL_81;
  }

  if (!a6)
  {
    goto LABEL_8;
  }

  v117 = *MEMORY[0x277CCA068];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Start frame time not valid"];
  v118 = v11;
  obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AutoLoopsErrorDomain" code:5 userInfo:obj];
LABEL_7:
  v72 = 0;
  *a6 = v12;
LABEL_81:

LABEL_82:

  return v72;
}

void sub_2418D373C()
{
  v2[8] = *MEMORY[0x277D85DE8];
  v2[0] = @"privECMVct";
  v2[1] = @"privEMBVct";
  v2[2] = @"privET";
  v2[3] = @"privTZF";
  v2[4] = @"privImgG";
  v2[5] = @"privAFS";
  v2[6] = @"privAFSt";
  v2[7] = @"privFM";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:8];
  v1 = qword_281504A58;
  qword_281504A58 = v0;
}

void sub_2418D37FC(CMTime *a1, CMTime *a2, CMTime *a3)
{
  lhs = *a3;
  rhs = *a1;
  CMTimeSubtract(&v9, &lhs, &rhs);
  lhs = v9;
  v5 = MEMORY[0x277CC08F0];
  rhs = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&lhs, &rhs))
  {
    rhs = *a2;
    v6 = *a1;
    CMTimeSubtract(&lhs, &rhs, &v6);
    rhs = lhs;
    v6 = *v5;
    if (CMTimeCompare(&rhs, &v6))
    {
      rhs = v9;
      CMTimeGetSeconds(&rhs);
      rhs = lhs;
      CMTimeGetSeconds(&rhs);
    }
  }
}

void sub_2418D3958(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2418D39B4(exception, a1);
  __cxa_throw(exception, off_278CF7AE0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2418D39B4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2418D39E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2418D3A40();
}

void sub_2418D3A40()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_2418D3C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AutoLoopStabilizer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2418D5684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_2418D5768(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2418D39E8(result, a2);
    }

    sub_2418D3940();
  }

  return result;
}

void sub_2418D5D00(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_2418D3940();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_2418D5E08(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_2418D5E08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2418D3A40();
}

uint64_t sub_2418D5E6C(uint64_t a1, void *a2, void *a3, uint64_t a4, int *a5, void *a6, void *a7, void *a8)
{
  v157 = *MEMORY[0x277D85DE8];
  ptr = a1;
  v122 = a2;
  v120 = a3;
  v125 = a8;
  v12 = sub_2418FE498(1);
  spid = os_signpost_id_make_with_pointer(v12, &ptr);

  v13 = sub_2418FE498(1);
  v14 = v13;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_2418D0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ALRunLiveAnalysisPipeline", &unk_24191C465, &buf, 2u);
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v15 = MEMORY[0x277CC0888];
  v149 = **&MEMORY[0x277CC0888];
  Duration = validateInputVideoAndGetDuration(v120, &v149);
  if (Duration)
  {
    v17 = 0;
  }

  else
  {
    v17 = v122 == 0;
  }

  if (v17)
  {
    v18 = 28;
  }

  else
  {
    v18 = Duration;
  }

  v148 = *v15;
  v123 = v18;
  if (!v18)
  {
    v123 = sub_2418D1CD8(ptr, v120, a4, a5, &v148);
    if (!v123)
    {
      operator new();
    }
  }

  *&buf.value = xmmword_2419116D0;
  v146 = 0;
  v147 = 0;
  v145 = 0;
  sub_2418DB64C(&v145, &buf, &buf.epoch, 4uLL);
  __p = 0;
  v143 = 0;
  v144 = 0;
  v19 = *(ptr + 16);
  *&v141.value = *ptr;
  v141.epoch = v19;
  v140 = *(ptr + 72);
  v139 = *(ptr + 96);
  memset(&v138, 0, sizeof(v138));
  lhs = *(ptr + 120);
  rhs = *(ptr + 168);
  CMTimeAdd(&buf, &lhs, &rhs);
  v20 = v123;
  lhs = v148;
  CMTimeMaximum(&v138, &buf, &lhs);
  v21 = a6;
  v121 = 0;
  v137 = -2;
  if (!v123)
  {
    v22 = 0;
    v23 = (v146 - v145) >> 2;
    v24 = -1;
    do
    {
      v25 = v22;
      v26 = *(v145 + v22++);
      ++v24;
    }

    while (v26 != 1 && v23 > v25);
    v28 = 1.0 / v23;
    v29 = v24;
    if (v23 <= v25)
    {
      v29 = 0.0;
    }

    v30 = v28 * v29;
    v31 = v125[2](v125, (v28 * v29) + (v28 * 0.0));
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = sub_2418D780C;
    v133[3] = &unk_278CF7B58;
    v134 = v125;
    v135 = v30;
    v136 = v28;
    v32 = MEMORY[0x245CF2970](v133);
    if (v31)
    {
      lhs = v149;
      rhs = v141;
      v152 = v140;
      v151 = v139;
      v33 = sub_2418D7828(&buf, ptr, &lhs, &rhs, &v152, &v151);
      if (v33)
      {
        v20 = v33;
        v121 = 0;
      }

      else
      {
        v132 = 0;
        v34 = v156;
        if (v156)
        {
          v35 = &v131;
        }

        else
        {
          v35 = 0;
        }

        if (v156 == 1)
        {
          v131 = 0;
        }

        v20 = sub_2418D7D18(v120, &buf, v32, &v132, &v137, v35);
        v121 = v132;
        if (v34)
        {
          v36 = v131;
        }

        else
        {
          v36 = 0;
        }

        if (a7)
        {
          *a7 = v121;
        }

        if ((*(ptr + 208) & 2) != 0)
        {
          v37 = __p;
          if (v143 != __p)
          {
            v38 = 0;
            v39 = 1;
            v40 = v137;
            do
            {
              v41 = *(v37[v38] + 24);
              *(v41 + 96) = v40;
              objc_storeStrong((v41 + 104), v36);
              v38 = v39;
              v37 = __p;
              ++v39;
            }

            while (v38 < (v143 - __p) >> 3);
          }
        }
      }
    }

    else
    {
      v121 = 0;
      v20 = v31 ^ 1u;
    }

    v21 = a6;
  }

  if (!v20)
  {
    v42 = ptr;
    if ((*(ptr + 208) & 2) != 0)
    {
      v43 = __p;
      if (v143 != __p)
      {
        v44 = 0;
        v45 = 1;
        do
        {
          sub_2418F6020(v43[v44]);
          v44 = v45;
          v43 = __p;
          ++v45;
        }

        while (v44 < (v143 - __p) >> 3);
      }

      v42 = ptr;
    }

    v46 = v121;
    v47 = [v46 frameTimes];
    memset(&lhs, 0, sizeof(lhs));
    sub_2418DB584(&lhs, *v47, v47[1], 0xAAAAAAAAAAAAAAABLL * ((v47[1] - *v47) >> 3));
    memset(&rhs, 0, sizeof(rhs));
    if (v46)
    {
      [v46 roiLength];
    }

    v48 = *(v42 + 240);
    if ((~*(v48 + 16) & 0x11) != 0)
    {
      v49 = *(v48 + 4);
      v152.epoch = *(v48 + 20);
      *&v152.value = v49;
    }

    else
    {
      sub_24190EC24(&lhs, 0, &v152);
      v48 = *(v42 + 240);
    }

    buf = v152;
    v50 = *v48;
    v151 = rhs;
    sub_241908318(v50);
  }

  if (*(ptr + 392))
  {
    v51 = 0;
  }

  else
  {
    v51 = *(ptr + 384) == 0;
  }

  v115 = *(ptr + 408);
  v52 = v20 != 0;
  v118 = v51;
  v116 = v52 || v51;
  if (!v52 && !v51)
  {
    if (sub_2418E8B00(0, 2))
    {
      operator new();
    }

    v53 = ptr;
    v54 = *(ptr + 392);
    if (v54)
    {
      v54(*(ptr + 376), 0, 2, 0);
      v53 = ptr;
    }

    v55 = *(v53 + 384);
    if (v55)
    {
      v55(*(v53 + 376), 0, 2, 0);
    }
  }

  if (!v52)
  {
    v56 = 0;
    v57 = (v146 - v145) >> 2;
    v58 = -1;
    do
    {
      v59 = v56;
      v60 = *(v145 + v56++);
      ++v58;
    }

    while (v60 != 2 && v57 > v59);
    v62 = 1.0 / v57;
    v63 = v58;
    if (v57 <= v59)
    {
      v63 = 0.0;
    }

    v64 = v62 * v63;
    v65 = (v125[2])((v62 * v63) + (v62 * 0.0));
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = sub_2418D8238;
    v127[3] = &unk_278CF7B58;
    v128 = v125;
    v129 = v64;
    v130 = v62;
    v66 = MEMORY[0x245CF2970](v127);
    if (v65)
    {
      *&buf.timescale = 0;
      buf.epoch = 0;
      buf.value = &buf.timescale;
      v67 = __p;
      if (v143 != __p)
      {
        v68 = 0;
        v69 = 1;
        do
        {
          v70 = v67[v68];
          v71 = *(v70 + 16);
          if (v71)
          {
            LODWORD(v71) = *v71;
          }

          v72 = *(v70 + 24);
          LODWORD(rhs.value) = v71;
          lhs.value = &rhs;
          sub_2418DB7E0(&buf, &rhs)[5] = v72;
          v68 = v69;
          v67 = __p;
          ++v69;
        }

        while (v68 < (v143 - __p) >> 3);
      }

      v20 = sub_2418D8254(ptr, v122, v120, v66, v137, v121, 0, 0, &buf);
      sub_2418DB78C(&buf, *&buf.timescale);
    }

    else
    {
      v20 = 1;
    }

    v21 = a6;
  }

  v124 = v20;
  if (v20)
  {
LABEL_93:
    if (v20)
    {
      goto LABEL_119;
    }

    goto LABEL_94;
  }

  if ((*(ptr + 208) & 4) != 0)
  {
    v73 = __p;
    v74 = v143;
    if (v143 != __p)
    {
      v75 = 0;
      v76 = 1;
      do
      {
        sub_2418F61C8(v73[v75]);
        v75 = v76;
        v73 = __p;
        v74 = v143;
        ++v76;
      }

      while (v75 < (v143 - __p) >> 3);
    }

    if (v74 != v73)
    {
      v77 = 0;
      v78 = 1;
      do
      {
        sub_2418F6268(v73[v77]);
        v77 = v78;
        v73 = __p;
        ++v78;
      }

      while (v77 < (v143 - __p) >> 3);
    }

    goto LABEL_93;
  }

LABEL_94:
  v79 = __p;
  if (v143 != __p)
  {
    v80 = 0;
    v81 = 1;
    do
    {
      sub_2418F6468(v79[v80]);
      v80 = v81;
      v79 = __p;
      ++v81;
    }

    while (v80 < (v143 - __p) >> 3);
  }

  v114 = [v122 URLByAppendingPathComponent:@"gatingData.plist"];
  v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v83 = __p;
  if (v143 != __p)
  {
    v84 = 0;
    v85 = 1;
    while (1)
    {
      v86 = v83[v84];
      v87 = *(v86 + 16);
      v88 = v87 ? *v87 : 0;
      v89 = *(v86 + 24);
      v90 = sub_2418E8D9C(0, v88);
      v91 = sub_2418E8FD0(v88);
      v92 = [@"gatingFeatures-" stringByAppendingString:v91];

      if (v88)
      {
        break;
      }

      v94 = @"gatingResults";
      if (v89)
      {
        goto LABEL_106;
      }

LABEL_107:
      if (v90)
      {
        v96 = sub_2418F49D8(v90);
        [v82 setObject:v96 forKeyedSubscript:v94];
      }

      v84 = v85;
      v83 = __p;
      ++v85;
      v21 = a6;
      if (v84 >= (v143 - __p) >> 3)
      {
        goto LABEL_110;
      }
    }

    v93 = sub_2418E8FD0(v88);
    v94 = [@"gatingResults-" stringByAppendingString:v93];

    if (!v89)
    {
      goto LABEL_107;
    }

LABEL_106:
    v95 = sub_2418E0FF4(v89, v88 == 0, (*(ptr + 208) >> 4) & 1);
    [v82 setObject:v95 forKeyedSubscript:v92];

    goto LABEL_107;
  }

LABEL_110:
  if (([v82 writeToURL:v114 atomically:1] & 1) == 0)
  {
    NSLog(&cfstr_FailedToWriteG.isa);
  }

  v97 = *(ptr + 408);
  if (v97)
  {
    v97(*(ptr + 400), v82);
  }

  if (v21)
  {
    *a6 = 0;
  }

  v98 = [v122 URLByAppendingPathComponent:@"autoloopSettings.plist"];
  v99 = sub_2418D2654(ptr);
  [v99 writeToURL:v98 atomically:1];

  if (v121)
  {
    v100 = [v122 URLByAppendingPathComponent:@"stabilizeParams.plist"];
    [v121 writeToURL:v100];
  }

  v20 = v124;
LABEL_119:
  if (((v118 | v116 ^ 1) & 1) == 0)
  {
    v101 = ptr;
    v102 = *(ptr + 392);
    if (v102)
    {
      v102(*(ptr + 376), v20, 2, 0);
      v101 = ptr;
    }

    v103 = *(v101 + 384);
    if (v103)
    {
      v103(*(v101 + 376), v20, 2, 0);
    }
  }

  if (v115)
  {
    if (v20)
    {
      v104 = *(ptr + 408);
      if (v104)
      {
        v104(*(ptr + 400), 0);
      }
    }
  }

  v105 = __p;
  if (v143 != __p)
  {
    v106 = 0;
    v107 = 1;
    do
    {
      v108 = v105[v106];
      if (*(v108 + 24))
      {
        v109 = sub_2418E0FF0();
        MEMORY[0x245CF24E0](v109, 0x10A0C40581A9675);
      }

      v110 = sub_2418F5C88(v108);
      MEMORY[0x245CF24E0](v110, 0xA0C40A3561BEDLL);
      v106 = v107;
      v105 = __p;
      ++v107;
    }

    while (v106 < (v143 - __p) >> 3);
  }

  (v125[2])(1.0);
  v111 = sub_2418FE498(1);
  v112 = v111;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v111))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_2418D0000, v112, OS_SIGNPOST_INTERVAL_END, spid, "ALRunLiveAnalysisPipeline", &unk_24191C465, &buf, 2u);
  }

  if (__p)
  {
    v143 = __p;
    operator delete(__p);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  return v124;
}

void sub_2418D7424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, void *a62)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a62)
  {
    operator delete(a62);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2418D7828(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, CMTime *a5, uint64_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((a5->flags & 0x1D) == 1)
  {
    v10 = a5;
  }

  else
  {
    v10 = (a2 + 72);
  }

  v35 = *v10;
  v11 = a2 + 96;
  if ((*(a6 + 12) & 0x1D) == 1)
  {
    v12 = a6;
  }

  else
  {
    v12 = a2 + 96;
  }

  v13 = *v12;
  v34 = *(v12 + 16);
  v33 = v13;
  memset(&v32, 0, sizeof(v32));
  *&start.start.value = *&v10->value;
  start.start.epoch = v10->epoch;
  *&duration.start.value = *v12;
  duration.start.epoch = *(v12 + 16);
  CMTimeRangeMake(&v32, &start.start, &duration.start);
  if ((*(a4 + 12) & 0x1D) == 1)
  {
    v14 = a4;
  }

  else
  {
    v14 = a2;
  }

  v36 = *v14;
  v15 = *(v14 + 12);
  v37 = *(v14 + 8);
  v16 = *(v14 + 16);
  start.start = v35;
  *&duration.start.value = *(a2 + 72);
  duration.start.epoch = *(a2 + 88);
  if (CMTimeCompare(&start.start, &duration.start) < 0)
  {
    return 15;
  }

  *&start.start.value = v33;
  start.start.epoch = v34;
  *&duration.start.value = *v11;
  duration.start.epoch = *(v11 + 16);
  if (CMTimeCompare(&start.start, &duration.start) > 0)
  {
    return 15;
  }

  memset(&start, 0, sizeof(start));
  v18 = MEMORY[0x277CC08F0];
  *&time.start.value = *MEMORY[0x277CC08F0];
  time.start.epoch = *(MEMORY[0x277CC08F0] + 16);
  time2 = *a3;
  CMTimeRangeMake(&duration, &time.start, &time2);
  time = v32;
  CMTimeRangeGetIntersection(&start, &duration, &time);
  if ((~v15 & 0x11) != 0 && (duration = start, time.start.value = v36, time.start.timescale = v37, time.start.flags = v15, time.start.epoch = v16, !CMTimeRangeContainsTime(&duration, &time.start)))
  {
    NSLog(&cfstr_Runautoloopsta.isa);
    return 13;
  }

  else
  {
    *(a1 + 125) = *(a2 + 205);
    *a1 = *(a2 + 200);
    *(a1 + 4) = v36;
    *(a1 + 12) = v37;
    *(a1 + 16) = v15;
    *(a1 + 20) = v16;
    *(a1 + 28) = v35;
    *(a1 + 68) = v34;
    *(a1 + 52) = v33;
    *(a1 + 124) = (*(a2 + 208) & 2) != 0;
    memset(&duration, 0, 24);
    sub_2418D12A8(a2, 1, 1, 1, &duration.start);
    memset(&time, 0, 24);
    *&start.start.value = v33;
    start.start.epoch = v34;
    time2 = *a3;
    CMTimeMinimum(&time.start, &start.start, &time2);
    time2 = *v18;
    *&start.start.value = *&time.start.value;
    start.start.epoch = time.start.epoch;
    rhs = duration.start;
    if (CMTimeCompare(&start.start, &rhs) >= 1)
    {
      *&start.start.value = *&time.start.value;
      start.start.epoch = time.start.epoch;
      rhs = duration.start;
      CMTimeSubtract(&time2, &start.start, &rhs);
    }

    memset(&rhs, 0, sizeof(rhs));
    start.start = time2;
    CMTimeMultiplyByRatio(&rhs, &start.start, 1, 2);
    v26 = rhs;
    v25 = rhs;
    if ((*(a2 + 36) & 1) != 0 && (*(a2 + 60) & 1) != 0 && !*(a2 + 64) && (*(a2 + 48) & 0x8000000000000000) == 0)
    {
      start.start = rhs;
      lhs = *(a2 + 24);
      v22 = v35;
      CMTimeSubtract(&v24, &lhs, &v22);
      CMTimeMinimum(&v26, &start.start, &v24);
      memset(&v24, 0, sizeof(v24));
      lhs = *a3;
      start = v32;
      CMTimeRangeGetEnd(&v22, &start);
      CMTimeMinimum(&v24, &lhs, &v22);
      start.start = v25;
      v22 = v24;
      v21 = *(a2 + 24);
      CMTimeSubtract(&lhs, &v22, &v21);
      CMTimeMinimum(&v25, &start.start, &lhs);
    }

    epoch = v18->epoch;
    *(a1 + 92) = epoch;
    v20 = *&v18->value;
    *(a1 + 76) = *&v18->value;
    *(a1 + 100) = v20;
    *(a1 + 116) = epoch;
    if (*(a2 + 204) == 1)
    {
      *(a1 + 76) = v26;
      *(a1 + 100) = v25;
    }

    return 0;
  }
}

uint64_t sub_2418D7D18(void *a1, uint64_t a2, void *a3, void *a4, int *a5, void *a6)
{
  v10 = a1;
  ptr = a2;
  v11 = a3;
  v38 = v11;
  v12 = sub_2418FE498(1);
  v13 = os_signpost_id_make_with_pointer(v12, &ptr);

  v14 = sub_2418FE498(1);
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2418D0000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ALRunAutoLoopStabilize", &unk_24191C465, buf, 2u);
  }

  v39 = a4;
  spid = v13;

  *a5 = -2;
  v17 = objc_alloc_init(AutoLoopStabilizer);
  v18 = ptr;
  v19 = v10;
  v20 = v11;
  v21 = v17;
  v22 = v20[2](v20, 0.0);
  if (v22)
  {
    *buf = MEMORY[0x277D85DD0];
    v46 = 3221225472;
    v47 = sub_2418DB574;
    v48 = &unk_278CF7B80;
    v49 = v20;
    [(AutoLoopStabilizer *)v21 setStatusUpdateBlock:buf, v38, v10];
    [(AutoLoopStabilizer *)v21 setMovieAssetIn:v19];
    v23 = *(v18 + 4);
    v44 = *(v18 + 20);
    *v43 = v23;
    [(AutoLoopStabilizer *)v21 setRefFrameTime:v43];
    if ((*(v18 + 40) & 0x1D) == 1)
    {
      [(AutoLoopStabilizer *)v21 setUseLimitedTime:1];
      *v43 = *(v18 + 28);
      v44 = *(v18 + 44);
      [(AutoLoopStabilizer *)v21 setTrimStart:v43];
      v24 = v18 + 52;
      if ((*(v18 + 64) & 0x1D) != 1)
      {
        v24 = MEMORY[0x277CC08B0];
      }

      *v43 = *v24;
      v44 = *(v24 + 16);
      [(AutoLoopStabilizer *)v21 setTrimLength:v43];
    }

    [(AutoLoopStabilizer *)v21 setDisableGPUStabilization:*(v18 + 125)];
    [(AutoLoopStabilizer *)v21 setOptimizeProcessingForMemory:*(v18 + 126)];
    *v43 = *(v18 + 76);
    v44 = *(v18 + 92);
    [(AutoLoopStabilizer *)v21 setMaxAllowedTrimTimeStart:v43];
    *v43 = *(v18 + 100);
    v44 = *(v18 + 116);
    [(AutoLoopStabilizer *)v21 setMaxAllowedTrimTimeEnd:v43];
  }

  v25 = v22 ^ 1u;

  *buf = 0;
  if ((v22 ^ 1))
  {
    v27 = 0;
    v26 = -8888;
    if (!v25)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = [(AutoLoopStabilizer *)v21 analyzeForAutoloopWithDirect:0 toAnalysisOutput:buf];
    v27 = *buf;
    if (*buf)
    {
      v25 = 16 * (v26 == 0);
    }

    else
    {
      v25 = 16 * (v26 != -1);
    }

    if (!v25)
    {
LABEL_17:
      v28 = ptr;
      v29 = v21;
      v30 = v29;
      *a5 = -2;
      if (v26 == -1)
      {
        *a5 = -1;
        v25 = 1;
      }

      else
      {
        if (v26)
        {
          if (*v28 == 4)
          {
            v31 = [(AutoLoopStabilizer *)v29 processStabilizationAnalysisForCinematicL1:v27];
          }

          else
          {
            v31 = [(AutoLoopStabilizer *)v29 processStabilizationAnalysis:v27 forcePassThru:*v28 == 3 forceSmoothing:*v28 == 2 forceSequentialTripod:*v28 == 1];
          }

          *a5 = v31;
          if ((v31 + 1) >= 2)
          {
            v32 = [[StabilizeParamGenerator alloc] initWithStabilizer:v30];
            v33 = [(StabilizeParamGenerator *)v32 generateStabilizeParams];
            if (![v33 numFrames])
            {

              v33 = 0;
              *a5 = 0;
            }

            v34 = v33;
            *v39 = v33;

            v31 = *a5;
          }

          v25 = v31 == -1;
          if (v31)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a5 = 0;
        }

        v25 = 16;
      }

LABEL_30:
    }
  }

  if (a6 && (*(ptr + 124) & 1) != 0)
  {
    *a6 = [(AutoLoopStabilizer *)v21 featuresDictionary];
  }

  if (*buf)
  {
    ICDestroyResult();
  }

  v20[2](v20, 1.0);
  v35 = sub_2418FE498(1);
  v36 = v35;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *v43 = 0;
    _os_signpost_emit_with_name_impl(&dword_2418D0000, v36, OS_SIGNPOST_INTERVAL_END, spid, "ALRunAutoLoopStabilize", &unk_24191C465, v43, 2u);
  }

  return v25;
}

uint64_t sub_2418D8254(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ptr = a1;
  v39 = a2;
  v41 = a3;
  v14 = a4;
  v40 = a6;
  v15 = sub_2418FE498(1);
  v16 = os_signpost_id_make_with_pointer(v15, &ptr);

  v17 = sub_2418FE498(1);
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2418D0000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ALRunAutoLoopAnalyze", &unk_24191C465, buf, 2u);
  }

  v14[2](v14, 0.0);
  spid = v16;
  v38 = v16 - 1;
  if (a8)
  {
    sub_2418E8B00(a8, 0);
    v42 = sub_2418E8B00(a8, 1);
    sub_2418E8B00(a8, 2);
    sub_2418E8B00(a8, 3);
    v19 = (*(*a7 + 24))(a7);
    if (v42)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= v20)
    {
      memset(&v48, 0, sizeof(v48));
      *time = *(a7 + 60);
      *&time[16] = *(a7 + 76);
      v22 = (*(*a7 + 24))(a7);
      CMTimeMultiply(&v46, time, v22);
      *time = *(ptr + 120);
      *&time[16] = *(ptr + 136);
      multiplier = *(ptr + 168);
      sub_2418EEE88(&v46, time, &multiplier, &v48, *(ptr + 192));
      *time = *(a7 + 60);
      *&time[16] = *(a7 + 76);
      v23 = (*(*a7 + 24))(a7);
      CMTimeMultiply(&v46, time, v23);
      *time = *(ptr + 120);
      *&time[16] = *(ptr + 136);
      multiplier = *(ptr + 144);
      v50 = v48;
      v21 = sub_2418EF014(buf, &v46.value, time, &multiplier, &v50.value);
      if (v42 && v21 == 0)
      {
        memset(&v48, 0, sizeof(v48));
        *time = *(a7 + 60);
        *&time[16] = *(a7 + 76);
        v24 = (*(*a7 + 24))(a7);
        CMTimeMultiply(&v46, time, v24);
        *time = *(ptr + 248);
        *&time[16] = *(ptr + 264);
        multiplier = *(ptr + 296);
        sub_2418EEE88(&v46, time, &multiplier, &v48, *(ptr + 192));
        *time = *(a7 + 60);
        *&time[16] = *(a7 + 76);
        v25 = (*(*a7 + 24))(a7);
        CMTimeMultiply(&v46, time, v25);
        *time = *(ptr + 248);
        *&time[16] = *(ptr + 264);
        multiplier = *(ptr + 272);
        v50 = v48;
        v21 = sub_2418EF014(v52, &v46.value, time, &multiplier, &v50.value);
      }

      if (!v21)
      {
        v26 = *(ptr + 16);
        *&multiplier.value = *ptr;
        multiplier.epoch = v26;
        v27 = *(ptr + 40);
        *time = *(ptr + 24);
        *&time[16] = v27;
        v45 = *(ptr + 56);
        v21 = sub_2418FE5EC(a7, &v48, buf, &multiplier, time, 1u);
        LODWORD(multiplier.value) = 0;
        *time = &multiplier;
        if (sub_2418DB7E0(a9, &multiplier)[5])
        {
          LODWORD(multiplier.value) = 0;
          *time = &multiplier;
          v28 = sub_2418DB7E0(a9, &multiplier);
          *(v28[5] + 208) = v49 ^ 1;
        }

        if (v42 && v21 == 0)
        {
          v29 = *(ptr + 16);
          *&multiplier.value = *ptr;
          multiplier.epoch = v29;
          v30 = *(ptr + 40);
          *time = *(ptr + 24);
          *&time[16] = v30;
          v45 = *(ptr + 56);
          v21 = sub_2418FE5EC(a7, &v46, v52, &multiplier, time, 2u);
          LODWORD(multiplier.value) = 1;
          *time = &multiplier;
          if (sub_2418DB7E0(a9, &multiplier)[5])
          {
            LODWORD(multiplier.value) = 1;
            *time = &multiplier;
            v31 = sub_2418DB7E0(a9, &multiplier);
            *(v31[5] + 208) = v47 ^ 1;
          }
        }

        if (!v21)
        {
          LODWORD(multiplier.value) = 3;
          *time = &multiplier;
          if (sub_2418DB7E0(a9, &multiplier)[5])
          {
            LODWORD(multiplier.value) = 3;
            *time = &multiplier;
            *(sub_2418DB7E0(a9, &multiplier)[5] + 208) = 1;
          }

          LODWORD(multiplier.value) = 2;
          *time = &multiplier;
          if (sub_2418DB7E0(a9, &multiplier)[5])
          {
            LODWORD(multiplier.value) = 2;
            *time = &multiplier;
            *(sub_2418DB7E0(a9, &multiplier)[5] + 208) = 1;
          }

          sub_2418FEA8C();
        }
      }
    }

    else
    {
      v21 = 14;
    }
  }

  else
  {
    v21 = 32;
  }

  memset(time, 0, 24);
  memset(&multiplier, 0, sizeof(multiplier));
  v50.value = 0;
  *&v50.timescale = 0;
  v50.epoch = 0x100000000;
  (*(*a7 + 24))(a7);
  (*(*a7 + 24))(a7);
  if (objc_opt_respondsToSelector())
  {
    v32 = [v41 URL];
    v33 = [v32 lastPathComponent];
    [v33 UTF8String];
  }

  v14[2](v14, 1.0);
  v34 = sub_2418FE498(1);
  v35 = v34;
  if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    LOWORD(v43.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_2418D0000, v35, OS_SIGNPOST_INTERVAL_END, spid, "ALRunAutoLoopAnalyze", &unk_24191C465, &v43, 2u);
  }

  multiplier.value = time;
  sub_2418DB4C8(&multiplier);

  return v21;
}

void sub_2418DA1A4(void *a1)
{
  MEMORY[0x245CF24E0](v1, 0x10F1C408F4C135DLL);
  __cxa_begin_catch(a1);
  NSLog(&cfstr_ErrorCreatingV.isa);
  __cxa_end_catch();
  JUMPOUT(0x2418DA140);
}

void sub_2418DA494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void **a55)
{
  a55 = &a37;
  sub_2418DB4C8(&a55);
  JUMPOUT(0x2418DA4A8);
}

uint64_t runAutoLoopStabilize(uint64_t a1, void *a2, void *a3, void *a4, int *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = MEMORY[0x277CC0888];
  v22 = **&MEMORY[0x277CC0888];
  Duration = validateInputVideoAndGetDuration(v9, &v22);
  if (Duration || (v20 = v22, v19 = *v11, v18 = v19, v16 = *&v11->value, epoch = v11->epoch, Duration = sub_2418D7828(v21, a1, &v20, &v19, &v18, &v16), Duration))
  {
    v13 = 0;
  }

  else
  {
    v15 = 0;
    Duration = sub_2418D7D18(v9, v21, v10, &v15, a5, 0);
    v13 = v15;
    if (a4 && !Duration)
    {
      v13 = v13;
      *a4 = v13;
    }
  }

  return Duration;
}

__CFString *sub_2418DA634(int a1, unint64_t a2)
{
  if ((a1 + 2) > 3)
  {
    v3 = @"Unknown gating result.";
    if (!a2)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v3 = off_278CF7BA0[a1 + 2];
    if (!a2)
    {
      goto LABEL_41;
    }
  }

  if ((a2 & 0x40) != 0)
  {
    v3 = [(__CFString *)v3 stringByAppendingString:@"shortInputFail "];
  }

  if ((a2 & 2) != 0)
  {
    v4 = [(__CFString *)v3 stringByAppendingString:@"preGateStillFail "];

    v3 = v4;
  }

  if ((a2 & 4) != 0)
  {
    v5 = [(__CFString *)v3 stringByAppendingString:@"preGateVideoTrimFail "];

    v3 = v5;
  }

  if ((a2 & 8) != 0)
  {
    v6 = [(__CFString *)v3 stringByAppendingString:@"preGateVideoMLFail "];

    v3 = v6;
  }

  if ((a2 & 0x80) != 0)
  {
    v7 = [(__CFString *)v3 stringByAppendingString:@"preGateFacesFail "];

    v3 = v7;
  }

  if ((a2 & 0x10) != 0)
  {
    v8 = [(__CFString *)v3 stringByAppendingString:@"tripodStabilizeFail "];

    v3 = v8;
  }

  if ((a2 & 0x20) != 0)
  {
    v9 = [(__CFString *)v3 stringByAppendingString:@"postGateFail "];

    v3 = v9;
  }

  if ((a2 & 0x10000) != 0)
  {
    v10 = [(__CFString *)v3 stringByAppendingString:@"activityGateFail "];

    v3 = v10;
  }

  if ((a2 & 0x4000) != 0)
  {
    v11 = [(__CFString *)v3 stringByAppendingString:@"shortInputError "];

    v3 = v11;
  }

  if ((a2 & 0x200) != 0)
  {
    v12 = [(__CFString *)v3 stringByAppendingString:@"preGateStillError "];

    v3 = v12;
  }

  if ((a2 & 0x400) != 0)
  {
    v13 = [(__CFString *)v3 stringByAppendingString:@"preGateVideoTrimError "];

    v3 = v13;
  }

  if ((a2 & 0x800) != 0)
  {
    v14 = [(__CFString *)v3 stringByAppendingString:@"preGateVideoMLError "];

    v3 = v14;
  }

  if ((a2 & 0x8000) != 0)
  {
    v15 = [(__CFString *)v3 stringByAppendingString:@"preGateFacesError "];

    v3 = v15;
  }

  if ((a2 & 0x1000) != 0)
  {
    v16 = [(__CFString *)v3 stringByAppendingString:@"tripodStabilizeError "];

    v3 = v16;
  }

  if ((a2 & 0x2000) != 0)
  {
    v17 = [(__CFString *)v3 stringByAppendingString:@"postGateError "];

    v3 = v17;
  }

  if ((a2 & 0x20000) != 0)
  {
    v18 = [(__CFString *)v3 stringByAppendingString:@"activityGateError "];

    v3 = v18;
  }

  if (HIWORD(a2))
  {
    v19 = [PregateAnalyzer pregateFailureReasonsToString:?];
    if (v19)
    {
      v20 = [(__CFString *)v3 stringByAppendingString:v19];

      v3 = v20;
    }
  }

LABEL_41:

  return v3;
}

uint64_t sub_2418DA934(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v5 = 0;
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 > 3)
  {
    goto LABEL_45;
  }

  if (!sub_2418E8B00(a1, a2))
  {
    v5 = 0;
    goto LABEL_44;
  }

  v8 = sub_2418E8D9C(a1, a2);
  v5 = v8;
  if (!v8)
  {
LABEL_44:
    result = 0xFFFFFFFFLL;
    goto LABEL_45;
  }

  result = *(v8 + 4);
  v9 = *(v5 + 8);
  v10 = result == 0;
  v11 = 64;
  if (!result)
  {
    v11 = 65;
  }

  if (!v9)
  {
    v10 = v11;
  }

  v12 = *(v5 + 12);
  v13 = *(v5 + 16);
  if (!v12)
  {
    v10 |= 2uLL;
  }

  if (!v13)
  {
    v10 |= 4uLL;
  }

  v14 = *(v5 + 20);
  v15 = *(v5 + 24);
  if (!v14)
  {
    v10 |= 8uLL;
  }

  if (!v15)
  {
    v10 |= 0x80uLL;
  }

  v16 = *(v5 + 28);
  v17 = *(v5 + 32);
  if (!v16)
  {
    v10 |= 0x10uLL;
  }

  v18 = *(v5 + 36);
  if (!v18)
  {
    v10 |= 0x20uLL;
  }

  if (!v17)
  {
    v10 |= 0x10000uLL;
  }

  if (result == -2)
  {
    v10 |= 0x100uLL;
  }

  if (v9 == -2)
  {
    v19 = v10 | 0x4000;
  }

  else
  {
    v19 = v10;
  }

  if (v12 == -2)
  {
    v19 |= 0x200uLL;
  }

  if (v13 == -2)
  {
    v19 |= 0x400uLL;
  }

  if (v14 == -2)
  {
    v19 |= 0x800uLL;
  }

  if (v15 == -2)
  {
    v19 |= 0x8000uLL;
  }

  if (v16 == -2)
  {
    v19 |= 0x1000uLL;
  }

  if (v18 == -2)
  {
    v19 |= 0x2000uLL;
  }

  if (v17 == -2)
  {
    v19 |= 0x20000uLL;
  }

  v5 = v19 | (*(v5 + 56) << 48);
LABEL_45:
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t getGatingResult(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = -1;
  v4 = sub_2418DA934(a1, a2, &v7);
  v5 = v4;
  if (a3)
  {
    *a3 = sub_2418DA634(v4, v7);
  }

  return v5;
}

id sub_2418DAB00(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCAD78] UUID];
    v3 = [v2 UUIDString];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v1 path];
    v6 = [v4 attributesOfItemAtPath:v5 error:0];

    v7 = [v1 URLByAppendingPathComponent:v3 isDirectory:1];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v6 error:&v12];
    v10 = v12;

    if ((v9 & 1) == 0)
    {
      NSLog(&cfstr_ErrorCreatingU.isa, v7, v10);

      v7 = 0;
    }
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

  return v7;
}

double sub_2418DACCC(void *a1, double a2, double a3, float a4)
{
  v7 = a1;
  v8 = v7;
  width = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  if (a4 > 0.0)
  {
    v11 = a2 <= a3 ? a3 : a2;
    v12 = v11;
    v13 = v12 / a4;
    width = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    if (v13 > 1.0)
    {
      v14 = v13;
      v15 = a2 / v13;
      v16 = ceilf(v15 * 0.5);
      v17 = (v16 + v16);
      *&v14 = a3 / v14;
      *&v14 = ceilf(*&v14 * 0.5);
      v18 = (*&v14 + *&v14);
      v19 = a2 < v17 || a3 < v18;
      width = *MEMORY[0x277CBF3A8];
      v10 = *(MEMORY[0x277CBF3A8] + 8);
      if (!v19)
      {
        width = v17;
        v10 = v18;
      }
    }
  }

  if (width != *MEMORY[0x277CBF3A8] || v10 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v21 = [v7 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    v22 = v21;
    if (v21 && [v21 count] == 1)
    {
      v23 = [v22 objectAtIndex:0];
      v24 = v23;
      if (v23)
      {
        [v23 preferredTransform];
        v27.origin.x = 0.0;
        v27.origin.y = 0.0;
        v27.size.width = width;
        v27.size.height = v10;
        v28 = CGRectApplyAffineTransform(v27, &v26);
        width = v28.size.width;
      }
    }
  }

  return width;
}

uint64_t renderGIF_0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CE63D8] assetWithURL:v5];
  v9 = sub_2418FACEC(v8, v22);

  if (v9)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_24190EC24(v9, 0, &v19);
    v10 = v20 / v19;
    v11 = *v9;
    if (*v9)
    {
      *(v9 + 8) = v11;
      operator delete(v11);
    }

    MEMORY[0x245CF24E0](v9, 0x20C40960023A9);
    if (sub_241909858(v5, v6, 0x280u, v7, v10))
    {
      v12 = [LoopQuicktimeMetadata metadataStringForAssetURL:v5];
      if (!v12)
      {
        v17 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v13 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6];
      v14 = v13;
      if (v13)
      {
        v15 = sub_241902AA8(v13, v12);
        v16 = v15;
        if (v15)
        {
          v17 = [(__CFData *)v15 writeToURL:v6 atomically:1];
          if ((v17 & 1) == 0)
          {
            NSLog(&cfstr_Creategiffromv_0.isa);
          }

          CFRelease(v16);
          goto LABEL_15;
        }

        NSLog(&cfstr_Creategiffromv.isa);
      }

      v17 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  v17 = 0;
LABEL_17:

  return v17;
}

id liveAnalysisResultToDictionary(void *a1)
{
  if (a1)
  {
    a1 = sub_2418E99DC(a1);
    v1 = vars8;
  }

  return a1;
}

uint64_t validateLiveAnalysisDictionaryFormatAndVersion(void *a1)
{
  if (a1)
  {
    operator new();
  }

  return 4294967292;
}

void *sub_2418DB204(void *a1, int a2)
{
  if (a1)
  {
    v5 = 0;
    v3 = sub_2418E8EF0(a1, a2, &v5);
    a1 = 0;
    if (v3 && !v5)
    {
      a1 = sub_2418F3F94(v3);
    }

    v2 = vars8;
  }

  return a1;
}

id buildLoopRecipeDictFromLiveAnalysisDict(void *a1)
{
  v1 = a1;
  if (v1)
  {
    liveAnalysisResultFromDictionary(v1);
  }

  return 0;
}

uint64_t liveAnalysisResultDestroy(uint64_t result)
{
  if (result)
  {
    sub_2418E8EEC();

    JUMPOUT(0x245CF24E0);
  }

  return result;
}

__CFString *autoloopErrorCodeToString(unsigned int a1)
{
  if (a1 > 0x21)
  {
    return @"Failed: Other error";
  }

  else
  {
    return off_278CF7BC0[a1];
  }
}

uint64_t sub_2418DB33C(unsigned int a1)
{
  v1 = sub_2418E8FD0(a1);
  v2 = [v1 UTF8String];

  return v2;
}

uint64_t *sub_2418DB388(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a2;
  if ((sub_24190719C(a3, (a2 + 160)) & 1) == 0)
  {
    fwrite("VideoParserNormalizer: VideoParser and FrameTimeNormalizer disagree on raw frame times.\n", 0x58uLL, 1uLL, *MEMORY[0x277D85DF8]);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF2430](exception, "VideoParserNormalizer frame time error");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2418DB42C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2418DB480(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2418DB480(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_2418DB4C8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2418DB51C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2418DB51C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_2418DB584(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB600(result, a4);
  }

  return result;
}

void sub_2418DB5E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418DB600(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2418D39E8(a1, a2);
  }

  sub_2418D3940();
}

uint64_t sub_2418DB64C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB6C0(result, a4);
  }

  return result;
}

void sub_2418DB6A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418DB6C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2418DB6FC(a1, a2);
  }

  sub_2418D3940();
}

void sub_2418DB6FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2418D3A40();
}

void sub_2418DB744(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2418D3A40();
}

void sub_2418DB78C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2418DB78C(a1, *a2);
    sub_2418DB78C(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_2418DB7E0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2418DB8B4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2418DB90C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2418DB90C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t runAutoLoopPipeline(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a7;
  v21 = 0;
  v20 = 0;
  v16 = sub_2418D5E6C(a1, v13, v14, 1, &v20, &v21, a5, v15);
  v17 = v16;
  if (a4)
  {
    if (!v16)
    {
      v18 = liveAnalysisResultCopyRecipe(v21, 0, a4);
      if (v18)
      {
        printf("Error retrieving autoloop recipe, laRecipeErrorCode = %d.\n", v18);
        *a4 = 0;
      }
    }
  }

  if (a6 && !v17 && v21 && sub_2418E8D9C(v21, 0))
  {
    operator new();
  }

  liveAnalysisResultDestroy(v21);

  return v17;
}

BOOL liveAnalysisResultCopyRecipe(void *a1, int a2, uint64_t *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v4 = -1;
  v7 = -1;
  if (a1)
  {
    v5 = sub_2418E8EF0(a1, a2, &v7);
    v4 = v7;
    if (a3)
    {
      if (v5 && !v7)
      {
        *a3 = v5;
      }
    }
  }

  return v4 != 0;
}

uint64_t runAutoLoopRender(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a6)
  {
    v15 = sub_2418DAB00(v11);
    if (v15)
    {
      if (v14[2](v14, 0.0))
      {
        v16 = *(a6 + 24);
        if (v16 && v16 != 3)
        {
          NSLog(&cfstr_AutoloopRender.isa);
          v18 = 5;
        }

        else
        {
          v17 = *(a1 + 196) == 1 && sub_2418DE2DC(v12) == 0;
          v19 = sub_2418DACCC(v12, *(a6 + 48), *(a6 + 56), *(*(a1 + 240) + 28));
          v18 = sub_2418DD834(v12, a6, 0, v15, v17, v14, v13, v19, v20);
        }
      }

      else
      {
        v18 = 1;
      }

      v14[2](v14, 1.0);
      v21 = [MEMORY[0x277CCAA00] defaultManager];
      [v21 removeItemAtURL:v15 error:0];
    }

    else
    {
      v18 = 28;
    }
  }

  else
  {
    v18 = 5;
  }

  return v18;
}

uint64_t runPingPongRender(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a6)
  {
    v15 = sub_2418DAB00(v11);
    if (v15)
    {
      if (v14[2](v14, 0.0))
      {
        if (*(a6 + 24) == 1)
        {
          v16 = sub_2418DACCC(v12, *(a6 + 48), *(a6 + 56), *(*(a1 + 240) + 28));
          v22 = **&MEMORY[0x277CC0888];
          if (*(a6 + 8) != *a6)
          {
            v22 = *(**a6 + 24);
          }

          v21 = v22;
          v18 = sub_2418E7C68(v12, a6, 0, v15, 0, &v21, v14, v13, v16, v17);
          if (v18)
          {
            NSLog(&cfstr_ErrorOnAlpingp.isa);
          }
        }

        else
        {
          NSLog(&cfstr_CalledPingpong.isa);
          v18 = 5;
        }
      }

      else
      {
        v18 = 1;
      }

      v14[2](v14, 1.0);
      v19 = [MEMORY[0x277CCAA00] defaultManager];
      [v19 removeItemAtURL:v15 error:0];
    }

    else
    {
      v18 = 28;
    }
  }

  else
  {
    v18 = 5;
  }

  return v18;
}

uint64_t renderStabilizedVideo(void *a1, void *a2, void *a3, int a4, void *a5, double a6, double a7)
{
  v13 = a1;
  v14 = a3;
  v15 = a5;
  if (a2)
  {
    v16 = sub_2418DAB00(v13);
    if (v16)
    {
      v17 = 5;
      if (v14 && v15)
      {
        v18 = a2;
        v17 = sub_2418DE194(v18, v14, v16, a4, &unk_28537CDD0, v15, a6, a7);
        v19 = [MEMORY[0x277CCAA00] defaultManager];
        [v19 removeItemAtURL:v16 error:0];
      }
    }

    else
    {
      v17 = 28;
    }
  }

  else
  {
    v17 = 5;
  }

  return v17;
}

void alStabilizeParamsDestroy(id a1)
{
  if (a1)
  {
  }
}

id alStabilizeParamsToDict(void *a1)
{
  if (a1)
  {
    a1 = [a1 infoAsDict];
    v1 = vars8;
  }

  return a1;
}

uint64_t alGatingResultsDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;

    JUMPOUT(0x245CF24E0);
  }

  return result;
}

uint64_t extractGatingDecision(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t extractGatingResult(uint64_t a1, unsigned int a2, uint64_t *a3, int *a4)
{
  result = sub_2418DA934(a1, a2, a3);
  if (a4)
  {
    v6 = result == -1;
    if (result == -2)
    {
      v6 = 3;
    }

    *a4 = v6;
  }

  return result;
}

uint64_t getFlavor(uint64_t result, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
    if (!result)
    {
      *a2 = 1;
      return result;
    }

    return *(result + 24);
  }

  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t alLoopRecipeDestroy(uint64_t result)
{
  if (result)
  {
    sub_2418DEA8C();

    JUMPOUT(0x245CF24E0);
  }

  return result;
}

uint64_t *alLoopRecipeToDict(uint64_t *a1)
{
  if (a1)
  {
    a1 = sub_2418F3F94(a1);
    v1 = vars8;
  }

  return a1;
}

void *sub_2418DC480(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    v5 = *(a1 + 8);
    v7 = v5[6];
    v6 = v5[7];
    v8 = *(a2 + 5);
    v9 = v5[17];
    v30 = 1065353216;
    sub_2418DCBB8(&v31, v9);
    if (*(*(a1 + 8) + 64) == 875704438 && v32 != v31)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = sub_2418FE2CC(v11);
        v13 = v31;
        v14 = v32;
        v31[v10] = v12;
        v10 = ++v11;
      }

      while (v11 < (v14 - v13));
    }

    v15 = malloc_type_calloc(4 * v6 * v7 * v2, 1uLL, 0x100004052888210uLL);
    v16 = qos_class_self();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1174405120;
    v19[2] = sub_2418DC668;
    v19[3] = &unk_28537CE70;
    v24 = v8;
    v25 = *a2;
    v26 = *(a2 + 2);
    v27 = v2;
    v19[4] = a1;
    __p = 0;
    v21 = 0;
    v22 = 0;
    sub_2418DCCCC(&__p, v31, v32, v32 - v31);
    global_queue = dispatch_get_global_queue(v16, 0);
    v23 = v15;
    v28 = v6;
    v29 = v7;
    dispatch_apply(v2, global_queue, v19);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  else
  {
    puts("createPixelDifferenceBuffer error: Fade length 0 is invalid.");
    return 0;
  }

  return v15;
}

void sub_2418DC644(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418DC668(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 == 1)
  {
    v7 = *(a1 + 100);
    v8 = v7 >> 1;
    if (v7 >> 1 > a2)
    {
      v9 = *(a1 + 76);
      v5 = (v9 - a2);
      v6 = (v9 + a2);
      goto LABEL_9;
    }

    if ((v7 & 0xFFFFFFFE) > a2)
    {
      v10 = *(a1 + 76) + *(a1 + 80) - 1;
      v11 = a2 - v8;
      v5 = (v10 - v11);
      v6 = (v10 + v11);
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    v5 = (*(a1 + 76) + a2);
    v6 = (v5 + *(a1 + 80));
    goto LABEL_9;
  }

  v6 = 0;
  v5 = 0;
LABEL_9:
  v12 = *(a1 + 32);
  v13 = (*(**v12 + 16))(*v12, v5);
  v14 = v12[1];
  v15 = *(v14 + 184);
  v16 = *(v14 + 192);
  v17 = *(a1 + 32);
  v18 = (*(**v17 + 16))(*v17, v6);
  result = *(*(a1 + 32) + 8);
  if (*(result + 68))
  {
    v20 = 0;
    v61 = v15 + (v16 * v13);
    v60 = *(v17[1] + 184) + (*(v17[1] + 192) * v18);
    do
    {
      v62 = sub_241905448(result, v20);
      v22 = v60;
      v21 = v61;
      if (v20)
      {
        v23 = *(*(a1 + 32) + 8);
        v24 = 1;
        v21 = v61;
        do
        {
          v25 = sub_241905448(v23, v24 - 1);
          v21 += (*(v25 + 4) * *(v25 + 8));
          v37 = v20 == v24++;
        }

        while (!v37);
        v26 = *(*(a1 + 32) + 8);
        v27 = 1;
        v22 = v60;
        do
        {
          v28 = sub_241905448(v26, v27 - 1);
          v22 += (*(v28 + 4) * *(v28 + 8));
          v37 = v20 == v27++;
        }

        while (!v37);
      }

      v29 = v62[1];
      if (v29)
      {
        v30 = 0;
        v31 = 0;
        v32 = v62[5];
        v33 = v62[6];
        v34 = *(*(a1 + 40) + 4 * v20) * (1.0 / (v33 * v32));
        v35 = v62[2];
        v36 = *v62;
        v37 = v32 == 1 && v33 == 1;
        v38 = v37;
        do
        {
          if (v36)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v35 * v31);
            v43 = v21 + v42;
            v44 = v22 + v42;
            v45 = v62[4];
            do
            {
              if (v45)
              {
                v46 = 0;
                v47 = v45;
                v48 = v40;
                do
                {
                  v49 = *(v43 + v48) - *(v44 + v48);
                  if (v49 < 0)
                  {
                    v49 = *(v44 + v48) - *(v43 + v48);
                  }

                  v46 += v49;
                  ++v48;
                  --v47;
                }

                while (v47);
                v50 = v46;
              }

              else
              {
                v50 = 0.0;
              }

              v51 = v34 * v50;
              if (v38)
              {
                v52 = *(a1 + 64) + 4 * ((v41 + *(a1 + 104) * v31) * *(a1 + 100));
                *(v52 + 4 * a2) = v51 + *(v52 + 4 * a2);
              }

              else if (v32)
              {
                v53 = 0;
                v54 = v30;
                do
                {
                  if (v33)
                  {
                    v55 = *(a1 + 108);
                    v56 = v39;
                    v57 = v33;
                    do
                    {
                      if (v53 + v32 * v31 < v55)
                      {
                        v58 = *(a1 + 104);
                        if (v56 < v58)
                        {
                          v59 = *(a1 + 64) + 4 * *(a1 + 100) * (v56 + v54 * v58);
                          *(v59 + 4 * a2) = v51 + *(v59 + 4 * a2);
                        }
                      }

                      ++v56;
                      --v57;
                    }

                    while (v57);
                  }

                  ++v53;
                  ++v54;
                }

                while (v53 != v32);
              }

              ++v41;
              v40 += v45;
              v39 += v33;
            }

            while (v41 != v36);
          }

          ++v31;
          v30 += v32;
        }

        while (v31 != v29);
      }

      ++v20;
      result = *(*(a1 + 32) + 8);
    }

    while (v20 < *(result + 68));
  }

  return result;
}

uint64_t sub_2418DC9D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_2418DCCCC(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
}

void sub_2418DC9F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *sub_2418DCBB8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DB6C0(result, a2);
  }

  return result;
}

void sub_2418DCCB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418DCCCC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB6C0(result, a4);
  }

  return result;
}

void sub_2418DCD2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418DCD48(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 40) = a2;
  v5 = *(a2 + 8);
  v6 = *(v5 + 24);
  LODWORD(v5) = *(v5 + 28);
  *(a1 + 48) = v6;
  *(a1 + 52) = v5;
  sub_2418DD198((a1 + 80), (v5 * v6));
  sub_2418DD198((a1 + 104), (*(a1 + 52) * *(a1 + 48)));
  *(a1 + 72) = a3;
  operator new();
}

void sub_2418DCDD4(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x245CF24E0](v3, 0x10F0C40DDF9AC21);
  v5 = v1[13];
  if (v5)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  v6 = v1[10];
  if (v6)
  {
    v1[11] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void *sub_2418DCE30(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[17];
    if (v3)
    {
      v2[18] = v3;
      operator delete(v3);
    }

    v4 = v2[14];
    if (v4)
    {
      v2[15] = v4;
      operator delete(v4);
    }

    v5 = v2[11];
    if (v5)
    {
      v2[12] = v5;
      operator delete(v5);
    }

    v6 = v2[8];
    if (v6)
    {
      v2[9] = v6;
      operator delete(v6);
    }

    v7 = v2[5];
    if (v7)
    {
      v2[6] = v7;
      operator delete(v7);
    }

    MEMORY[0x245CF24E0](v2, 0x10F0C40DDF9AC21);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_2418DCEE8(uint64_t result, int a2, int a3)
{
  *(result + 64) = a2;
  *(result + 68) = a3;
  return result;
}

void sub_2418DCEF0(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 64);
  if (v2 != v3)
  {
    v5 = *(a1 + 68);
LABEL_13:
    sub_2418FE014(*(a1 + 40), v3, v5, a1 + 80, a1 + 104);
    goto LABEL_14;
  }

  v4 = *(a1 + 132);
  v5 = *(a1 + 68);
  if (v4 == v5)
  {
    return;
  }

  if (v2 == -1 || v4 == -1 || v4 >= v5)
  {
    goto LABEL_13;
  }

  sub_2418FDFA8(*(a1 + 40), *(a1 + 132), v2, *(a1 + 68), (a1 + 80), (a1 + 104));
LABEL_14:
  sub_2418E3D80(*(a1 + 32), a1 + 80, a1 + 104);
  sub_2418E402C(*(a1 + 32), *(a1 + 72));
  sub_2418E42DC(*(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 68));
  v8 = *(a1 + 68);
  *(a1 + 128) = *(a1 + 64);
  *(a1 + 132) = v8;
}

__n128 sub_2418DCFA4(uint64_t a1, unsigned int a2, float a3)
{
  sub_2418DCEF0(a1);
  *a1 = sub_2418E4210(*(a1 + 32), a2, a3);
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  result = *(*(a1 + 32) + 160);
  *(a1 + 12) = result;
  return result;
}

__CFDictionary *sub_2418DCFFC(_DWORD *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = a1 + 6;
  if (*a1)
  {
    v5 = MEMORY[0x277CBED28];
  }

  else
  {
    v5 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"levelExceeded", *v5);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 1);
  CFDictionaryAddValue(v3, @"levelThreshold", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(0, kCFNumberFloat32Type, a1 + 2);
  CFDictionaryAddValue(v3, @"areaThreshold", v7);
  CFRelease(v7);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 3);
  CFDictionaryAddValue(v3, @"runStartRow", v8);
  CFRelease(v8);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 4);
  CFDictionaryAddValue(v3, @"runStartCol", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 5);
  CFDictionaryAddValue(v3, @"runNumRows", v10);
  CFRelease(v10);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, v4);
  CFDictionaryAddValue(v3, @"runNumCols", v11);
  CFRelease(v11);
  return v3;
}

void *sub_2418DD198(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DD20C(result, a2);
  }

  return result;
}

void sub_2418DD1F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418DD20C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2418D3940();
}

uint64_t sub_2418DD25C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2418DD20C(result, a4);
  }

  return result;
}

void sub_2418DD2BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418DD2D8(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2418D3940();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_2418DD410(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DB6C0(result, a2);
  }

  return result;
}

void sub_2418DD46C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2418DD488(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DD544(result, a2);
  }

  return result;
}

void sub_2418DD544(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2418DD590(a1, a2);
  }

  sub_2418D3940();
}

void sub_2418DD590(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2418D3A40();
}

void sub_2418DD600(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2418DD65C(exception, a1);
  __cxa_throw(exception, off_278CF7AE8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2418DD65C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *sub_2418DD690(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_2418DD6CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"ALGFeatInstrGlobalParams"];
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  v6 = [v3 objectForKeyedSubscript:@"ALGFeatInstrFeatureList"];
  v7 = *a1;
  *a1 = v6;

  if (*a1)
  {
    v8 = 0;
  }

  else
  {
    NSLog(&cfstr_Algfeatureinst.isa);
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t sub_2418DD768(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    NSLog(&cfstr_Unpackfeaturea.isa);
LABEL_6:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v7 = [v5 objectForKeyedSubscript:@"ALGFeatId"];

  if (!v7)
  {
    NSLog(&cfstr_Unpackfeaturea_0.isa);
    goto LABEL_6;
  }

  *a2 = [v6 objectForKeyedSubscript:@"ALGFeatId"];
  [v6 objectForKeyedSubscript:@"ALGFeatParams"];
  *a3 = v8 = 0;
LABEL_7:

  return v8;
}

uint64_t sub_2418DD834(void *a1, uint64_t a2, void *a3, void *a4, char a5, void *a6, void *a7, double a8, double a9)
{
  v17 = a1;
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v22 = v21;
  if (v17 && v21)
  {
    v47 = v20;
    v49 = v19;
    v24 = *a2;
    v23 = *(a2 + 8);
    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x2020000000;
    v75[3] = 0;
    v25 = a9 != 0.0 && a8 != 0.0;
    context = objc_autoreleasePoolPush();
    if (v18)
    {
      v26 = [LoopQuicktimeMetadata metadataArrayForDictionary:v18];
      if ((a5 & 1) == 0)
      {
        v27 = v26;
LABEL_11:
        v45 = v18;
        v29 = v22;
        v48 = v27;
        goto LABEL_15;
      }

      v48 = v26;
    }

    else
    {
      v48 = 0;
      v27 = 0;
      if ((a5 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (!v49)
    {
      NSLog(&cfstr_GenfadeloopReq.isa);
      v28 = 5;
      v19 = 0;
      v20 = v47;
LABEL_27:

      objc_autoreleasePoolPop(context);
      _Block_object_dispose(v75, 8);
      goto LABEL_28;
    }

    v45 = v18;
    v44 = v49;
    v30 = MEMORY[0x277CCACA8];
    v31 = [MEMORY[0x277CCAC38] processInfo];
    v32 = [v31 globallyUniqueString];
    v33 = [v30 stringWithFormat:@"%@.%s", v32, "mov"];

    v29 = [v44 URLByAppendingPathComponent:v33 isDirectory:0];

    v27 = 0;
LABEL_15:
    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x3032000000;
    v73[3] = sub_2418DDDE8;
    v73[4] = sub_2418DDDF8;
    v74 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = sub_2418DDDE8;
    v71 = sub_2418DDDF8;
    v72 = 0;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2418DDE00;
    v56[3] = &unk_278CF7CF8;
    v60 = &v67;
    v66 = v25;
    v63 = a8;
    v64 = a9;
    v34 = v29;
    v57 = v34;
    v35 = v27;
    v58 = v35;
    v61 = v73;
    v20 = v47;
    v59 = v47;
    v62 = v75;
    v65 = (v23 - *&v24) >> 3;
    v36 = MEMORY[0x245CF2970](v56);
    v37 = alRender(v17, a2, v36);
    v28 = v37;
    if (v37)
    {
      v38 = autoloopErrorCodeToString(v37);
      NSLog(&cfstr_AllooprenderAl.isa, v38);
      if (v28 == 1)
      {
        v39 = [v68[5] lastError];
        v28 = sub_2418DE09C(v39);
LABEL_25:
      }
    }

    else
    {
      if (a5)
      {
        v40 = objc_alloc_init(LoopAudioComposer);
        v41 = [MEMORY[0x277CE63D8] assetWithURL:v34];
        v54 = *(a2 + 64);
        v55 = *(a2 + 80);
        v52 = *(a2 + 112);
        v53 = *(a2 + 128);
        v50 = *(a2 + 88);
        v51 = *(a2 + 104);
        v42 = [(LoopAudioComposer *)v40 composeLoopWithAudio:v41 withAudioSource:v17 startTime:&v54 fadeTime:&v52 periodTime:&v50 metadata:v48 andOutputURL:v22];

        if (v42)
        {
          NSLog(&cfstr_GenfadeloopErr.isa);
          v28 = 27;
        }

        else
        {
          v28 = 0;
        }

        v39 = [MEMORY[0x277CCAA00] defaultManager];
        [v39 removeItemAtURL:v34 error:0];
        goto LABEL_25;
      }

      v28 = 0;
    }

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(v73, 8);

    v18 = v45;
    v19 = v49;
    goto LABEL_27;
  }

  NSLog(&cfstr_AllooprenderNi.isa);
  v28 = 5;
LABEL_28:

  return v28;
}

void sub_2418DDCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34)
{
  _Block_object_dispose((v40 - 232), 8);

  _Block_object_dispose((v40 - 184), 8);
  _Block_object_dispose((v40 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2418DDDE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2418DDE00(uint64_t a1, void *a2, __int128 *a3, __CVBuffer *a4)
{
  v7 = a2;
  v8 = v7;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if (*(a1 + 104) == 1)
    {
      v14 = *(a1 + 80);
      v15 = *(a1 + 88);
    }

    else
    {
      [v7 extent];
      v14 = v18;
      v15 = v19;
    }

    v20 = sub_241904B60(a4);
    v21 = [VideoWriter alloc];
    v22 = v20 | 0xE00u;
    v23 = *MEMORY[0x277CE5DA8];
    v24 = *MEMORY[0x277CE62F8];
    v25 = *(a3 + 2);
    v26 = *(MEMORY[0x277CBF2C0] + 16);
    v35 = *MEMORY[0x277CBF2C0];
    v36 = v26;
    v37 = *(MEMORY[0x277CBF2C0] + 32);
    LODWORD(v34) = v22;
    v27 = [(VideoWriter *)v21 initForURL:*(a1 + 32) fileType:v23 codecType:v24 imgWidth:v14 imgHeight:v15 fps:v25 timeScale:COERCE_DOUBLE(__PAIR64__(DWORD1(v37) transform:30.0)) pixFormat:&v35 metadata:v34, *(a1 + 40)];
    v28 = *(*(a1 + 56) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      NSLog(&cfstr_AllooprenderEr.isa);
      goto LABEL_16;
    }

    v30 = [[VideoContext alloc] initWithWriter:*(*(*(a1 + 56) + 8) + 40) pixelFormatFlags:v22 colorManagement:1];
    v31 = *(*(a1 + 64) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      NSLog(&cfstr_AllooprenderEr_0.isa);
      goto LABEL_16;
    }
  }

  if (v8)
  {
    if (*(a1 + 104) == 1)
    {
      v9 = sub_241905870(v8, 0, *(a1 + 80), *(a1 + 88));

      v8 = v9;
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);
    v35 = *a3;
    *&v36 = *(a3 + 2);
    if (![v10 appendFrame:v8 frameTime:&v35 srcPixBuf:a4])
    {
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 24);
      *(v11 + 24) = v12 + 1;
      v13 = (*(*(a1 + 48) + 16))(v12 / *(a1 + 96));
      goto LABEL_19;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_19;
  }

  v16 = [*(*(*(a1 + 56) + 8) + 40) finish];
  v17 = v16;
  v13 = v16 == 0;
  if (v16)
  {
    NSLog(&cfstr_AllooprenderEr_1.isa, v16);
  }

  else
  {
    (*(*(a1 + 48) + 16))(1.0);
  }

  v8 = 0;
LABEL_19:

  return v13;
}

uint64_t sub_2418DE09C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 code];
    if (v3 == -11823)
    {
      v4 = 31;
    }

    else
    {
      v5 = [v2 userInfo];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
        v8 = v7;
        if (v7)
        {
          v3 = [v7 code];
        }
      }

      if (v3 == -11823)
      {
        v9 = 31;
      }

      else
      {
        v9 = 29;
      }

      if (v3 == -12915)
      {
        v4 = 30;
      }

      else
      {
        v4 = v9;
      }
    }
  }

  else
  {
    v4 = 29;
  }

  return v4;
}

uint64_t sub_2418DE194(void *a1, void *a2, void *a3, int a4, void *a5, void *a6, double a7, double a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = v19;
  v21 = 5;
  if (v15 && v16 && v19)
  {
    sub_2418DE378(v24);
    sub_2418DED18(v24, v15, -2);
    if (a4)
    {
      v22 = sub_2418DE2DC(v16) == 0;
    }

    else
    {
      v22 = 0;
    }

    v21 = sub_2418DD834(v16, v24, 0, v17, v22, v18, v20, a7, a8);
    sub_2418DEA8C(v24);
  }

  return v21;
}

void sub_2418DE2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2418DEA8C(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_2418DE2DC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 tracksWithMediaType:*MEMORY[0x277CE5E48]];
    v4 = v3;
    if (v3)
    {
      v5 = 8 * ([v3 count] == 0);
    }

    else
    {
      v5 = 8;
    }
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

double sub_2418DE378(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  v1 = MEMORY[0x277CC0888];
  v2 = *MEMORY[0x277CC0888];
  *(a1 + 64) = *MEMORY[0x277CC0888];
  v3 = *(v1 + 16);
  *(a1 + 80) = v3;
  *(a1 + 88) = v2;
  *(a1 + 104) = v3;
  *(a1 + 128) = v3;
  *(a1 + 136) = 0;
  *(a1 + 112) = v2;
  result = NAN;
  *(a1 + 24) = 0xFFFFFFFE00000000;
  return result;
}

uint64_t sub_2418DE3C0(uint64_t a1, uint64_t a2, float *a3)
{
  if (a2)
  {
    *(a1 + 28) = *(a2 + 56);
    *(a1 + 24) = a3[5];
    v6 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 24);
    *(a1 + 48) = v6;
    v15 = *a2;
    v7 = *a3;
    v8 = *(a2 + 64);
    if (v7 >= (*(a2 + 72) - v8) >> 3)
    {
      v9 = MEMORY[0x277CC0898];
    }

    else
    {
      v9 = *(v8 + 8 * v7);
    }

    v11 = *v9;
    *(a1 + 80) = *(v9 + 2);
    *(a1 + 64) = v11;
    v13 = v15;
    CMTimeMultiply(&v14, &v13, *(a3 + 1));
    *(a1 + 88) = v14;
    v13 = v15;
    CMTimeMultiply(&v14, &v13, *(a3 + 2));
    *(a1 + 112) = v14;
    v10 = sub_2418DE4F8(a1, a2, a3);
    if ((v10 & 1) == 0)
    {
      NSLog(&cfstr_AllooprecipeEr_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_AllooprecipeEr.isa);
    return 0;
  }

  return v10;
}

uint64_t sub_2418DE4F8(uint64_t a1, CMTime *a2, float *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v22 = *a3;
  v19 = *(a3 + 1);
  v20 = *(a3 + 2);
  sub_2418DF7D0(&v25, v19);
  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = v25;
  v25 = *a2;
  if (v20)
  {
    memset(&v24, 0, sizeof(v24));
    time = v25;
    CMTimeMultiply(&v24, &time, v19 - v20);
    *&__p = v22;
    HIDWORD(__p) = v19 + LODWORD(v22);
    memset(&time, 0, sizeof(time));
    sub_2418DF884(&time, &__p, &v30, 2uLL);
    __src = 1u / (v20 + 1);
    *&__src_4 = 1.0 - __src;
    v30 = 0;
    v31 = 0;
    __p = 0;
    sub_2418DF8F8(&__p, &__src, &__src_8, 2uLL);
    operator new();
  }

  v6 = 1;
  if (v19)
  {
    v8 = v20 + LODWORD(v22);
    v21 = v19 + LODWORD(v22) + v20;
    memset(&v24, 0, sizeof(v24));
    time = v25;
    CMTimeMultiply(&v24, &time, 0);
    LODWORD(__p) = v8;
    memset(&time, 0, sizeof(time));
    sub_2418DF884(&time, &__p, &__p + 4, 1uLL);
    __src = 1.0;
    v30 = 0;
    v31 = 0;
    __p = 0;
    sub_2418DF8F8(&__p, &__src, &__src_4, 1uLL);
    epoch = a2[2].epoch;
    v10 = (a2[3].value - epoch) >> 3;
    if (v10 > v8)
    {
      v11 = *(*(epoch + 8 * v8) + 48);
      if (v11)
      {
        if (*v11 == 1)
        {
          v12 = *(v11 + 4);
          v13 = *(v11 + 8);
          if (LODWORD(v12) <= LODWORD(v22))
          {
            v14 = v22;
          }

          else
          {
            v14 = *(v11 + 4);
          }

          while (1)
          {
            v15 = v12;
            if (LODWORD(v14) == LODWORD(v12))
            {
              break;
            }

            ++LODWORD(v12);
            if (--v13 <= 1)
            {
              goto LABEL_20;
            }
          }

          v12 = v14;
LABEL_20:
          v16 = v13 + LODWORD(v12);
          if (v10 > v16 && LODWORD(v15) >= LODWORD(v22) && v16 <= v21)
          {
            __src = v12;
            __src_4 = v13 + LODWORD(v12);
            sub_2418DF96C(&time, &__src, &__src_8, 2uLL);
            __src = (v16 - v8) / v13;
            *&__src_4 = 1.0 - __src;
            sub_2418DFAA0(&__p, &__src, &__src_8, 2uLL);
          }
        }
      }
    }

    operator new();
  }

  return v6;
}

void sub_2418DE988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418DE9D4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *(v6 + 96);
        if (v7)
        {
          *(v6 + 104) = v7;
          operator delete(v7);
        }

        v10 = (v6 + 72);
        sub_2418DB4C8(&v10);
        v8 = *(v6 + 48);
        if (v8)
        {
          *(v6 + 56) = v8;
          operator delete(v8);
        }

        MEMORY[0x245CF24E0](v6, 0x10A0C4091D32064);
        v2 = *a1;
        v3 = *(a1 + 8);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2418DEA90(uint64_t a1, __int128 *a2, uint64_t *a3, void *a4, __int128 *a5, char a6)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = v11 - *a3;
  v13 = v12 >> 2;
  *(a1 + 120) = a6;
  v14 = *a5;
  *(a1 + 16) = *(a5 + 2);
  *a1 = v14;
  v31 = v10;
  if (a2)
  {
    v33 = *a2;
    v15 = *(a2 + 2);
  }

  else
  {
    v33 = *MEMORY[0x277CC0898];
    v15 = *(MEMORY[0x277CC0898] + 16);
  }

  v34 = v15;
  *(a1 + 24) = v33;
  *(a1 + 40) = v15;
  sub_2418DF154(&v33, v12 >> 2);
  v17 = (a1 + 48);
  v16 = *(a1 + 48);
  if (v16)
  {
    *(a1 + 56) = v16;
    operator delete(v16);
    *v17 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = v33;
  *(a1 + 64) = v34;
  sub_2418DCBB8(__p, 9uLL);
  sub_2418DD488(&v33, v12 >> 2);
  sub_2418DF1E4((a1 + 72));
  *(a1 + 72) = v33;
  *(a1 + 88) = v34;
  v34 = 0;
  v33 = 0uLL;
  v35 = &v33;
  sub_2418DB4C8(&v35);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  LODWORD(__p[0]) = 0;
  sub_2418DCBB8(&v33, v12 >> 2);
  v19 = (a1 + 96);
  v18 = *(a1 + 96);
  if (v18)
  {
    *(a1 + 104) = v18;
    operator delete(v18);
    *v19 = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v20 = 0;
  *(a1 + 96) = v33;
  *(a1 + 112) = v34;
  if (a2 && a4[1] - *a4 == v12)
  {
    if (v11 == v31)
    {
      v20 = 1;
    }

    else
    {
      v21 = 0;
      v22 = 1;
      v20 = 1;
      do
      {
        v23 = *(*a3 + 4 * v21);
        v24 = *(a2 + 8);
        if (v23 < (*(a2 + 9) - v24) >> 3 && (v25 = *(v24 + 8 * v23)) != 0)
        {
          v26 = *v17 + 24 * v21;
          v27 = *v25;
          *(v26 + 16) = *(v25 + 2);
          *v26 = v27;
          v28 = (*(a1 + 72) + 24 * v21);
          if (v28 != (v25 + 24))
          {
            sub_2418DF224(v28, *(v25 + 3), *(v25 + 4), (*(v25 + 4) - *(v25 + 3)) >> 2);
          }
        }

        else
        {
          printf("alLoopFrameInstruction::initializeLoopFrameInstruction error, output frame %d, norm index %d.\n", v22 - 1, v23);
          v20 = 0;
        }

        *(*v19 + 4 * v21) = *(*a4 + 4 * v21);
        v21 = v22;
      }

      while (v13 > v22++);
    }
  }

  return v20 & 1;
}

void sub_2418DECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2418DED18(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  *(a1 + 24) = 3;
  *(a1 + 28) = a3;
  if (v5)
  {
    [v5 cropRect];
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    [v6 roiStart];
    *(a1 + 64) = v15;
    *(a1 + 80) = v16;
    [v6 roiLength];
    *(a1 + 88) = v15;
    *(a1 + 104) = v16;
    v11 = MEMORY[0x277CC08F0];
    *(a1 + 112) = *MEMORY[0x277CC08F0];
    *(a1 + 128) = *(v11 + 16);
    v12 = [v6 numFrames];
    sub_2418DF7D0(&v15, v12);
    v13 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v13;
      operator delete(v13);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = v15;
    *(a1 + 16) = v16;
    if (v12)
    {
      [v6 getFrameInfo:0 frameInfo:&v15];
      operator new();
    }
  }

  else
  {
    NSLog(&cfstr_Preparerecipef.isa);
  }

  return v6 != 0;
}

void *sub_2418DF154(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DB600(result, a2);
  }

  return result;
}

void sub_2418DF1C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418DF1E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_2418DB51C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_2418DF224(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2418DB6C0(v6, v10);
    }

    sub_2418D3940();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_2418DF350(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_2418DB600(v6, v11);
    }

    sub_2418D3940();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_2418DF4AC(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_2418DF1E4(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_2418DD544(a1, v10);
    }

    sub_2418D3940();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_2418DF760(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_2418DF760(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_2418DF624(a1, (a2 + v11), a3, a1[1]);
  }
}

void *sub_2418DF624(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2418DCCCC(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2418DF6D8(v8);
  return v4;
}

uint64_t sub_2418DF6D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2418DF710(a1);
  }

  return a1;
}

void sub_2418DF710(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **sub_2418DF760(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_2418DF224(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_2418DF7D0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DF848(result, a2);
  }

  return result;
}

void sub_2418DF82C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418DF848(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2418DB744(a1, a2);
  }

  sub_2418D3940();
}

uint64_t sub_2418DF884(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB6C0(result, a4);
  }

  return result;
}

void sub_2418DF8DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418DF8F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB6C0(result, a4);
  }

  return result;
}

void sub_2418DF950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2418DF96C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2418DB6C0(v6, v10);
    }

    sub_2418D3940();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *sub_2418DFAA0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2418DB6C0(v6, v10);
    }

    sub_2418D3940();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *sub_2418DFBD4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DB600(result, a2);
  }

  return result;
}

void sub_2418DFC54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_2418DFC70(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = @"Unknown";
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 68) = 0;
  *(a1 + 96) = -2;
  *(a1 + 104) = 0;
  v2 = MEMORY[0x277CC0898];
  v3 = *MEMORY[0x277CC0898];
  *(a1 + 112) = *MEMORY[0x277CC0898];
  v4 = *(v2 + 16);
  *(a1 + 128) = v4;
  *(a1 + 152) = v4;
  *(a1 + 136) = v3;
  *(a1 + 176) = v4;
  *(a1 + 160) = v3;
  *(a1 + 200) = v4;
  *(a1 + 184) = v3;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  return result;
}

uint64_t sub_2418DFCF8(uint64_t a1)
{
  if ((*a1 & 4) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v1;
  v8 = v2;
  v5 = *(a1 + 48);
  if (!v5 || *(a1 + 56) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  sub_2418FD6FC(v5, (a1 + 60), &v6);
  result = 0;
  *(a1 + 112) = v6;
  return result;
}

uint64_t sub_2418DFD70(uint64_t a1)
{
  if ((*a1 & 4) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 48);
  if (!v3 || *(a1 + 56) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_2418FD4FC(v3);
  result = 0;
  *(a1 + 216) = v4;
  return result;
}

uint64_t sub_2418DFDD4(uint64_t a1)
{
  if ((*a1 & 4) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 48);
  if (!v3 || *(a1 + 56) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_2418FD8AC(v3);
  result = 0;
  *(a1 + 240) = v4;
  return result;
}

uint64_t sub_2418DFE38(uint64_t a1)
{
  if (*(a1 + 248))
  {
    return 0;
  }

  if ((*a1 & 4) != 0 && *(a1 + 48) && *(a1 + 56) == 1)
  {
    operator new();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2418DFED8(uint64_t a1)
{
  if ((*a1 & 4) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 48) || *(a1 + 56) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  sub_2418DFCF8(a1);
  sub_2418DFD70(a1);
  sub_2418DFDD4(a1);
  return 0;
}

float sub_2418DFF44(uint64_t a1, void *a2, int *a3)
{
  v5 = a2;
  if (*(a1 + 80))
  {
    v6 = *a3;
  }

  else
  {
    v6 = sub_2418F6690(a1 + 24, a1 + 80);
    *a3 = v6;
  }

  v7 = 0.0;
  if (!v6)
  {
    if (*(a1 + 80))
    {
      v7 = sub_2418F659C((a1 + 80), v5, a3);
    }

    else
    {
      *a3 = -1;
    }
  }

  return v7;
}

void *sub_2418DFFEC(void *a1, uint64_t a2, int a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2418E25A4(&v15);
  v23 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v14 = 0;

  sub_2418E2770(&v9, a2, a3, a4);
  v15 = v9;
  objc_storeStrong(&v16, v10);
  sub_2418DF224(v17, __p, v12, (v12 - __p) >> 2);
  v17[3] = v13;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  sub_2418E0184(a1, &v14);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  return a1;
}

void sub_2418E0104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2418E01E4(va);
  sub_2418E28FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2418E0148(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2418E0184(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_2418E2A00(a1, a2);
  }

  else
  {
    sub_2418E2B4C(a1, *(a1 + 8), a2);
    result = v3 + 104;
    *(a1 + 8) = v3 + 104;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2418E01E4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return a1;
}

float sub_2418E0238(uint64_t *a1, void *a2, int *a3)
{
  v5 = a2;
  v6 = *a1;
  if (a1[1] == *a1)
  {
    puts("algProcImage:: Must initialize with input image before calling process.");
    *a3 = -1;
    v8 = 0.0;
  }

  else
  {
    v10 = *v6;
    sub_2418E2890(v11, v6 + 8);
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_2418E2E20(&__p, *(v6 + 56), *(v6 + 64), (*(v6 + 64) - *(v6 + 56)) >> 3);
    v7 = *(v6 + 80);
    v18 = *(v6 + 96);
    v17 = v7;
    v8 = sub_2418DFF44(&v10, v5, a3);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }

  return v8;
}

void sub_2418E0344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2418E01E4(va);

  _Unwind_Resume(a1);
}

float sub_2418E037C(uint64_t *a1, void *a2, void *a3, int *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1[1] == *a1)
  {
    puts("algProcImage:: Must initialize with input image before calling process.");
    *a4 = -1;
    v18 = 0.0;
  }

  else
  {
    if (v7)
    {
      v43 = v8;
      v10 = 0;
      v11 = 0;
      while (v10 < [v7 count])
      {
        v12 = *a1 + 104 * v11;
        v47 = 0;
        v48 = 0;
        __p = 0;
        sub_2418E2E20(&__p, *(v12 + 56), *(v12 + 64), (*(v12 + 64) - *(v12 + 56)) >> 3);
        v13 = __p;
        if (v47 == __p)
        {
LABEL_12:
          if (v13)
          {
            v47 = v13;
            operator delete(v13);
          }

          break;
        }

        v14 = 0;
        v15 = 1;
        while (1)
        {
          v16 = *(*a1 + 104 * *&v13[8 * v14]);
          v17 = [v7 objectAtIndexedSubscript:v10];
          LOBYTE(v16) = [v16 isEqualToString:v17];

          if (v16)
          {
            break;
          }

          v14 = v15;
          v13 = __p;
          ++v15;
          if (v14 >= (v47 - __p) >> 3)
          {
            goto LABEL_12;
          }
        }

        v11 = *(__p + v14);
        ++v10;
        v47 = __p;
        operator delete(__p);
      }

      v44 = a4;
      while (v10 < [v7 count])
      {
        __p = 0;
        sub_2418E25A4(&v47);
        v56 = 0;
        v55 = 0;
        v52 = 0;
        v53 = 0;
        v51 = 0;
        v54 = 0;
        v19 = [v7 objectAtIndexedSubscript:v10];
        v20 = __p;
        __p = v19;

        v45 = 0;
        v21 = *a1;
        v22 = [v7 objectAtIndexedSubscript:v10];
        sub_2418FA408(v21 + 104 * v11 + 8, &v47, v22, &v45);

        if (v45 == 1)
        {
          *a4 = -1;
          v23 = v11;
        }

        else
        {
          v25 = *a1;
          v24 = a1[1];
          sub_2418E0184(a1, &__p);
          v23 = 0x4EC4EC4EC4EC4EC5 * ((v24 - v25) >> 3);
          v26 = (*a1 + 104 * v11);
          v28 = v26[8];
          v27 = v26[9];
          if (v28 >= v27)
          {
            v30 = v26[7];
            v31 = v28 - v30;
            v32 = (v28 - v30) >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              sub_2418D3940();
            }

            v34 = v27 - v30;
            if (v34 >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            v35 = v34 >= 0x7FFFFFFFFFFFFFF8;
            v36 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v35)
            {
              v36 = v33;
            }

            if (v36)
            {
              sub_2418E2ED8((v26 + 7), v36);
            }

            v37 = (v28 - v30) >> 3;
            v38 = (8 * v32);
            v39 = (8 * v32 - 8 * v37);
            *v38 = v23;
            v29 = v38 + 1;
            memcpy(v39, v30, v31);
            v40 = v26[7];
            v26[7] = v39;
            v26[8] = v29;
            v26[9] = 0;
            if (v40)
            {
              operator delete(v40);
            }

            a4 = v44;
          }

          else
          {
            *v28 = v23;
            v29 = v28 + 1;
          }

          v26[8] = v29;
        }

        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        ++v10;
        v11 = v23;
      }

      v9 = v43;
      v41 = sub_2418DFF44(*a1 + 104 * v11, v43, a4);
    }

    else
    {
      v41 = sub_2418E0238(a1, v8, a4);
    }

    v18 = v41;
  }

  return v18;
}

float sub_2418E077C(void *a1, void *a2, int *a3)
{
  v5 = a2;
  *a3 = 0;
  v6 = [v5 objectForKeyedSubscript:@"ALGFP_ImageId"];
  v7 = [v5 objectForKeyedSubscript:@"ALGFP_ImageFilter"];
  v8 = [v5 objectForKeyedSubscript:@"ALGFP_Statistic"];
  v9 = v8;
  if (v6 && v8)
  {
    v10 = a1[6];
    if (v10)
    {
      sub_2418FD4DC(v10);
      v11 = a1[6];
      if (v11)
      {
        sub_2418FD4EC(v11);
      }
    }

    if ([v6 isEqualToString:@"ALGFP_ImageId_Activity"])
    {
      v13 = a1[34];
      if (!v13)
      {
        if (!a1[30])
        {
          sub_2418DFDD4(a1);
        }

        operator new();
      }
    }

    else if ([v6 isEqualToString:@"ALGFP_ImageId_Activity_FirstThird"])
    {
      v13 = a1[36];
      if (!v13)
      {
        if (!a1[30])
        {
          sub_2418DFDD4(a1);
        }

        operator new();
      }
    }

    else if ([v6 isEqualToString:@"ALGFP_ImageId_Activity_LastThird"])
    {
      v13 = a1[37];
      if (!v13)
      {
        if (!a1[30])
        {
          sub_2418DFDD4(a1);
        }

        operator new();
      }
    }

    else if ([v6 isEqualToString:@"ALGFP_ImageId_Activity_FirstLastThirdMin"])
    {
      v13 = a1[38];
      if (!v13)
      {
        if (!a1[30])
        {
          sub_2418DFDD4(a1);
        }

        operator new();
      }
    }

    else if ([v6 isEqualToString:@"ALGFP_ImageId_Variability"])
    {
      v13 = a1[35];
      if (!v13)
      {
        if (!a1[30])
        {
          sub_2418DFDD4(a1);
        }

        operator new();
      }
    }

    else if ([v6 isEqualToString:@"ALGFP_ImageId_LoopClosure"])
    {
      v13 = a1[32];
      if (!v13)
      {
        if (!a1[27])
        {
          sub_2418DFD70(a1);
        }

        operator new();
      }
    }

    else if ([v6 isEqualToString:@"ALGFP_ImageId_CandidateEnergies"])
    {
      v13 = a1[33];
      if (!v13)
      {
        operator new();
      }
    }

    else
    {
      printf("processImageFeature error: Unknown image id: %s\n", [v6 UTF8String]);
      v13 = 0;
      *a3 = -1;
    }

    v14 = sub_2418E037C(v13, v7, v9, a3);
    if (*a3)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    *a3 = -1;
    v12 = 0.0;
  }

  return v12;
}

void sub_2418E0B64(_Unwind_Exception *a1)
{
  MEMORY[0x245CF24E0](v5, 0x20C40960023A9);

  _Unwind_Resume(a1);
}

float sub_2418E0BDC(uint64_t a1, void *a2, void *a3, int *a4)
{
  v7 = a2;
  v8 = a3;
  *a4 = 0;
  if ([v7 isEqualToString:@"ALGFID_ProcessedImage"])
  {
    Seconds = sub_2418E077C(a1, v8, a4);
  }

  else if ([v7 isEqualToString:@"ALGFID_ActivityDetected3Levels"])
  {
    *a4 = -1;
    Seconds = -1.0;
  }

  else if ([v7 isEqualToString:@"ALGFID_MaxIrisGapInLoop"])
  {
    if ((*(a1 + 124) & 0x1D) == 1)
    {
      v10 = 0;
    }

    else
    {
      sub_2418DFCF8(a1);
      if ((*(a1 + 124) & 0x1D) == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }
    }

    *a4 = v10;
    time = *(a1 + 112);
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    *a4 = -1;
    printf("extractRequestedFeature error: Unknown featureId %s.\n", [v7 UTF8String]);
    Seconds = 0.0;
  }

  return Seconds;
}

uint64_t sub_2418E0D38(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = sub_2418FD4D8(v2);
    MEMORY[0x245CF24E0](v3, 0x20C40A4A59CD2);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x245CF24E0](v4, 0x80C40D6874129);
    *(a1 + 216) = 0;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x245CF24E0](v6, 0x80C40D6874129);
    *(a1 + 224) = 0;
  }

  if (*(a1 + 240))
  {
    v8 = sub_2418FD484();
    MEMORY[0x245CF24E0](v8, 0x20C40769AC3DALL);
    *(a1 + 240) = 0;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = sub_2418DD698(v9);
    MEMORY[0x245CF24E0](v10, 0x80C40803F642BLL);
    *(a1 + 16) = 0;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v12;
      operator delete(v12);
    }

    MEMORY[0x245CF24E0](v11, 0x80C40D6874129);
    *(a1 + 24) = 0;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = sub_2418DD698(v13);
    MEMORY[0x245CF24E0](v14, 0x80C40803F642BLL);
    *(a1 + 32) = 0;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *v15;
    if (*v15)
    {
      *(v15 + 8) = v16;
      operator delete(v16);
    }

    MEMORY[0x245CF24E0](v15, 0x80C40D6874129);
    *(a1 + 40) = 0;
  }

  v17 = *(a1 + 256);
  if (v17)
  {
    v27 = *(a1 + 256);
    sub_2418E28FC(&v27);
    MEMORY[0x245CF24E0](v17, 0x20C40960023A9);
    *(a1 + 256) = 0;
  }

  v18 = *(a1 + 264);
  if (v18)
  {
    v27 = *(a1 + 264);
    sub_2418E28FC(&v27);
    MEMORY[0x245CF24E0](v18, 0x20C40960023A9);
    *(a1 + 264) = 0;
  }

  v19 = *(a1 + 272);
  if (v19)
  {
    v27 = *(a1 + 272);
    sub_2418E28FC(&v27);
    MEMORY[0x245CF24E0](v19, 0x20C40960023A9);
    *(a1 + 272) = 0;
  }

  v20 = *(a1 + 280);
  if (v20)
  {
    v27 = *(a1 + 280);
    sub_2418E28FC(&v27);
    MEMORY[0x245CF24E0](v20, 0x20C40960023A9);
    *(a1 + 280) = 0;
  }

  v21 = *(a1 + 288);
  if (v21)
  {
    v27 = *(a1 + 288);
    sub_2418E28FC(&v27);
    MEMORY[0x245CF24E0](v21, 0x20C40960023A9);
    *(a1 + 288) = 0;
  }

  v22 = *(a1 + 296);
  if (v22)
  {
    v27 = *(a1 + 296);
    sub_2418E28FC(&v27);
    MEMORY[0x245CF24E0](v22, 0x20C40960023A9);
    *(a1 + 296) = 0;
  }

  v23 = *(a1 + 304);
  if (v23)
  {
    v27 = *(a1 + 304);
    sub_2418E28FC(&v27);
    MEMORY[0x245CF24E0](v23, 0x20C40960023A9);
    *(a1 + 304) = 0;
  }

  v24 = *(a1 + 248);
  if (v24)
  {
    v25 = *v24;
    if (*v24)
    {
      *(v24 + 8) = v25;
      operator delete(v25);
    }

    MEMORY[0x245CF24E0](v24, 0x20C40960023A9);
    *(a1 + 248) = 0;
  }

  return a1;
}

id sub_2418E0FF4(uint64_t a1, int a2, int a3)
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 96)];
  [v6 setObject:v7 forKeyedSubscript:qword_27E54E820];

  [v6 setObject:*(a1 + 104) forKeyedSubscript:qword_27E54E828];
  v35 = *(a1 + 136);
  v8 = *MEMORY[0x277CBECE8];
  v9 = CMTimeCopyAsDictionary(&v35, *MEMORY[0x277CBECE8]);
  [v6 setObject:v9 forKeyedSubscript:qword_27E54E838];

  v35 = *(a1 + 160);
  v10 = CMTimeCopyAsDictionary(&v35, v8);
  [v6 setObject:v10 forKeyedSubscript:qword_27E54E840];

  v35 = *(a1 + 184);
  v11 = CMTimeCopyAsDictionary(&v35, v8);
  [v6 setObject:v11 forKeyedSubscript:qword_27E54E848];

  v35 = *(a1 + 112);
  v12 = CMTimeCopyAsDictionary(&v35, v8);
  [v6 setObject:v12 forKeyedSubscript:qword_27E54E830];

  v13 = MEMORY[0x277CCABB0];
  v35 = *(a1 + 112);
  Seconds = CMTimeGetSeconds(&v35);
  *&Seconds = Seconds;
  v15 = [v13 numberWithFloat:Seconds];
  [v6 setObject:v15 forKeyedSubscript:qword_27E54E878];

  v16 = *(a1 + 8);
  if (v16)
  {
    [v6 setObject:v16 forKeyedSubscript:qword_27E54E868];
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v17[1] - *v17) >> 2];
    v20 = *v17;
    if (v17[1] != *v17)
    {
      v21 = 0;
      do
      {
        LODWORD(v19) = *(v20 + 4 * v21);
        v22 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
        [v18 addObject:v22];

        ++v21;
        v20 = *v17;
      }

      while (v21 < (v17[1] - *v17) >> 2);
    }

    [v6 setObject:v18 forKeyedSubscript:qword_27E54E870];
  }

  if (*(a1 + 248))
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = **(a1 + 248);
    if (*(*(a1 + 248) + 8) != v24)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = sub_2418DCFFC((v24 + v25));
        [v23 addObject:v27];

        ++v26;
        v24 = **(a1 + 248);
        v25 += 28;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 248) + 8) - v24) >> 2) > v26);
    }

    [v6 setObject:v23 forKeyedSubscript:qword_27E54E850];
  }

  v28 = *(a1 + 88);
  if (v28)
  {
    if (a2)
    {
      v29 = [v28 featuresDict];

      if (v29)
      {
        v30 = [*(a1 + 88) featuresDict];
        [v6 setObject:v30 forKeyedSubscript:qword_27E54E858];
      }
    }

    if (a3)
    {
      v31 = [*(a1 + 88) fullFeaturesDict];

      if (v31 || ![*(a1 + 88) processFullDictionary:0])
      {
        v32 = [*(a1 + 88) fullFeaturesDict];

        if (v32)
        {
          v33 = [*(a1 + 88) fullFeaturesDict];
          [v6 setObject:v33 forKeyedSubscript:qword_27E54E860];
        }
      }
    }
  }

  return v6;
}

void sub_2418E1454(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v7)
  {
    sub_2418E1504(a1, v7, v5);
    sub_2418E1698(a1, v7, v6);
    sub_2418E17CC(a1, v7, v6);
  }

  else
  {
    puts("PostGateFeatureExtractor: Can't dump features; output directory URL unset.");
  }
}

void sub_2418E1504(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (*(a1 + 216) || (sub_2418DFD70(a1), *(a1 + 216)))
  {
    if (!*(a1 + 48) || (*(a1 + 56) & 1) == 0)
    {
      puts("Can't dump loopClosureEnergyMap without postGateFeatureExtractor.");
    }

    if (v16)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"loopClosureEnergyMap%@.txt", v5];
      v7 = [v16 URLByAppendingPathComponent:v6];
      v8 = [v7 path];
      v9 = [v8 UTF8String];

      v10 = *(a1 + 216);
      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = sub_2418FD4DC(v11);
        v13 = *(a1 + 48);
        if (v13)
        {
          v14 = sub_2418FD4EC(v13);
LABEL_13:
          sub_2418E1B68(v10, v12, v14, v9);

          goto LABEL_16;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = 0;
      goto LABEL_13;
    }

    v15 = "Can't dump loopClosureEnergyMap; output directory URL unset.";
  }

  else
  {
    v15 = "No loopClosureEnergyMap features available to dump: error extracting.";
  }

  puts(v15);
LABEL_16:
}

void sub_2418E1698(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (*(a1 + 224))
  {
    if (v11)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"candidateLoopClosureEnergies%@.txt", v5];
      v7 = [v11 URLByAppendingPathComponent:v6];
      v8 = [v7 path];
      v9 = [v8 UTF8String];

      sub_2418E1B68(*(a1 + 224), *(a1 + 232), *(a1 + 236), v9);
      goto LABEL_7;
    }

    v10 = "Can't dump candidateLoopEnergyFeatures; output directory URL unset.";
  }

  else
  {
    v10 = "No candidateLoopEnergy features available to dump (must be set via setCandidateLoopEnergyFeatures()).";
  }

  puts(v10);
LABEL_7:
}

void sub_2418E17CC(uint64_t a1, void *a2, void *a3)
{
  v31 = a2;
  v5 = a3;
  if (!*(a1 + 240))
  {
    sub_2418DFDD4(a1);
    if (!*(a1 + 240))
    {
      v10 = "No activity map features available to dump: error extracting.";
      goto LABEL_16;
    }
  }

  if (!*(a1 + 48) || (*(a1 + 56) & 1) == 0)
  {
    puts("Can't dump activity features without postGateFeatureExtractor.");
  }

  if (!v31)
  {
    v10 = "Can't dump activity features; output directory URL unset.";
LABEL_16:
    puts(v10);
    goto LABEL_17;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = sub_2418FD4DC(v6);
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = sub_2418FD4EC(v8);
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_13:
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"activityMap%@.txt", v5];
  v12 = [v31 URLByAppendingPathComponent:v11];
  v13 = [v12 path];
  v14 = [v13 UTF8String];

  sub_2418E1B68(**(a1 + 240), v7, v9, v14);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"firstThirdActivityMap%@.txt", v5];
  v16 = [v31 URLByAppendingPathComponent:v15];
  v17 = [v16 path];
  v18 = [v17 UTF8String];

  sub_2418E1B68(*(*(a1 + 240) + 16), v7, v9, v18);
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastThirdActivityMap%@.txt", v5];
  v20 = [v31 URLByAppendingPathComponent:v19];
  v21 = [v20 path];
  v22 = [v21 UTF8String];

  sub_2418E1B68(*(*(a1 + 240) + 24), v7, v9, v22);
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"firstLastThirdMinActivityMap%@.txt", v5];
  v24 = [v31 URLByAppendingPathComponent:v23];
  v25 = [v24 path];
  v26 = [v25 UTF8String];

  sub_2418E1B68(*(*(a1 + 240) + 32), v7, v9, v26);
  if (*(*(a1 + 240) + 8))
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"variabilityMap%@.txt", v5];
    v28 = [v31 URLByAppendingPathComponent:v27];
    v29 = [v28 path];
    v30 = [v29 UTF8String];

    sub_2418E1B68(*(*(a1 + 240) + 8), v7, v9, v30);
  }

LABEL_17:
}

FILE *sub_2418E1B68(void *a1, int a2, int a3, char *__filename)
{
  result = fopen(__filename, "w");
  if (result)
  {
    v8 = result;
    fprintf(result, "%d %d\n", a2, a3);
    v9 = a3 * a2;
    if (a3 * a2)
    {
      v10 = 0;
      v11 = 4 * v9;
      do
      {
        fprintf(v8, "%f ", *(*a1 + v10));
        v10 += 4;
      }

      while (v11 != v10);
    }

    return fclose(v8);
  }

  return result;
}

uint64_t sub_2418E1C3C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 & 1) == 0)
  {
    puts("validatePostGateFeatures error: no valid loopData");
  }

  return v1;
}

uint64_t sub_2418E1C70(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(v1 + 8);
    if ([v3 count])
    {
      NSLog(&cfstr_Algatingfeatur.isa);
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = *v11;
        do
        {
          v7 = 0;
          do
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v4);
            }

            NSLog(&stru_28537ECD0.isa, *(*(&v10 + 1) + 8 * v7++));
          }

          while (v5 != v7);
          v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v5);
      }
    }

    v8 = **(a1 + 16);
    operator new();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2418E1F84(uint64_t a1)
{
  v1 = a1;
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v36 = *(v2 + 8);
    if ([v36 count])
    {
      NSLog(&cfstr_Algatingfeatur.isa);
      v3 = v1;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v4 = v36;
      v5 = [v4 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v5)
      {
        v6 = *v43;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v43 != v6)
            {
              objc_enumerationMutation(v4);
            }

            NSLog(&stru_28537ECD0.isa, *(*(&v42 + 1) + 8 * i));
          }

          v5 = [v4 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v5);
      }

      v1 = v3;
    }

    v8 = **(v1 + 32);
    __p = 0;
    v40 = 0;
    v41 = 0;
    sub_2418E2504(&__p, [v8 count]);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v12;
      if ([v8 count] <= v12)
      {
        break;
      }

      v14 = [v8 objectAtIndexedSubscript:v12];
      v37 = v10;
      v38 = v9;
      v15 = sub_2418DD768(v14, &v38, &v37);
      v16 = v38;

      v17 = v37;
      if (v15 || ((v18 = [v16 isEqualToString:@"ALGFID_ActivityDetect"], v17) ? (v19 = v18) : (v19 = 0), v19 != 1))
      {
        v22 = 0xFFFFFFFFLL;
      }

      else
      {
        v20 = [v17 objectForKeyedSubscript:@"ALGFP_ActivityLevel"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v20 integerValue];
        }

        else
        {
          v21 = -1;
        }

        v23 = [v17 objectForKeyedSubscript:@"ALGFP_ActivityArea"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v23 floatValue];
          v22 = 0xFFFFFFFFLL;
          if ((v21 & 0x80000000) == 0 && v24 >= 0.0)
          {
            v25 = v40;
            if (v40 >= v41)
            {
              v27 = (v40 - __p) >> 3;
              v28 = v27 + 1;
              if ((v27 + 1) >> 61)
              {
                sub_2418D3940();
              }

              v29 = v41 - __p;
              if ((v41 - __p) >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                sub_2418E2ED8(&__p, v30);
              }

              v31 = 8 * v27;
              *v31 = v21;
              *(v31 + 4) = v24;
              v26 = 8 * v27 + 8;
              v32 = (8 * v27 - (v40 - __p));
              memcpy((v31 - (v40 - __p)), __p, v40 - __p);
              v33 = __p;
              __p = v32;
              v40 = v26;
              v41 = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v40 = v21;
              *(v25 + 1) = v24;
              v26 = (v25 + 8);
            }

            v40 = v26;
            v22 = v11;
          }
        }

        else
        {
          v22 = 0xFFFFFFFFLL;
        }
      }

      v12 = v13 + 1;
      v9 = v16;
      v10 = v17;
      v11 = v22;
    }

    if (!v11 && !sub_2418DFE38(v1))
    {
      [v8 count];
      operator new();
    }

    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v34 = sub_2418DB33C(*(a1 + 80));
    printf("ALGatingFeatures (%s): no activity-detector feature instructions available\n", v34);
  }

  return 0xFFFFFFFFLL;
}

void sub_2418E2438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  MEMORY[0x245CF24E0](v19, 0x80C40D6874129);

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_2418E2504(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_2418E2ED8(result, a2);
    }

    sub_2418D3940();
  }

  return result;
}

uint64_t sub_2418E25A4(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2418E2610((a1 + 16), 0);
  return a1;
}

void sub_2418E25E8(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_2418E2610(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_2418E2640(a1, a2 - v2);
  }
}

void sub_2418E2640(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_2418D3940();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2418DB6FC(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_2418E2770(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  sub_2418E27DC(a1, a2, a3, a4, 0, 0);
  return a1;
}

void sub_2418E27B8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  if (v4)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_2418E27DC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6)
{
  v13 = a6;
  *a1 = a5;
  objc_storeStrong((a1 + 8), a6);
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  sub_2418E2610((a1 + 16), a4 * a3);
  v12 = *(a2 + 8);
  if (v12 != *a2)
  {
    memmove(*(a1 + 16), *a2, v12 - *a2);
  }
}

uint64_t sub_2418E2890(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  sub_2418E27DC(a1, a2 + 16, *(a2 + 40), *(a2 + 44), *a2, *(a2 + 8));
  return a1;
}

void sub_2418E28D8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  if (v4)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_2418E28FC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2418E2950(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2418E2950(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_2418E29A4(a1, i))
  {
    i -= 104;
  }

  *(a1 + 8) = a2;
}

void sub_2418E29A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a2;
}

uint64_t sub_2418E2A00(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_2418D3940();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_2418E2BE8(a1, v6);
  }

  v13 = 0;
  v14 = 104 * v2;
  sub_2418E2B4C(a1, (104 * v2), a2);
  v15 = (104 * v2 + 104);
  v7 = a1[1];
  v8 = (104 * v2 + *a1 - v7);
  sub_2418E2C44(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_2418E2DA0(&v13);
  return v12;
}

void sub_2418E2B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2418E2DA0(va);
  _Unwind_Resume(a1);
}

__n128 sub_2418E2B4C(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = a3 + 8;
  a2->n128_u64[0] = *a3;
  sub_2418E2890(&a2->n128_i64[1], v5);
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[4].n128_u64[1] = 0;
  sub_2418E2E20(&a2[3].n128_i64[1], *(a3 + 56), *(a3 + 64), (*(a3 + 64) - *(a3 + 56)) >> 3);
  result = *(a3 + 80);
  a2[6].n128_u32[0] = *(a3 + 96);
  a2[5] = result;
  return result;
}

void sub_2418E2BC4(_Unwind_Exception *a1)
{
  sub_2418E0148(v2);

  _Unwind_Resume(a1);
}

void sub_2418E2BE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_2418D3A40();
}

uint64_t sub_2418E2C44(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_2418E2B4C(a1, a4, v7);
      v7 += 104;
      a4 = (v12 + 104);
      v12 = (v12 + 104);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_2418E29A4(a1, v5);
      v5 += 104;
    }
  }

  return sub_2418E2D14(v9);
}

uint64_t sub_2418E2D14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2418E2D4C(a1);
  }

  return a1;
}

void sub_2418E2D4C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 104;
      sub_2418E29A4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_2418E2DA0(uint64_t a1)
{
  sub_2418E2DD8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2418E2DD8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    sub_2418E29A4(v5, v4 - 104);
  }
}

uint64_t sub_2418E2E20(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418E2E9C(result, a4);
  }

  return result;
}

void sub_2418E2E80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418E2E9C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2418E2ED8(a1, a2);
  }

  sub_2418D3940();
}

void sub_2418E2ED8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2418D3A40();
}

void sub_2418E3340(void *a1, void *a2, int a3, int a4, float a5)
{
  src.data = a1;
  src.height = a3;
  src.width = a4;
  src.rowBytes = a4;
  dest.data = a2;
  dest.height = a3;
  dest.width = a4;
  dest.rowBytes = a4;
  v6 = ((ceilf(a5) * 2.0) + 1.0);
  sub_2418DD198(kernel, (v6 * v6));
  v8 = kernel[0];
  if (v6 >= 1)
  {
    v9 = 0;
    *v7.i32 = a5 * a5;
    v10 = vdupq_n_s64(v6 - 1);
    v11 = kernel[0] + 7;
    v12.i64[0] = 0x1000000010;
    v12.i64[1] = 0x1000000010;
    v13 = vdupq_n_s32(v6 >> 1);
    do
    {
      v14 = (v9 - (v6 >> 1)) * (v9 - (v6 >> 1));
      v15 = v11;
      v16 = (v6 + 15) & 0xFFFFFFF0;
      v17 = xmmword_241911710;
      v18 = xmmword_241911700;
      v19 = xmmword_2419117C0;
      v20 = xmmword_2419117B0;
      v21 = xmmword_2419117A0;
      v22 = xmmword_241911790;
      v23 = xmmword_241911780;
      v24 = xmmword_241911770;
      v25 = xmmword_2419116D0;
      v26 = xmmword_241911760;
      v27 = xmmword_241911750;
      v28 = xmmword_241911740;
      do
      {
        v29 = vmovn_s64(vcgeq_u64(v10, v17));
        v30 = vsubq_s32(v25, v13);
        if (vuzp1_s8(vuzp1_s16(v29, v7), v7).u8[0])
        {
          if (*v7.i32 < (v14 + v30.i32[0] * v30.i32[0]))
          {
            v31 = 0;
          }

          else
          {
            v31 = -1;
          }

          *(v15 - 7) = v31;
        }

        if (vuzp1_s8(vuzp1_s16(v29, v7), *&v7).i8[1])
        {
          if (*v7.i32 < (v14 + v30.i32[1] * v30.i32[1]))
          {
            v32 = 0;
          }

          else
          {
            v32 = -1;
          }

          *(v15 - 6) = v32;
        }

        v33 = vmovn_s64(vcgeq_u64(v10, v18));
        if (vuzp1_s8(vuzp1_s16(v7, v33), *&v7).i8[2])
        {
          if (*v7.i32 < (v14 + v30.i32[2] * v30.i32[2]))
          {
            v34 = 0;
          }

          else
          {
            v34 = -1;
          }

          *(v15 - 5) = v34;
        }

        if (vuzp1_s8(vuzp1_s16(v7, v33), *&v7).i8[3])
        {
          if (*v7.i32 < (v14 + v30.i32[3] * v30.i32[3]))
          {
            v35 = 0;
          }

          else
          {
            v35 = -1;
          }

          *(v15 - 4) = v35;
        }

        v36 = vsubq_s32(v26, v13);
        v37 = vmovn_s64(vcgeq_u64(v10, v19));
        if (vuzp1_s8(*&v7, vuzp1_s16(v37, v7)).i32[1])
        {
          if (*v7.i32 < (v14 + v36.i32[0] * v36.i32[0]))
          {
            v38 = 0;
          }

          else
          {
            v38 = -1;
          }

          *(v15 - 3) = v38;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v37, v7)).i8[5])
        {
          if (*v7.i32 < (v14 + v36.i32[1] * v36.i32[1]))
          {
            v39 = 0;
          }

          else
          {
            v39 = -1;
          }

          *(v15 - 2) = v39;
        }

        v40 = vmovn_s64(vcgeq_u64(v10, v20));
        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v40)).i8[6])
        {
          if (*v7.i32 < (v14 + v36.i32[2] * v36.i32[2]))
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }

          *(v15 - 1) = v41;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v40)).i8[7])
        {
          if (*v7.i32 < (v14 + v36.i32[3] * v36.i32[3]))
          {
            v42 = 0;
          }

          else
          {
            v42 = -1;
          }

          *v15 = v42;
        }

        v43 = vsubq_s32(v27, v13);
        v44 = vmovn_s64(vcgeq_u64(v10, v21));
        if (vuzp1_s8(vuzp1_s16(v44, v7), v7).u8[0])
        {
          if (*v7.i32 < (v14 + v43.i32[0] * v43.i32[0]))
          {
            v45 = 0;
          }

          else
          {
            v45 = -1;
          }

          v15[1] = v45;
        }

        if (vuzp1_s8(vuzp1_s16(v44, v7), *&v7).i8[1])
        {
          if (*v7.i32 < (v14 + v43.i32[1] * v43.i32[1]))
          {
            v46 = 0;
          }

          else
          {
            v46 = -1;
          }

          v15[2] = v46;
        }

        v47 = vmovn_s64(vcgeq_u64(v10, v22));
        if (vuzp1_s8(vuzp1_s16(v7, v47), *&v7).i8[2])
        {
          if (*v7.i32 < (v14 + v43.i32[2] * v43.i32[2]))
          {
            v48 = 0;
          }

          else
          {
            v48 = -1;
          }

          v15[3] = v48;
        }

        if (vuzp1_s8(vuzp1_s16(v7, v47), *&v7).i8[3])
        {
          if (*v7.i32 < (v14 + v43.i32[3] * v43.i32[3]))
          {
            v49 = 0;
          }

          else
          {
            v49 = -1;
          }

          v15[4] = v49;
        }

        v50 = vsubq_s32(v28, v13);
        v51 = vmovn_s64(vcgeq_u64(v10, v23));
        if (vuzp1_s8(*&v7, vuzp1_s16(v51, v7)).i32[1])
        {
          if (*v7.i32 < (v14 + v50.i32[0] * v50.i32[0]))
          {
            v52 = 0;
          }

          else
          {
            v52 = -1;
          }

          v15[5] = v52;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v51, v7)).i8[5])
        {
          if (*v7.i32 < (v14 + v50.i32[1] * v50.i32[1]))
          {
            v53 = 0;
          }

          else
          {
            v53 = -1;
          }

          v15[6] = v53;
        }

        v54 = vmovn_s64(vcgeq_u64(v10, v24));
        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v54)).i8[6])
        {
          if (*v7.i32 < (v14 + v50.i32[2] * v50.i32[2]))
          {
            v55 = 0;
          }

          else
          {
            v55 = -1;
          }

          v15[7] = v55;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v54)).i8[7])
        {
          if (*v7.i32 < (v14 + v50.i32[3] * v50.i32[3]))
          {
            v56 = 0;
          }

          else
          {
            v56 = -1;
          }

          v15[8] = v56;
        }

        v57 = vdupq_n_s64(0x10uLL);
        v19 = vaddq_s64(v19, v57);
        v18 = vaddq_s64(v18, v57);
        v17 = vaddq_s64(v17, v57);
        v20 = vaddq_s64(v20, v57);
        v21 = vaddq_s64(v21, v57);
        v22 = vaddq_s64(v22, v57);
        v23 = vaddq_s64(v23, v57);
        v24 = vaddq_s64(v24, v57);
        v25 = vaddq_s32(v25, v12);
        v26 = vaddq_s32(v26, v12);
        v27 = vaddq_s32(v27, v12);
        v28 = vaddq_s32(v28, v12);
        v15 += 16;
        v16 -= 16;
      }

      while (v16);
      ++v9;
      v11 += v6;
    }

    while (v9 != v6);
    v8 = kernel[0];
  }

  v58 = vImageErode_Planar8(&src, &dest, 0, 0, v8, v6, v6, 8u);
  if (v58)
  {
    printf("erodePlanarU8Image vImage_Error: %zd", v58);
  }

  if (kernel[0])
  {
    kernel[1] = kernel[0];
    operator delete(kernel[0]);
  }
}

void sub_2418E3800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418E381C(void *a1, void *a2, int a3, int a4, float a5)
{
  src.data = a1;
  src.height = a3;
  src.width = a4;
  src.rowBytes = a4;
  dest.data = a2;
  dest.height = a3;
  dest.width = a4;
  dest.rowBytes = a4;
  v6 = ((ceilf(a5) * 2.0) + 1.0);
  sub_2418DD198(kernel, (v6 * v6));
  v8 = kernel[0];
  if (v6 >= 1)
  {
    v9 = 0;
    *v7.i32 = a5 * a5;
    v10 = vdupq_n_s64(v6 - 1);
    v11 = kernel[0] + 7;
    v12.i64[0] = 0x1000000010;
    v12.i64[1] = 0x1000000010;
    v13 = vdupq_n_s32(v6 >> 1);
    do
    {
      v14 = (v9 - (v6 >> 1)) * (v9 - (v6 >> 1));
      v15 = v11;
      v16 = (v6 + 15) & 0xFFFFFFF0;
      v17 = xmmword_241911710;
      v18 = xmmword_241911700;
      v19 = xmmword_2419117C0;
      v20 = xmmword_2419117B0;
      v21 = xmmword_2419117A0;
      v22 = xmmword_241911790;
      v23 = xmmword_241911780;
      v24 = xmmword_241911770;
      v25 = xmmword_2419116D0;
      v26 = xmmword_241911760;
      v27 = xmmword_241911750;
      v28 = xmmword_241911740;
      do
      {
        v29 = vmovn_s64(vcgeq_u64(v10, v17));
        v30 = vsubq_s32(v25, v13);
        if (vuzp1_s8(vuzp1_s16(v29, v7), v7).u8[0])
        {
          if (*v7.i32 >= (v14 + v30.i32[0] * v30.i32[0]))
          {
            v31 = 0;
          }

          else
          {
            v31 = -1;
          }

          *(v15 - 7) = v31;
        }

        if (vuzp1_s8(vuzp1_s16(v29, v7), *&v7).i8[1])
        {
          if (*v7.i32 >= (v14 + v30.i32[1] * v30.i32[1]))
          {
            v32 = 0;
          }

          else
          {
            v32 = -1;
          }

          *(v15 - 6) = v32;
        }

        v33 = vmovn_s64(vcgeq_u64(v10, v18));
        if (vuzp1_s8(vuzp1_s16(v7, v33), *&v7).i8[2])
        {
          if (*v7.i32 >= (v14 + v30.i32[2] * v30.i32[2]))
          {
            v34 = 0;
          }

          else
          {
            v34 = -1;
          }

          *(v15 - 5) = v34;
        }

        if (vuzp1_s8(vuzp1_s16(v7, v33), *&v7).i8[3])
        {
          if (*v7.i32 >= (v14 + v30.i32[3] * v30.i32[3]))
          {
            v35 = 0;
          }

          else
          {
            v35 = -1;
          }

          *(v15 - 4) = v35;
        }

        v36 = vsubq_s32(v26, v13);
        v37 = vmovn_s64(vcgeq_u64(v10, v19));
        if (vuzp1_s8(*&v7, vuzp1_s16(v37, v7)).i32[1])
        {
          if (*v7.i32 >= (v14 + v36.i32[0] * v36.i32[0]))
          {
            v38 = 0;
          }

          else
          {
            v38 = -1;
          }

          *(v15 - 3) = v38;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v37, v7)).i8[5])
        {
          if (*v7.i32 >= (v14 + v36.i32[1] * v36.i32[1]))
          {
            v39 = 0;
          }

          else
          {
            v39 = -1;
          }

          *(v15 - 2) = v39;
        }

        v40 = vmovn_s64(vcgeq_u64(v10, v20));
        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v40)).i8[6])
        {
          if (*v7.i32 >= (v14 + v36.i32[2] * v36.i32[2]))
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }

          *(v15 - 1) = v41;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v40)).i8[7])
        {
          if (*v7.i32 >= (v14 + v36.i32[3] * v36.i32[3]))
          {
            v42 = 0;
          }

          else
          {
            v42 = -1;
          }

          *v15 = v42;
        }

        v43 = vsubq_s32(v27, v13);
        v44 = vmovn_s64(vcgeq_u64(v10, v21));
        if (vuzp1_s8(vuzp1_s16(v44, v7), v7).u8[0])
        {
          if (*v7.i32 >= (v14 + v43.i32[0] * v43.i32[0]))
          {
            v45 = 0;
          }

          else
          {
            v45 = -1;
          }

          v15[1] = v45;
        }

        if (vuzp1_s8(vuzp1_s16(v44, v7), *&v7).i8[1])
        {
          if (*v7.i32 >= (v14 + v43.i32[1] * v43.i32[1]))
          {
            v46 = 0;
          }

          else
          {
            v46 = -1;
          }

          v15[2] = v46;
        }

        v47 = vmovn_s64(vcgeq_u64(v10, v22));
        if (vuzp1_s8(vuzp1_s16(v7, v47), *&v7).i8[2])
        {
          if (*v7.i32 >= (v14 + v43.i32[2] * v43.i32[2]))
          {
            v48 = 0;
          }

          else
          {
            v48 = -1;
          }

          v15[3] = v48;
        }

        if (vuzp1_s8(vuzp1_s16(v7, v47), *&v7).i8[3])
        {
          if (*v7.i32 >= (v14 + v43.i32[3] * v43.i32[3]))
          {
            v49 = 0;
          }

          else
          {
            v49 = -1;
          }

          v15[4] = v49;
        }

        v50 = vsubq_s32(v28, v13);
        v51 = vmovn_s64(vcgeq_u64(v10, v23));
        if (vuzp1_s8(*&v7, vuzp1_s16(v51, v7)).i32[1])
        {
          if (*v7.i32 >= (v14 + v50.i32[0] * v50.i32[0]))
          {
            v52 = 0;
          }

          else
          {
            v52 = -1;
          }

          v15[5] = v52;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v51, v7)).i8[5])
        {
          if (*v7.i32 >= (v14 + v50.i32[1] * v50.i32[1]))
          {
            v53 = 0;
          }

          else
          {
            v53 = -1;
          }

          v15[6] = v53;
        }

        v54 = vmovn_s64(vcgeq_u64(v10, v24));
        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v54)).i8[6])
        {
          if (*v7.i32 >= (v14 + v50.i32[2] * v50.i32[2]))
          {
            v55 = 0;
          }

          else
          {
            v55 = -1;
          }

          v15[7] = v55;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v7, v54)).i8[7])
        {
          if (*v7.i32 >= (v14 + v50.i32[3] * v50.i32[3]))
          {
            v56 = 0;
          }

          else
          {
            v56 = -1;
          }

          v15[8] = v56;
        }

        v57 = vdupq_n_s64(0x10uLL);
        v19 = vaddq_s64(v19, v57);
        v18 = vaddq_s64(v18, v57);
        v17 = vaddq_s64(v17, v57);
        v20 = vaddq_s64(v20, v57);
        v21 = vaddq_s64(v21, v57);
        v22 = vaddq_s64(v22, v57);
        v23 = vaddq_s64(v23, v57);
        v24 = vaddq_s64(v24, v57);
        v25 = vaddq_s32(v25, v12);
        v26 = vaddq_s32(v26, v12);
        v27 = vaddq_s32(v27, v12);
        v28 = vaddq_s32(v28, v12);
        v15 += 16;
        v16 -= 16;
      }

      while (v16);
      ++v9;
      v11 += v6;
    }

    while (v9 != v6);
    v8 = kernel[0];
  }

  v58 = vImageDilate_Planar8(&src, &dest, 0, 0, v8, v6, v6, 8u);
  if (v58)
  {
    printf("dilatePlanarU8Image vImage_Error: %zd", v58);
  }

  if (kernel[0])
  {
    kernel[1] = kernel[0];
    operator delete(kernel[0]);
  }
}

void sub_2418E3CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418E3CF8(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  v4 = a3 * a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_2418DD198((a1 + 40), v4);
  sub_2418DD198((a1 + 64), v4);
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  return a1;
}

void sub_2418E3D60(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418E3D80(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

void sub_2418E3D88(uint64_t a1, int a2)
{
  v6 = *(a1 + 40);
  v4 = a1 + 40;
  v5 = v6;
  v7 = *(v4 - 32) * *(v4 - 36);
  v8 = *(v4 + 8) - v6;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      *(a1 + 48) = v5 + v7;
    }
  }

  else
  {
    sub_2418DD2D8(v4, v7 - v8);
  }

  v9 = qos_class_self();
  global_queue = dispatch_get_global_queue(v9, 0);
  v11 = *(a1 + 4);
  v13 = __OFADD__(v11, 7);
  v14 = v11 + 7;
  v12 = v11 + 7 < 0;
  v15 = v11 + 14;
  if (v12 == v13)
  {
    v15 = v14;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_2418E3E64;
  block[3] = &unk_278CF7AF0;
  block[4] = a1;
  block[5] = v15 >> 3;
  v17 = a2;
  dispatch_apply(8uLL, global_queue, block);
}

uint64_t sub_2418E3E64(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  v4 = v2 * a2;
  v5 = v2 * a2 + v2;
  if (v5 >= *(v3 + 4))
  {
    v6 = *(v3 + 4);
  }

  else
  {
    v6 = v5;
  }

  if (v6 > v4)
  {
    v7 = result;
    v8 = *(v3 + 8);
    do
    {
      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = **(v3 + 24);
          if (*(*(v3 + 24) + 8) - v10 <= (v9 + v4 * v8) || (v11 = sub_2418E3F80(**(v3 + 32), v8, *(v3 + 4), v9, v4, *(v7 + 48), *(v10 + v4 * v8 + v9)), v12 = *(v3 + 8), v13 = **(v3 + 32), *(*(v3 + 32) + 8) - v13 <= (v9 + v12 * v4)))
          {
            sub_2418DD5E8();
          }

          v14 = v11;
          result = sub_2418E3F80(**(v3 + 24), v12, *(v3 + 4), v9, v4, *(v7 + 48), *(v13 + v4 * v12 + v9));
          if (result >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = result;
          }

          *(*(v3 + 40) + *(v3 + 8) * v4 + v9) = v15;
          v8 = *(v3 + 8);
          ++v9;
        }

        while (v9 < v8);
      }

      ++v4;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t sub_2418E3F80(uint64_t a1, int a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  v7 = (a5 - a6) & ~((a5 - a6) >> 31);
  if (a6 + a5 >= a3)
  {
    v8 = a3 - 1;
  }

  else
  {
    v8 = a6 + a5;
  }

  if (v7 <= v8)
  {
    v10 = a6 + a4;
    if (a6 + a4 >= a2)
    {
      v10 = a2 - 1;
    }

    v11 = (a4 - a6) & ~((a4 - a6) >> 31);
    v12 = a2;
    v13 = (v8 + 1);
    v14 = (a1 + v11 + a2 * v7);
    v9 = -1;
    do
    {
      v15 = (v10 + 1) - v11;
      v16 = v14;
      if (v11 <= v10)
      {
        do
        {
          v17 = *v16++;
          v18 = a7 - v17;
          v19 = v17 - a7;
          if (v17 <= a7)
          {
            v19 = v18;
          }

          if (v19 < v9)
          {
            v9 = v19;
          }

          --v15;
        }

        while (v15);
      }

      ++v7;
      v14 += v12;
    }

    while (v7 != v13);
  }

  else
  {
    return -1;
  }

  return v9;
}

void sub_2418E402C(uint64_t a1, int a2)
{
  v5 = (a1 + 64);
  v4 = *(a1 + 64);
  v6 = *(a1 + 8) * *(a1 + 4);
  v7 = *(a1 + 72) - v4;
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      *(a1 + 72) = v4 + v6;
    }
  }

  else
  {
    sub_2418DD2D8((a1 + 64), v6 - v7);
  }

  sub_2418E3D88(a1, a2);
  sub_2418DD198(__p, *(a1 + 8) * *(a1 + 4));
  sub_2418E381C(*(a1 + 40), __p[0], *(a1 + 4), *(a1 + 8), 1.0);
  sub_2418E3340(__p[0], *(a1 + 64), *(a1 + 4), *(a1 + 8), 2.0);
  v8 = *(a1 + 8);
  v9 = *(a1 + 4);
  v10 = llroundf(v9 * 0.07);
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = llroundf(v8 * 0.07);
  if (v12 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v11 >= 1)
  {
    v14 = 0;
    v15 = v11;
    do
    {
      if (v8 >= 1)
      {
        bzero((*v5 + v14), v8);
      }

      v14 += v8;
      --v15;
    }

    while (v15);
    v16 = v9 - v11;
    v17 = v9 - v11;
    v18 = v8 * v16;
    do
    {
      if (v8 >= 1)
      {
        bzero((*v5 + v18), v8);
      }

      ++v17;
      v18 += v8;
    }

    while (v17 < v9);
  }

  if (v9 >= 1)
  {
    v19 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (v13 >= 1)
      {
        v21 = *v5 + i * v8;
        v22 = (*v5 + v19);
        v23 = v8 - 1;
        v24 = v13;
        do
        {
          *v22++ = 0;
          *(v21 + v23--) = 0;
          --v24;
        }

        while (v24);
      }

      v19 += v8;
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2418E41F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418E4210(uint64_t a1, unsigned int a2, float a3)
{
  *(a1 + 12) = a2;
  *(a1 + 16) = a3;
  sub_2418F8634(a1 + 112, a2, *(a1 + 64), *(a1 + 4), *(a1 + 8), *(a1 + 8));

  return sub_2418E4260(a1);
}

uint64_t sub_2418E4260(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2 >= *(a1 + 8))
  {
    v2 = *(a1 + 8);
  }

  v3 = vcvtps_s32_f32(*(a1 + 16) * v2);
  v4 = sub_2418F87C8((a1 + 112), v3, v3, (a1 + 160), (a1 + 168));
  return v4 & sub_2418F8808(a1 + 112, v3, v3, (a1 + 164), (a1 + 172));
}

void sub_2418E42DC(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = sub_241905448(a2[1], 0);
  v8 = v7[1];
  v29 = v7;
  v28 = v7[4] * *v7;
  v9 = (v28 * v8);
  v34 = 0;
  sub_2418E45F4(__p, v9);
  v10 = qos_class_self();
  global_queue = dispatch_get_global_queue(v10, 0);
  v27 = a4 - a3;
  if (a4 - a3 >= 2)
  {
    v13 = global_queue;
    v14 = (v8 + 7) >> 3;
    v15 = a4 - 1;
    do
    {
      v16 = (*(**a2 + 16))(*a2, a3);
      a3 = (a3 + 1);
      v17 = a2[1];
      v18 = *(v17 + 184);
      v19 = *(v17 + 192);
      v20 = (*(**a2 + 16))(*a2, a3);
      v21 = a2[1];
      v22 = *(v21 + 184);
      LODWORD(v21) = *(v21 + 192);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_2418E452C;
      block[3] = &unk_278CF7D18;
      block[4] = a1;
      block[5] = a2;
      block[6] = v18 + (v19 * v16);
      block[7] = v29;
      block[8] = v22 + (v21 * v20);
      v32 = v14;
      v33 = v28;
      block[9] = __p;
      dispatch_apply(8uLL, v13, block);
    }

    while (v15 != a3);
  }

  v34 = 0;
  sub_2418E45C4((a1 + 88), v9, &v34, v12);
  v23 = __p[0];
  if (v9)
  {
    v24 = *(a1 + 88);
    v25 = __p[0];
    do
    {
      v26 = *v25++;
      *v24++ = v26 / v27;
      --v9;
    }

    while (v9);
  }

  else if (!__p[0])
  {
    return;
  }

  __p[1] = v23;
  operator delete(v23);
}

void sub_2418E4504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418E452C(uint64_t result, int a2)
{
  v2 = *(result + 80);
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  v5 = *(*(result + 32) + 4);
  if (v4 < v5)
  {
    v5 = v4;
  }

  if (v3 < v5)
  {
    v6 = *(result + 48);
    v7 = *(result + 56);
    v8 = *(result + 64);
    LODWORD(v9) = *(result + 84);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = *(v7 + 8) * (v3 / *(v7 + 24));
        v12 = v6 + v11;
        v13 = v8 + v11;
        v14 = **(result + 72);
        do
        {
          v15 = *(v12 + v10) - *(v13 + v10);
          if (v15 < 0)
          {
            v15 = *(v13 + v10) - *(v12 + v10);
          }

          *(v14 + 4 * (v10++ + v3 * v9)) += v15;
          v9 = *(result + 84);
        }

        while (v10 < v9);
      }

      ++v3;
    }

    while (v3 != v5);
  }

  return result;
}

void sub_2418E45C4(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_2418E4708(a1, a2 - v4, a3, a4);
  }
}

void *sub_2418E45F4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DB6C0(result, a2);
  }

  return result;
}

void sub_2418E46EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418E4708(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_241911710)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_241911700)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      sub_2418D3940();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2418DB6FC(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_241911710)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_241911700)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

uint64_t sub_2418E7C68(void *a1, uint64_t *a2, void *a3, void *a4, char a5, CMTime *a6, void *a7, void *a8, double a9, double a10)
{
  v17 = a1;
  v74 = a3;
  v79 = a4;
  v78 = a7;
  v76 = v17;
  v77 = a8;
  if (!v17 || !v79 || !v77)
  {
    NSLog(&cfstr_Alpingpongrend.isa);
    v18 = 5;
    goto LABEL_57;
  }

  context = objc_autoreleasePoolPush();
  v73 = [MEMORY[0x277CCAA00] defaultManager];
  v80 = [v79 URLByAppendingPathComponent:@"pingPongTempFwd.mov"];
  v75 = [v79 URLByAppendingPathComponent:@"pingPongTempRev.mov"];
  [v73 removeItemAtURL:v80 error:0];
  [v73 removeItemAtURL:v75 error:0];
  [v73 removeItemAtURL:v77 error:0];
  v18 = sub_2418DD834(v17, a2, 0, v79, a5, &unk_28537CDF0, v80, a9, a10);
  if (v18)
  {
    goto LABEL_56;
  }

  v20 = *a2;
  v19 = a2[1];
  v21 = [[VideoReader alloc] initFromFile:v80];
  if (!v21)
  {
    v22 = [v80 path];
    NSLog(&cfstr_Alpingpongrend_0.isa, v22);

    [v73 removeItemAtURL:v80 error:0];
  }

  [v21 setPixelFormatOptions:3588];
  [v21 setReadAheadEnable:0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v83 = 0;
  v18 = 0;
  v24 = (v19 - v20) >> 3;
  v25 = v24 - 1;
  v93 = **&MEMORY[0x277CC08F0];
  v69 = *MEMORY[0x277CE5DA8];
  v66 = v24 - 1;
  v67 = *MEMORY[0x277CE62F8];
  v71 = v24;
  v26 = v24;
  do
  {
    v27 = objc_autoreleasePoolPush();
    if ((v25 - 1) >= 0x10)
    {
      v28 = 16;
    }

    else
    {
      v28 = v25 - 1;
    }

    v29 = v25 - v28;
    v30 = *(*a2 + 8 * (v25 - v28));
    v92 = *(v30 + 2);
    v91 = *v30;
    *v89 = v91;
    *&v89[16] = v92;
    [v21 setReadStartT:v89];
    value.value = 0;
    if (v25 != 1)
    {
      if (v28 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v28;
      }

      while (1)
      {
        v32 = [v21 getFrameAsSampleBuf:&value];
        if (v32)
        {
          break;
        }

        CFArrayAppendValue(Mutable, value.value);
        CFRelease(value.value);
        if (!--v31)
        {
          goto LABEL_17;
        }
      }

      v34 = [v80 path];
      v35 = sub_241904AC0(v32);
      NSLog(&cfstr_Alpingpongrend_1.isa, v34, v35);

      goto LABEL_20;
    }

LABEL_17:
    if (v18)
    {
      v33 = 1;
      goto LABEL_35;
    }

    [v21 reset];
    if (!v83)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
      ImageBuffer = CMSampleBufferGetImageBuffer(ValueAtIndex);
      v38 = sub_241904B60(ImageBuffer);
      v84 = [VideoWriter alloc];
      Width = CVPixelBufferGetWidth(ImageBuffer);
      Height = CVPixelBufferGetHeight(ImageBuffer);
      timescale = a6->timescale;
      v42 = *(MEMORY[0x277CBF2C0] + 16);
      *v89 = *MEMORY[0x277CBF2C0];
      *&v89[16] = v42;
      v90 = *(MEMORY[0x277CBF2C0] + 32);
      LODWORD(v65) = v38 | 0xE00;
      v83 = [(VideoWriter *)v84 initForURL:v75 fileType:v69 codecType:v67 imgWidth:Width imgHeight:Height fps:timescale timeScale:COERCE_DOUBLE(__PAIR64__(DWORD1(v90) transform:30.0)) pixFormat:v89 metadata:v65, 0];
      if (!v83)
      {
        NSLog(&cfstr_Alpingpongrend_2.isa);
        v83 = 0;
LABEL_20:
        v33 = 1;
        v18 = 9;
        goto LABEL_35;
      }
    }

    if (v25 == 1)
    {
LABEL_29:
      LODWORD(v18) = 0;
    }

    else
    {
      v43 = v28 - 1;
      if (v28 <= 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = v28;
      }

      while (1)
      {
        v45 = CFArrayGetValueAtIndex(Mutable, v43);
        v46 = CMSampleBufferGetImageBuffer(v45);
        *v89 = v93;
        v47 = [v83 addFrameAsPixelBuf:v46 atFrameTime:v89];
        v48 = v47;
        if (v47)
        {
          break;
        }

        lhs = v93;
        rhs = *a6;
        CMTimeAdd(v89, &lhs, &rhs);
        v93 = *v89;
        --v43;
        if (!--v44)
        {
          goto LABEL_29;
        }
      }

      NSLog(&cfstr_Alpingpongrend_3.isa, v47);
      v49 = [v83 lastError];
      LODWORD(v18) = sub_2418DE09C(v49);
    }

    CFArrayRemoveAllValues(Mutable);
    v50 = v78[2]((v71 - v29) / v26);
    if (v50)
    {
      v18 = v18;
    }

    else
    {
      v18 = 1;
    }

    v33 = v50 ^ 1;
    v25 = v29;
LABEL_35:
    objc_autoreleasePoolPop(v27);
    if (v25 == 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v33;
    }
  }

  while (v51 != 1);
  CFRelease(Mutable);
  if (v18)
  {
    [v73 removeItemAtURL:v80 error:0];
    [v73 removeItemAtURL:v75 error:0];
  }

  else
  {
    v52 = [v83 finish];
    v53 = v52;
    if (v52)
    {
      NSLog(&cfstr_Alpingpongrend_4.isa, v52);
      [v73 removeItemAtURL:v80 error:0];
      [v73 removeItemAtURL:v75 error:0];
      v54 = [v83 lastError];
      v18 = sub_2418DE09C(v54);
    }

    else
    {

      v54 = [MEMORY[0x277CE6548] composition];
      v55 = *MEMORY[0x277CE5EA8];
      v85 = [v54 addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:0];
      v56 = [MEMORY[0x277CE6650] assetWithURL:v80];
      v57 = [MEMORY[0x277CE6650] assetWithURL:v75];
      v58 = v56;
      v59 = [v56 tracksWithMediaType:v55];
      v60 = [v57 tracksWithMediaType:v55];
      if (v59 && [v59 count] == 1 && v60 && objc_msgSend(v60, "count") == 1)
      {
        v72 = [v59 objectAtIndexedSubscript:0];
        v68 = [v60 objectAtIndexedSubscript:0];
        lhs = **(*a2 + 8 * v66);
        rhs = lhs;
        value = *a6;
        CMTimeAdd(v89, &rhs, &value);
        lhs = *v89;
        if (v72)
        {
          [v72 timeRange];
        }

        else
        {
          v90 = 0u;
          memset(v89, 0, sizeof(v89));
        }

        rhs = **&MEMORY[0x277CC08F0];
        [v85 insertTimeRange:v89 ofTrack:v72 atTime:&rhs error:0];
        if (v68)
        {
          [v68 timeRange];
        }

        else
        {
          v90 = 0u;
          memset(v89, 0, sizeof(v89));
        }

        rhs = lhs;
        [v85 insertTimeRange:v89 ofTrack:v68 atTime:&rhs error:0];
        v62 = objc_alloc(MEMORY[0x277CE6400]);
        v63 = [v62 initWithAsset:v54 presetName:*MEMORY[0x277CE5C78]];
        [v63 setOutputURL:v77];
        [v63 setOutputFileType:v69];
        [v63 setShouldOptimizeForNetworkUse:1];
        if (v74)
        {
          v64 = [LoopQuicktimeMetadata metadataArrayForDictionary:v74];
          [v63 setMetadata:v64];
        }

        v18 = sub_2418E86FC(v63);
        v78[2](1.0);
        [v73 removeItemAtURL:v80 error:0];
        [v73 removeItemAtURL:v75 error:0];
      }

      else
      {
        NSLog(&cfstr_Alpingpongrend_5.isa);
        [v73 removeItemAtURL:v80 error:0];
        [v73 removeItemAtURL:v75 error:0];
        v18 = 9;
      }

      v83 = 0;
    }
  }

LABEL_56:
  objc_autoreleasePoolPop(context);
LABEL_57:

  return v18;
}

uint64_t sub_2418E86FC(void *a1)
{
  v1 = a1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v2 = dispatch_semaphore_create(0);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_2418E8910;
  v16 = &unk_278CF7D40;
  v3 = v1;
  v17 = v3;
  v19 = &v21;
  v20 = &v25;
  v4 = v2;
  v18 = v4;
  [v3 exportAsynchronouslyWithCompletionHandler:&v13];
  if ((v26[3] & 1) == 0)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v7 = dispatch_time(0, 1000000000);
      if (!dispatch_semaphore_wait(v4, v7) || (v26[3] & 1) != 0)
      {
        break;
      }

      [v3 progress];
      if (v8 == v6 && ++v5 == 10)
      {
        v11 = [v3 status];
        v12 = [v3 error];
        NSLog(&cfstr_ExportTimedOut.isa, v11, v12, v13, v14, v15, v16, v17);

        v9 = 9;
        goto LABEL_9;
      }

      v6 = v8;
    }

    while (*(v26 + 24) != 1);
  }

  v9 = *(v22 + 6);
LABEL_9:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

void sub_2418E88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v15 = v13;

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 80), 8);

  _Unwind_Resume(a1);
}

intptr_t sub_2418E8910(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  if (v2 == 5)
  {
    NSLog(&cfstr_ExportCanceled.isa);
    v4 = 1;
  }

  else
  {
    if (v2 != 4)
    {
      goto LABEL_6;
    }

    v3 = [*(a1 + 32) error];
    NSLog(&cfstr_ExportFailed.isa, v3);

    v4 = 9;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
LABEL_6:
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

void *sub_2418E89CC(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = 0;
  v3 = result + 2;
  result[1] = result + 2;
  result[3] = 0;
  result[4] = 0x100000001;
  *result = 0;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v5 = *v3;
      if (!*v3)
      {
        goto LABEL_10;
      }

      v6 = *(a3 + 4 * i);
      v7 = result + 2;
      do
      {
        if (*(v5 + 32) >= v6)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < v6));
      }

      while (v5);
      if (v7 == v3 || *(v7 + 8) > v6)
      {
LABEL_10:
        operator new();
      }
    }
  }

  return result;
}

BOOL sub_2418E8B00(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v2 = a1 + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

uint64_t sub_2418E8B4C(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a1 + 16;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 == a1 + 16 || *(v3 + 32) > a2)
  {
    return 0;
  }

  v6 = &v5;
  return sub_2418DB7E0(a1 + 8, &v5)[5];
}

uint64_t sub_2418E8BD8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = sub_2418E8B4C(a1, a2);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = *(v6 + 8);
  if (v8)
  {
    MEMORY[0x245CF24E0](v8, 0x1000C40504FFAC1);
  }

  result = 0;
  *(v7 + 8) = a3;
  *v7 = a4;
  return result;
}

uint64_t sub_2418E8C40(void *a1)
{
  v2 = sub_2418E8B4C(a1, 3);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = *(v2 + 8);
  if (v4)
  {
    MEMORY[0x245CF24E0](v4, 0x1000C40504FFAC1);
  }

  v5 = sub_2418E8CB8(a1);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *(v3 + 8) = v6;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *v3 = result;
  return result;
}