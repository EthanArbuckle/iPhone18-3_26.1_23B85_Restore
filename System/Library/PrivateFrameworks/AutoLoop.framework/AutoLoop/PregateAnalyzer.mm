@interface PregateAnalyzer
+ (id)pregateFailureReasonsToString:(int)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForFrameFromArray:(SEL)a3 frameIndex:(id)a4;
- (BOOL)exposuresViolateThresholdFraction:(float)a3 exposure1:(float)a4 exposure2:(float)a5;
- (BOOL)findFrameIndicesInFrameArray:(id)a3 forTimeRange:(id *)a4 startIndex:(int *)a5 endIndex:(int *)a6;
- (BOOL)findNextNonInterpFrameFromIndex:(int64_t)a3 backwards:(BOOL)a4 inFrameInfoArray:(id)a5 toValue:(int64_t *)a6;
- (BOOL)findSurroundingNonInterpForIndex:(int64_t)a3 inFrameInfoArray:(id)a4 prevIndex:(int64_t *)a5 nextIndex:(int64_t *)a6;
- (BOOL)frameIndexIsFocusing:(int64_t)a3 inFrameData:(id)a4 failureReason:(int *)a5;
- (BOOL)getParamForKey:(id)a3 toCMTime:(id *)a4;
- (BOOL)getParamForKey:(id)a3 toFloat:(float *)a4;
- (BOOL)getParamForKey:(id)a3 toInt:(int64_t *)a4;
- (BOOL)subsegmentMeetsTrimCriteriaForFrames:(id)a3 firstFrame:(int64_t)a4 lastFrame:(int64_t)a5 firstFrameTimeOut:(id *)a6 lastFrameTimeOut:(id *)a7 preciseTrimTimeOut:(id *)a8;
- (CGSize)inputVideoSize;
- (MetadataFloatVector)cumulativePanForStartIndex:(int64_t)a3 lastIndex:(int64_t)a4;
- (PregateAnalyzer)init;
- (id)paramValueForKey:(id)a3;
- (int)fetchVideoDimensionsFromMetadata;
- (int)findGatingPassViaTrimming:(id)a3;
- (int)getFocusDataFromFrameData:(id)a3 toFocusingFlags:(id)a4;
- (int)getFrameMetadataArray:(id *)a3;
- (int)getPerFrameGatingData:(id)a3 firstIndex:(int64_t)a4 lastIndex:(int64_t)a5;
- (int)getZoomFlagsFromFrameData:(id)a3 toArray:(id)a4;
- (int)isCumulativePanAcceptableForFrames:(id)a3 firstIndex:(int64_t)a4 lastIndex:(int64_t)a5;
- (int)processGainAndExposureData:(id)a3 intoFlagsArray:(id)a4 firstIndex:(int64_t)a5 lastIndex:(int64_t)a6;
- (int)processMotionVectorsFromFrameData:(id)a3 toVectorArray:(MetadataFloatVector *)a4;
- (int)processPregateSuccess:(int *)a3;
- (int)processPresentationTimesFromData:(id)a3 toBadFrameFlags:(id)a4 withMaxDuration:(id *)a5 maxInterpGapTime:(id *)a6 maxInterpFrameCount:(int64_t)a7 firstIndex:(int64_t)a8 lastIndex:(int64_t)a9;
- (int64_t)findLongestPassingSegmentInFrameFlags:(id)a3 startIndex:(int64_t)a4 endIndex:(int64_t)a5 startOfRun:(int64_t *)a6 gatingFailures:(int *)a7;
@end

@implementation PregateAnalyzer

- (PregateAnalyzer)init
{
  v42[12] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = PregateAnalyzer;
  v2 = [(PregateAnalyzer *)&v40 init];
  v3 = MEMORY[0x277CC0888];
  v4 = *MEMORY[0x277CC0888];
  *(v2 + 6) = *MEMORY[0x277CC0888];
  v5 = *(v3 + 16);
  *(v2 + 14) = v5;
  *(v2 + 120) = v4;
  *(v2 + 17) = v5;
  v6 = MEMORY[0x277CC08C8];
  v7 = *(MEMORY[0x277CC08C8] + 16);
  *(v2 + 9) = *MEMORY[0x277CC08C8];
  *(v2 + 10) = v7;
  v8 = *(v6 + 32);
  v9 = MEMORY[0x277CC08A0];
  *(v2 + 26) = *(MEMORY[0x277CC08A0] + 16);
  v10 = *v9;
  *(v2 + 11) = v8;
  *(v2 + 12) = v10;
  v11 = MEMORY[0x277CC08B0];
  *(v2 + 29) = *(MEMORY[0x277CC08B0] + 16);
  *(v2 + 216) = *v11;
  v12 = MEMORY[0x277CC0898];
  v13 = *(MEMORY[0x277CC0898] + 16);
  *(v2 + 32) = v13;
  v14 = *v12;
  *(v2 + 15) = *v12;
  *(v2 + 35) = v13;
  *(v2 + 264) = v14;
  v41[0] = @"maxPanX";
  LODWORD(v14) = 1051931443;
  v38 = [MEMORY[0x277CCABB0] numberWithFloat:*&v14];
  v42[0] = v38;
  v41[1] = @"maxPanY";
  LODWORD(v15) = 1051931443;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v42[1] = v37;
  v41[2] = @"maxFaceSize";
  LODWORD(v16) = 1020054733;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v42[2] = v36;
  v41[3] = @"maxBlurMagnitude";
  LODWORD(v17) = 7.0;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v42[3] = v18;
  v41[4] = @"maxPerFrameMotion";
  LODWORD(v19) = 1028443341;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v42[4] = v20;
  v41[5] = @"maxFrameDuration";
  CMTimeMake(&time, 45, 600);
  v21 = *MEMORY[0x277CBECE8];
  v22 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
  v42[5] = v22;
  v41[6] = @"maxFrameExposureTime";
  LODWORD(v23) = 1032358025;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v42[6] = v24;
  v41[7] = @"maxFrameGain";
  LODWORD(v25) = 1108082688;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v42[7] = v26;
  v41[8] = @"maxExposureChangeFrac";
  LODWORD(v27) = 1051931443;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v42[8] = v28;
  v41[9] = @"maxZoomFactor";
  LODWORD(v29) = 1232348158;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v42[9] = v30;
  v41[10] = @"maxInterpCount";
  v31 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v42[10] = v31;
  v41[11] = @"maxInterpTime";
  CMTimeMake(&time, 80, 600);
  v32 = CMTimeCopyAsDictionary(&time, v21);
  v42[11] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:12];
  v34 = *(v2 + 6);
  *(v2 + 6) = v33;

  return v2;
}

- (int)fetchVideoDimensionsFromMetadata
{
  if (!self->_haveInputVideoSize)
  {
    v4 = [(PregateFeatureBuilder *)self->featureBuilder irisVideoExtractor];
    v5 = [v4 videoTrackMetadataDict];
    v6 = [v5 objectForKeyedSubscript:@"vidTrackCleanH"];
    v7 = [v5 objectForKeyedSubscript:@"vidTrackCleanW"];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = [v5 objectForKeyedSubscript:@"vidTrackNaturalH"];
      v11 = [v5 objectForKeyedSubscript:@"vidTrackNaturalW"];
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {

        v2 = -1;
LABEL_15:

        return v2;
      }

      [v10 floatValue];
      self->_inputVideoSize.height = v16;
      [v12 floatValue];
      self->_inputVideoSize.width = v17;
    }

    else
    {
      [v6 floatValue];
      self->_inputVideoSize.height = v14;
      [v8 floatValue];
      self->_inputVideoSize.width = v15;
    }

    v2 = 0;
    self->_haveInputVideoSize = 1;
    goto LABEL_15;
  }

  return 0;
}

- (int)getFrameMetadataArray:(id *)a3
{
  featureBuilder = self->featureBuilder;
  if (!featureBuilder)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v5 = [(PregateFeatureBuilder *)featureBuilder irisVideoExtractor];
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (([v5 processedFile] & 1) != 0 || (v7 = objc_msgSend(v6, "processFile")) == 0)
  {
    v9 = [v6 framesMetadataArray];
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = v7;
  v9 = 0;
LABEL_10:

LABEL_11:
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = -1;
  }

  v11 = v9;
  *a3 = v9;

  return v10;
}

- (id)paramValueForKey:(id)a3
{
  v4 = a3;
  pregateParameters = self->pregateParameters;
  if (!pregateParameters || ([(NSDictionary *)pregateParameters valueForKey:v4], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(NSDictionary *)self->_defaultParameters valueForKey:v4];
  }

  return v6;
}

- (BOOL)getParamForKey:(id)a3 toFloat:(float *)a4
{
  v5 = [(PregateAnalyzer *)self paramValueForKey:a3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    *a4 = v7;
  }

  return v6 != 0;
}

- (BOOL)getParamForKey:(id)a3 toInt:(int64_t *)a4
{
  v5 = [(PregateAnalyzer *)self paramValueForKey:a3];
  v6 = v5;
  if (v5)
  {
    *a4 = [v5 integerValue];
  }

  return v6 != 0;
}

- (BOOL)getParamForKey:(id)a3 toCMTime:(id *)a4
{
  v5 = [(PregateAnalyzer *)self paramValueForKey:a3];
  v6 = v5;
  if (v5)
  {
    CMTimeMakeFromDictionary(&v8, v5);
    *a4 = v8;
  }

  return v6 != 0;
}

+ (id)pregateFailureReasonsToString:(int)a3
{
  v12[15] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_285384D28;
  v11[1] = &unk_285384D40;
  v12[0] = @"[pregate_vid motion blur]";
  v12[1] = @"[pregate_vid panning]";
  v11[2] = &unk_285384D58;
  v11[3] = &unk_285384D70;
  v12[2] = @"[pregate_vid face]";
  v12[3] = @"[pregate_vid camera motion]";
  v11[4] = &unk_285384D88;
  v11[5] = &unk_285384DA0;
  v12[4] = @"[pregate_vid focus]";
  v12[5] = @"[pregate_vid frame duration too long]";
  v11[6] = &unk_285384DB8;
  v11[7] = &unk_285384DD0;
  v12[6] = @"[pregate_vid frame exposure too long]";
  v12[7] = @"[pregate_vid exposure gain change too large]";
  v11[8] = &unk_285384DE8;
  v11[9] = &unk_285384E00;
  v12[8] = @"[pregate_vid zoom]";
  v12[9] = @"[pregate_vid trimming error]";
  v11[10] = &unk_285384E18;
  v11[11] = &unk_285384E30;
  v12[10] = @"[pregate_vid parameter error]";
  v12[11] = @"[pregate_vid missing metadata]";
  v11[12] = &unk_285384E48;
  v11[13] = &unk_285384E60;
  v12[12] = @"[pregate_vid outside-trim internal error]";
  v12[13] = @"[pregate_vid internal error]";
  v11[14] = &unk_285384E78;
  v12[14] = @"[pregate_vid interpolated frames]";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:15];
  v5 = 0;
  if (a3)
  {
    v6 = 1;
    do
    {
      if ((a3 & v6) != 0)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
        v8 = [v4 objectForKeyedSubscript:v7];

        if (v8)
        {
          if (v5)
          {
            v9 = [v5 stringByAppendingString:{@", "}];

            v5 = [v9 stringByAppendingString:v8];
          }

          else
          {
            v5 = v8;
          }
        }
      }

      a3 &= ~v6;
      v6 = (2 * v6);
    }

    while (a3);
  }

  return v5;
}

- (MetadataFloatVector)cumulativePanForStartIndex:(int64_t)a3 lastIndex:(int64_t)a4
{
  v7 = [(NSData *)self->_perFrameTranslationVecs length];
  v8 = [(NSData *)self->_perFrameTranslationVecs bytes];
  v9 = 0;
  if (v7 >= 8 && a3 <= a4)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (v11)
      {
        v14 = *&v8[8 * a3 + 8 * v11];
        v13 = vbsl_s8(vcgt_f32(v14, v13), v13, v14);
        v12 = vbsl_s8(vcgt_f32(v12, v14), v12, v14);
      }

      else
      {
        v12 = *&v8[8 * a3];
        v13 = v12;
      }

      ++v11;
    }

    while (a4 - a3 + 1 != v11);
    v9 = vsub_f32(v12, v13);
  }

  v15 = v9.f32[1];
  result.var0 = v9.f32[0];
  result.var1 = v15;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForFrameFromArray:(SEL)a3 frameIndex:(id)a4
{
  *retstr = **&MEMORY[0x277CC0898];
  v6 = [a4 objectAtIndexedSubscript:a5];
  dictionaryRepresentation = [v6 objectForKeyedSubscript:@"PresentationTime"];

  v7 = dictionaryRepresentation;
  if (dictionaryRepresentation)
  {
    CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);
    v7 = dictionaryRepresentation;
  }

  return result;
}

- (BOOL)findNextNonInterpFrameFromIndex:(int64_t)a3 backwards:(BOOL)a4 inFrameInfoArray:(id)a5 toValue:(int64_t *)a6
{
  v7 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 + a3;
  if (v10 + a3 >= 0)
  {
    while (v11 < [v9 count])
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = [v12 objectForKeyedSubscript:@"InterpolatedFrame"];
      v14 = v13;
      if (!v13 || ([v13 BOOLValue] & 1) == 0)
      {
        *a6 = v11;

        v15 = 1;
        goto LABEL_11;
      }

      v11 += v10;
      if (v11 < 0)
      {
        break;
      }
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)findSurroundingNonInterpForIndex:(int64_t)a3 inFrameInfoArray:(id)a4 prevIndex:(int64_t *)a5 nextIndex:(int64_t *)a6
{
  v10 = a4;
  LOBYTE(a5) = [(PregateAnalyzer *)self findNextNonInterpFrameFromIndex:a3 backwards:1 inFrameInfoArray:v10 toValue:a5];
  LOBYTE(a6) = [(PregateAnalyzer *)self findNextNonInterpFrameFromIndex:a3 backwards:0 inFrameInfoArray:v10 toValue:a6];

  return a5 & a6;
}

- (BOOL)frameIndexIsFocusing:(int64_t)a3 inFrameData:(id)a4 failureReason:(int *)a5
{
  v7 = a4;
  *a5 = 0;
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 objectForKeyedSubscript:@"InterpolatedFrame"];

  if (v9 && [v9 BOOLValue])
  {
    v10 = 0;
    *a5 = 0x2000;
  }

  else
  {
    v11 = [v7 objectAtIndexedSubscript:a3];
    v12 = [v11 objectForKeyedSubscript:@"privAFSt"];

    v13 = [v7 objectAtIndexedSubscript:a3];
    v14 = [v13 objectForKeyedSubscript:@"privFM"];

    if (v12 && v14)
    {
      v15 = [v12 intValue];
      v16 = [v14 intValue] - 1;
      v10 = v15 == 2 && v16 < 2;
    }

    else
    {
      v10 = 0;
      *a5 = 2048;
    }
  }

  return v10;
}

- (int)getFocusDataFromFrameData:(id)a3 toFocusingFlags:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  if (![v6 count])
  {
LABEL_11:
    v13 = v21;
    goto LABEL_14;
  }

  v8 = 0;
  while (1)
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
    v10 = [v9 objectForKeyedSubscript:@"InterpolatedFrame"];
    v11 = v10;
    if (!v10 || ![v10 BOOLValue])
    {
      v16 = [(PregateAnalyzer *)self frameIndexIsFocusing:v8 inFrameData:v6 failureReason:&v21];
      v13 = v21;
      if (v21)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v19 = 0;
    v20 = 0;
    if (![(PregateAnalyzer *)self findSurroundingNonInterpForIndex:v8 inFrameInfoArray:v6 prevIndex:&v20 nextIndex:&v19])
    {
      break;
    }

    v12 = [(PregateAnalyzer *)self frameIndexIsFocusing:v20 inFrameData:v6 failureReason:&v21];
    v13 = v21;
    if (v21)
    {
      goto LABEL_13;
    }

    v14 = v12;
    v15 = [(PregateAnalyzer *)self frameIndexIsFocusing:v19 inFrameData:v6 failureReason:&v21];
    v13 = v21;
    if (v21)
    {
      goto LABEL_13;
    }

    v16 = v15 || v14;
LABEL_10:
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v7 addObject:v17];

    if ([v6 count] <= ++v8)
    {
      goto LABEL_11;
    }
  }

  v13 = 0x2000;
  v21 = 0x2000;
LABEL_13:

LABEL_14:
  return v13;
}

- (int)getZoomFlagsFromFrameData:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = 0;
  if ([(PregateAnalyzer *)self getParamForKey:@"maxZoomFactor" toFloat:&v25])
  {
    if ([v6 count])
    {
      v8 = 0;
      v9 = 0x277CCA000uLL;
      do
      {
        v10 = [v6 objectAtIndexedSubscript:v8];
        v11 = [v10 objectForKeyedSubscript:@"InterpolatedFrame"];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v23 = 0;
          v24 = 0;
          if (![(PregateAnalyzer *)self findSurroundingNonInterpForIndex:v8 inFrameInfoArray:v6 prevIndex:&v24 nextIndex:&v23])
          {

            v21 = 0x2000;
            goto LABEL_11;
          }

          v13 = [v6 objectAtIndexedSubscript:v24];
          v14 = [v13 objectForKeyedSubscript:@"privTZF"];

          [v14 floatValue];
          v15 = [v6 objectAtIndexedSubscript:v23];
          [v15 objectForKeyedSubscript:@"privTZF"];
          v17 = v16 = v9;

          [v17 floatValue];
          v9 = v16;
        }

        else
        {
          v18 = [v6 objectAtIndexedSubscript:v8];
          v19 = [v18 objectForKeyedSubscript:@"privTZF"];

          [v19 floatValue];
        }

        v20 = [*(v9 + 2992) numberWithUnsignedInteger:0];
        [v7 addObject:v20];

        ++v8;
      }

      while ([v6 count] > v8);
    }

    v21 = 0;
  }

  else
  {
    v21 = 1024;
  }

LABEL_11:

  return v21;
}

- (int)processMotionVectorsFromFrameData:(id)a3 toVectorArray:(MetadataFloatVector *)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"InterpolatedFrame"];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 BOOLValue];
      }

      else
      {
        v11 = 0;
      }

      v12 = [v8 objectForKeyedSubscript:@"privECMVct"];
      v13 = v12;
      v16 = 0;
      if (v12)
      {
        [v12 getBytes:&v16 length:8];
        v7 = v16;
      }

      else if ((v11 & 1) == 0)
      {

        v14 = 2048;
        goto LABEL_11;
      }

      a4[v6] = v7;

      ++v6;
    }

    while ([v5 count] > v6);
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (int)processPresentationTimesFromData:(id)a3 toBadFrameFlags:(id)a4 withMaxDuration:(id *)a5 maxInterpGapTime:(id *)a6 maxInterpFrameCount:(int64_t)a7 firstIndex:(int64_t)a8 lastIndex:(int64_t)a9
{
  v13 = a3;
  v14 = a4;
  if (a8 > a9)
  {
LABEL_22:
    v35 = 0;
    goto LABEL_25;
  }

  v40 = 0;
  v15 = 0x277CCA000uLL;
  v37 = self;
  while (1)
  {
    v41 = [v13 objectAtIndexedSubscript:{a8, v37}];
    v16 = [v41 objectForKeyedSubscript:@"InterpolatedFrame"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v47 = 0;
      v48 = 0;
      if (![(PregateAnalyzer *)self findSurroundingNonInterpForIndex:a8 inFrameInfoArray:v13 prevIndex:&v48 nextIndex:&v47]|| (memset(&v46, 0, sizeof(v46)), [(PregateAnalyzer *)self timeForFrameFromArray:v13 frameIndex:v48], memset(&v45, 0, sizeof(v45)), [(PregateAnalyzer *)self timeForFrameFromArray:v13 frameIndex:v47], memset(&v44, 0, sizeof(v44)), lhs = v45, rhs = v46, CMTimeSubtract(&v44, &lhs, &rhs), lhs = v44, rhs = *a6, CMTimeCompare(&lhs, &rhs) >= 1))
      {
        v18 = [v14 objectAtIndexedSubscript:a8];
        v19 = [v18 unsignedIntegerValue];

        v20 = [*(v15 + 2992) numberWithUnsignedInteger:v19 | 0x4000];
        [v14 setObject:v20 atIndexedSubscript:a8];
      }

      v21 = v40 + 1;
    }

    else
    {
      v22 = v40;
      if (v40 <= a7)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        if (v40 >= 1)
        {
          v23 = a8 - 1;
          v24 = v15;
          do
          {
            v25 = [v14 objectAtIndexedSubscript:v23];
            v26 = [v25 unsignedIntegerValue];

            v27 = [*(v24 + 2992) numberWithUnsignedInteger:v26 | 0x4000];
            [v14 setObject:v27 atIndexedSubscript:v23];

            --v23;
            --v22;
          }

          while (v22);
          v21 = 0;
          v15 = v24;
        }
      }
    }

    v40 = v21;
    if (a8 < ([v13 count] - 1))
    {
      break;
    }

    ++a8;
LABEL_21:

    if (a8 == a9 + 1)
    {
      goto LABEL_22;
    }
  }

  v28 = [v41 objectForKeyedSubscript:@"PresentationTime"];
  if (!v28)
  {
    goto LABEL_24;
  }

  v29 = v28;
  memset(&v46, 0, sizeof(v46));
  CMTimeMakeFromDictionary(&v46, v28);
  v30 = [v13 objectAtIndexedSubscript:a8 + 1];
  v31 = [v30 objectForKeyedSubscript:@"PresentationTime"];

  if (v31)
  {
    memset(&v45, 0, sizeof(v45));
    CMTimeMakeFromDictionary(&v45, v31);
    memset(&v44, 0, sizeof(v44));
    lhs = v45;
    rhs = v46;
    CMTimeSubtract(&v44, &lhs, &rhs);
    lhs = v44;
    rhs = *a5;
    if (CMTimeCompare(&lhs, &rhs) >= 1)
    {
      v32 = [v14 objectAtIndexedSubscript:a8];
      v33 = [v32 unsignedIntegerValue];

      self = v37;
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33 | 0x20];
      [v14 setObject:v34 atIndexedSubscript:a8];
    }

    ++a8;
    v15 = 0x277CCA000;
    goto LABEL_21;
  }

LABEL_24:
  v35 = 2048;
LABEL_25:

  return v35;
}

- (BOOL)exposuresViolateThresholdFraction:(float)a3 exposure1:(float)a4 exposure2:(float)a5
{
  if (a4 >= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a4;
  }

  return vabds_f32(a4, a5) > (v5 * a3);
}

- (int)processGainAndExposureData:(id)a3 intoFlagsArray:(id)a4 firstIndex:(int64_t)a5 lastIndex:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v112 = 0;
  v111 = 0.0;
  v11 = [(PregateAnalyzer *)self getParamForKey:@"maxExposureChangeFrac" toFloat:&v112 + 4];
  v12 = [(PregateAnalyzer *)self getParamForKey:@"maxFrameGain" toFloat:&v111];
  v108 = self;
  v13 = 1024;
  if ([(PregateAnalyzer *)self getParamForKey:@"maxFrameExposureTime" toFloat:&v112])
  {
    if (v12)
    {
      v104 = a5;
      if (v11)
      {
        v14 = a5;
        if (a5 > a6)
        {
          v13 = 0;
          goto LABEL_74;
        }

        v15 = 0;
        v13 = 0;
        v105 = v10;
        v106 = v9;
        do
        {
          v16 = [v9 objectAtIndexedSubscript:v14];
          v17 = [v16 objectForKeyedSubscript:@"InterpolatedFrame"];
          v18 = [v17 BOOLValue];

          if (v18)
          {
            v109 = 0;
            v110 = 0;
            if ([(PregateAnalyzer *)v108 findSurroundingNonInterpForIndex:v14 inFrameInfoArray:v9 prevIndex:&v110 nextIndex:&v109])
            {
              v19 = [v9 objectAtIndexedSubscript:v110];
              v20 = [v9 objectAtIndexedSubscript:v109];
              v21 = [v19 objectForKeyedSubscript:@"privImgG"];

              v22 = [v20 objectForKeyedSubscript:@"privImgG"];

              v23 = [v19 objectForKeyedSubscript:@"privET"];

              v24 = [v20 objectForKeyedSubscript:@"privET"];

              if (v21)
              {
                v25 = v22 == 0;
              }

              else
              {
                v25 = 1;
              }

              v9 = v106;
              if (v25 || v23 == 0 || v24 == 0)
              {
                v28 = 2048;
              }

              else
              {
                v28 = 0;
              }

              v29 = [v19 objectForKeyedSubscript:@"privImgG"];
              [v29 floatValue];
              v31 = v30;

              v32 = [v20 objectForKeyedSubscript:@"privImgG"];
              [v32 floatValue];
              v34 = v33;

              v35 = [v19 objectForKeyedSubscript:@"privET"];
              [v35 floatValue];
              v37 = v36;

              v10 = v105;
              v38 = [v20 objectForKeyedSubscript:@"privET"];
              [v38 floatValue];
              v40 = v39;

              *&v41 = v31 * v37;
              *&v42 = v34 * v40;
              LODWORD(v43) = HIDWORD(v112);
              v44 = [(PregateAnalyzer *)v108 exposuresViolateThresholdFraction:v43 exposure1:v41 exposure2:v42];
              v45 = v28 | 0x80;
              if (!v44)
              {
                v45 = v28;
              }

              v46 = v34 <= v111 && v31 <= v111;
              v47 = fmaxf(v37, v40);
              if (v46 && v47 <= *&v112)
              {
                v49 = v45;
              }

              else
              {
                v49 = v45 | 0x40;
              }

              goto LABEL_73;
            }
          }

          else
          {
            v109 = 0;
            v110 = 0;
            if (v15)
            {
              if ([(PregateAnalyzer *)v108 findNextNonInterpFrameFromIndex:v14 backwards:1 inFrameInfoArray:v9 toValue:&v110])
              {
                v49 = 0;
              }

              else
              {
                v49 = 0x2000;
              }
            }

            else
            {
              v49 = 0;
              v110 = v104;
            }

            if (a6 == v14)
            {
              v109 = a6;
LABEL_41:
              if (!v49)
              {
                v50 = [v9 objectAtIndexedSubscript:v110];
                v51 = [v9 objectAtIndexedSubscript:v14];
                v52 = [v9 objectAtIndexedSubscript:v109];
                v102 = [v50 objectForKeyedSubscript:@"privImgG"];

                v101 = [v51 objectForKeyedSubscript:@"privImgG"];

                v53 = [v52 objectForKeyedSubscript:@"privImgG"];

                v54 = [v50 objectForKeyedSubscript:@"privET"];

                v55 = [v51 objectForKeyedSubscript:@"privET"];

                v56 = [v52 objectForKeyedSubscript:@"privET"];

                if (v102)
                {
                  v57 = v101 == 0;
                }

                else
                {
                  v57 = 1;
                }

                if (v57 || v53 == 0 || v54 == 0 || v55 == 0 || v56 == 0)
                {
                  v62 = 2048;
                }

                else
                {
                  v62 = 0;
                }

                v63 = [v50 objectForKeyedSubscript:{@"privImgG", v101}];
                [v63 floatValue];
                v65 = v64;
                v103 = v50;
                v66 = [v50 objectForKeyedSubscript:@"privET"];
                [v66 floatValue];
                v68 = v65 * v67;

                v69 = [v51 objectForKeyedSubscript:@"privImgG"];
                [v69 floatValue];
                v71 = v70;
                v72 = [v51 objectForKeyedSubscript:@"privET"];
                [v72 floatValue];
                v74 = v71 * v73;

                v75 = [v52 objectForKeyedSubscript:@"privImgG"];
                [v75 floatValue];
                v77 = v76;
                v78 = [v52 objectForKeyedSubscript:@"privET"];
                [v78 floatValue];
                v80 = v79;

                LODWORD(v81) = HIDWORD(v112);
                *&v82 = v68;
                *&v83 = v74;
                if ([(PregateAnalyzer *)v108 exposuresViolateThresholdFraction:v81 exposure1:v82 exposure2:v83])
                {
                  v87 = v62 | 0x80;
                }

                else
                {
                  *&v86 = v77 * v80;
                  LODWORD(v84) = HIDWORD(v112);
                  *&v85 = v74;
                  if ([(PregateAnalyzer *)v108 exposuresViolateThresholdFraction:v84 exposure1:v85 exposure2:v86])
                  {
                    v87 = v62 | 0x80;
                  }

                  else
                  {
                    v87 = v62;
                  }
                }

                v88 = [v51 objectForKeyedSubscript:@"privImgG"];
                [v88 floatValue];
                v90 = v89;
                v91 = v111;

                v92 = [v51 objectForKeyedSubscript:@"privET"];
                [v92 floatValue];
                v94 = v93;
                v95 = *&v112;

                if (v90 <= v91 && v94 <= v95)
                {
                  v49 = v87;
                }

                else
                {
                  v49 = v87 | 0x40;
                }

                v10 = v105;
                v9 = v106;
              }

              goto LABEL_73;
            }

            if ([(PregateAnalyzer *)v108 findNextNonInterpFrameFromIndex:v14 backwards:0 inFrameInfoArray:v9 toValue:&v109])
            {
              goto LABEL_41;
            }
          }

          v49 = 0x2000;
LABEL_73:
          v97 = [v10 objectAtIndexedSubscript:v14];
          v98 = [v97 unsignedIntegerValue];

          v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v98 | v49];
          [v10 setObject:v99 atIndexedSubscript:v14];

          v13 |= v49;
          ++v14;
          --v15;
        }

        while (a6 + 1 != v14);
      }
    }
  }

LABEL_74:

  return v13;
}

- (int)getPerFrameGatingData:(id)a3 firstIndex:(int64_t)a4 lastIndex:(int64_t)a5
{
  v102 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (a5 < a4 || [v8 count] <= a5)
  {
    v17 = 0x2000;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    if ([v9 count])
    {
      v11 = 0;
      do
      {
        if (v11 > a5 || v11 < a4)
        {
          v13 = 4096;
        }

        else
        {
          v13 = 0;
        }

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        [v10 addObject:v14];

        ++v11;
      }

      while ([v9 count] > v11);
    }

    v15 = [MEMORY[0x277CBEB28] dataWithLength:{8 * objc_msgSend(v9, "count")}];
    v16 = [v15 mutableBytes];
    v17 = [(PregateAnalyzer *)self processMotionVectorsFromFrameData:v9 toVectorArray:v16];
    if (!v17)
    {
      v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v17 = [(PregateAnalyzer *)self getFocusDataFromFrameData:v9 toFocusingFlags:v18];
      if (!v17)
      {
        v74 = v16;
        v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
        v17 = [(PregateAnalyzer *)self getZoomFlagsFromFrameData:v9 toArray:v19];
        if (!v17)
        {
          v82 = v19;
          obj = v15;
          v78 = a4;
          v79 = a5;
          v77 = v10;
          v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
          if ([v9 count])
          {
            v21 = 0;
            do
            {
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
              [v20 addObject:v22];

              ++v21;
            }

            while ([v9 count] > v21);
          }

          v75 = v9;
          v100 = 0;
          v99 = 0.0;
          v97 = *MEMORY[0x277CC0888];
          v98 = *(MEMORY[0x277CC0888] + 16);
          v95 = 0;
          v96 = 0;
          v94 = 0uLL;
          v23 = [(PregateAnalyzer *)self getParamForKey:@"maxFaceSize" toFloat:&v100 + 4];
          v24 = [(PregateAnalyzer *)self getParamForKey:@"maxBlurMagnitude" toFloat:&v100];
          v25 = [(PregateAnalyzer *)self getParamForKey:@"maxPerFrameMotion" toFloat:&v99];
          v26 = [(PregateAnalyzer *)self getParamForKey:@"maxInterpCount" toInt:&v96];
          v27 = [(PregateAnalyzer *)self getParamForKey:@"maxFrameDuration" toCMTime:&v97];
          LOWORD(v28) = 1024;
          v73 = 0;
          if ([(PregateAnalyzer *)self getParamForKey:@"maxInterpTime" toCMTime:&v94]&& v27 && v26 && v25)
          {
            v29 = v78;
            if (v24)
            {
              v9 = v75;
              v30 = v79;
              if (v23)
              {
                v81 = v18;
                v92 = v97;
                v93 = v98;
                v90 = v94;
                v91 = v95;
                v31 = [(PregateAnalyzer *)self processPresentationTimesFromData:v75 toBadFrameFlags:v20 withMaxDuration:&v92 maxInterpGapTime:&v90 maxInterpFrameCount:v96 firstIndex:v78 lastIndex:v79];
                width = self->_inputVideoSize.width;
                if (width <= self->_inputVideoSize.height)
                {
                  width = self->_inputVideoSize.height;
                }

                v33 = width;
                v34 = (v99 * v33) * (v99 * v33);
                v73 = v31;
                v28 = v31;
                v76 = v20;
                do
                {
                  v85 = v28;
                  v35 = [v9 objectAtIndexedSubscript:v29];
                  v36 = v35;
                  v84 = v29;
                  if (v29 <= v78)
                  {
                    v38 = 0;
                  }

                  else
                  {
                    v37 = (v74 + 8 * v29);
                    v38 = 8 * ((((v37[1] - *(v37 - 1)) * (v37[1] - *(v37 - 1))) + ((*v37 - *(v37 - 2)) * (*v37 - *(v37 - 2)))) > v34);
                  }

                  v40 = v81;
                  v39 = v82;
                  v41 = [v35 objectForKeyedSubscript:@"privEMBVct"];
                  v42 = v41;
                  if (v41)
                  {
                    *&v92 = 0;
                    [v41 getBytes:&v92 length:8];
                    v43 = ((*(&v92 + 1) * *(&v92 + 1)) + (*&v92 * *&v92)) > (*&v100 * *&v100);
                  }

                  else
                  {
                    v43 = 2048;
                  }

                  v44 = v43 | v38;

                  v45 = [v36 objectForKeyedSubscript:@"privDFArray"];
                  v83 = v36;
                  if ([v45 count])
                  {
                    v88 = 0u;
                    v89 = 0u;
                    v86 = 0u;
                    v87 = 0u;
                    v80 = v45;
                    v46 = v45;
                    v47 = [v46 countByEnumeratingWithState:&v86 objects:v101 count:16];
                    if (v47)
                    {
                      v48 = v47;
                      v49 = *v87;
                      do
                      {
                        for (i = 0; i != v48; ++i)
                        {
                          if (*v87 != v49)
                          {
                            objc_enumerationMutation(v46);
                          }

                          v51 = [*(*(&v86 + 1) + 8 * i) objectForKeyedSubscript:@"Rect"];
                          v52 = [v51 objectForKeyedSubscript:@"Width"];
                          [v52 floatValue];
                          v54 = v53;

                          v55 = [v51 objectForKeyedSubscript:@"Height"];
                          [v55 floatValue];
                          v57 = v56;

                          if ((v54 * v57) > *(&v100 + 1))
                          {
                            v44 |= 4u;
                          }
                        }

                        v48 = [v46 countByEnumeratingWithState:&v86 objects:v101 count:16];
                      }

                      while (v48);
                    }

                    v9 = v75;
                    v40 = v81;
                    v39 = v82;
                    v45 = v80;
                  }

                  v58 = [v39 objectAtIndexedSubscript:v84];
                  v59 = [v58 unsignedIntValue];

                  v60 = v59 | v44;
                  v61 = [v40 objectAtIndexedSubscript:v84];
                  v62 = [v61 BOOLValue];

                  if (v62)
                  {
                    v60 |= 0x10u;
                  }

                  v63 = [v76 objectAtIndexedSubscript:v84];
                  v64 = [v63 unsignedIntValue];

                  v65 = v64 | v60;
                  v66 = [v77 objectAtIndexedSubscript:v84];
                  v67 = [v66 unsignedIntValue];

                  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v67 | v65];
                  [v77 replaceObjectAtIndex:v84 withObject:v68];

                  v28 = v65 | v85;
                  v29 = v84 + 1;
                }

                while (v84 != v79);
                v29 = v78;
                v30 = v79;
                v18 = v81;
                v20 = v76;
              }
            }

            else
            {
              v9 = v75;
              v30 = v79;
            }
          }

          else
          {
            v9 = v75;
            v29 = v78;
            v30 = v79;
          }

          v69 = [(PregateAnalyzer *)self processGainAndExposureData:v9 intoFlagsArray:v77 firstIndex:v29 lastIndex:v30]| v28;
          objc_storeStrong(&self->_badFrameFlags, v77);
          objc_storeStrong(&self->_perFrameTranslationVecs, obj);
          v70 = v69 & 0x2C00;
          v15 = obj;
          v17 = v70 | v73;

          v10 = v77;
          v19 = v82;
        }
      }
    }
  }

  return v17;
}

- (int)isCumulativePanAcceptableForFrames:(id)a3 firstIndex:(int64_t)a4 lastIndex:(int64_t)a5
{
  v8 = a3;
  v9 = v8;
  v10 = 0x2000;
  if ((a4 & 0x8000000000000000) == 0 && a4 <= a5 && [v8 count] > a5)
  {
    v11 = [(NSArray *)self->_badFrameFlags count];
    if (v11 == [v9 count] && (v12 = -[NSData length](self->_perFrameTranslationVecs, "length"), objc_msgSend(v9, "count") == v12 >> 3))
    {
      [(PregateAnalyzer *)self cumulativePanForStartIndex:a4 lastIndex:a5];
      v14 = v13;
      v16 = v15;
      v22 = 0;
      v17 = [(PregateAnalyzer *)self getParamForKey:@"maxPanX" toFloat:&v22 + 4];
      v10 = 1024;
      if ([(PregateAnalyzer *)self getParamForKey:@"maxPanY" toFloat:&v22]&& v17)
      {
        v18 = self->_inputVideoSize.width * *(&v22 + 1);
        if (v14 <= v18)
        {
          v19 = self->_inputVideoSize.height * *&v22;
          v20 = v16 <= v19;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          v10 = 0;
        }

        else
        {
          v10 = 2;
        }
      }
    }

    else
    {
      v10 = 0x2000;
    }
  }

  return v10;
}

- (BOOL)subsegmentMeetsTrimCriteriaForFrames:(id)a3 firstFrame:(int64_t)a4 lastFrame:(int64_t)a5 firstFrameTimeOut:(id *)a6 lastFrameTimeOut:(id *)a7 preciseTrimTimeOut:(id *)a8
{
  v14 = a3;
  v15 = v14;
  if (a5 < a4)
  {
    v16 = 0;
    goto LABEL_43;
  }

  v17 = [v14 count];
  v16 = 0;
  if ((a4 & 0x8000000000000000) == 0 && v17 > a5)
  {
    v18 = [v15 objectAtIndex:a4];
    v19 = [v15 objectAtIndex:a5];
    memset(&v47, 0, sizeof(v47));
    v20 = [v18 objectForKeyedSubscript:@"PresentationTime"];
    CMTimeMakeFromDictionary(&v47, v20);

    memset(&v46, 0, sizeof(v46));
    v21 = [v19 objectForKeyedSubscript:@"PresentationTime"];
    CMTimeMakeFromDictionary(&v46, v21);

    if (a6)
    {
      *a6 = v47;
    }

    if (a7)
    {
      *a7 = v46;
    }

    [(PregateAnalyzer *)self minimumRequiredTrimLength];
    if ((v45 & 0x1D) != 1)
    {
      goto LABEL_22;
    }

    memset(&v33, 0, 24);
    lhs = v46;
    rhs = v47;
    CMTimeSubtract(&v33.start, &lhs, &rhs);
    if (a8)
    {
      *&a8->var0 = *&v33.start.value;
      a8->var3 = v33.start.epoch;
    }

    [(PregateAnalyzer *)self minimumRequiredTrimLength];
    rhs = v33.start;
    if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    lhs = **&MEMORY[0x277CC08F0];
    if ([v15 count] - 1 <= a5)
    {
      if (a5 < 1)
      {
LABEL_18:
        time2 = v33.start;
        v41 = lhs;
        CMTimeAdd(&rhs, &time2, &v41);
        [(PregateAnalyzer *)self minimumRequiredTrimLength];
        v26 = CMTimeCompare(&rhs, &time2);
        if (!a8 || v26 < 0)
        {
          if (v26 < 0)
          {
            v16 = 0;
LABEL_42:

            goto LABEL_43;
          }
        }

        else
        {
          [(PregateAnalyzer *)self minimumRequiredTrimLength];
          *a8 = rhs;
        }

LABEL_22:
        [(PregateAnalyzer *)self requiredFrameTime];
        if ((v40 & 0x1D) == 1)
        {
          [(PregateAnalyzer *)self requiredFrameTime];
          lhs = v47;
          v27 = CMTimeCompare(&v33.start, &lhs);
          [(PregateAnalyzer *)self requiredFrameTime];
          lhs = v46;
          v16 = CMTimeCompare(&v33.start, &lhs) < 1 && v27 >= 0;
        }

        else
        {
          v16 = 1;
        }

        [(PregateAnalyzer *)self requiredTimeRange];
        if (v39)
        {
          [(PregateAnalyzer *)self requiredTimeRange];
          if (v38)
          {
            [(PregateAnalyzer *)self requiredTimeRange];
            if (!v37)
            {
              [(PregateAnalyzer *)self requiredTimeRange];
              if ((v36 & 0x8000000000000000) == 0)
              {
                [(PregateAnalyzer *)self requiredTimeRange];
                *&v33.start.value = v34;
                v33.start.epoch = v35;
                lhs = v47;
                v29 = CMTimeCompare(&v33.start, &lhs);
                [(PregateAnalyzer *)self requiredTimeRange];
                CMTimeRangeGetEnd(&lhs, &v33);
                v33.start = v46;
                v31 = CMTimeCompare(&lhs, &v33.start) < 1 && v29 >= 0;
                v16 &= v31;
              }
            }
          }
        }

        goto LABEL_42;
      }

      v22 = [v15 objectAtIndexedSubscript:a5 - 1];
      memset(&rhs, 0, sizeof(rhs));
      v25 = [v22 objectForKeyedSubscript:@"PresentationTime"];
      CMTimeMakeFromDictionary(&rhs, v25);

      time2 = v46;
      *&v41.value = *&rhs.value;
      epoch = rhs.epoch;
    }

    else
    {
      v22 = [v15 objectAtIndexedSubscript:a5 + 1];
      memset(&rhs, 0, sizeof(rhs));
      v23 = [v22 objectForKeyedSubscript:@"PresentationTime"];
      CMTimeMakeFromDictionary(&rhs, v23);

      time2 = rhs;
      *&v41.value = *&v46.value;
      epoch = v46.epoch;
    }

    v41.epoch = epoch;
    CMTimeSubtract(&lhs, &time2, &v41);

    goto LABEL_18;
  }

LABEL_43:

  return v16;
}

- (int64_t)findLongestPassingSegmentInFrameFlags:(id)a3 startIndex:(int64_t)a4 endIndex:(int64_t)a5 startOfRun:(int64_t *)a6 gatingFailures:(int *)a7
{
  v24 = a6;
  v9 = a3;
  if (a4 <= a5)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v15 = a5 + 1;
    do
    {
      v16 = [v9 objectAtIndex:{a4, v24}];
      v17 = [v16 unsignedIntegerValue];

      v13 |= v17;
      if (v10 <= v12)
      {
        v18 = v11;
      }

      else
      {
        v18 = v14;
      }

      if (v10 <= v12)
      {
        v19 = v12;
      }

      else
      {
        v19 = v10;
      }

      if (v10)
      {
        v20 = v14;
      }

      else
      {
        v18 = v11;
        v19 = v12;
        v20 = a4;
      }

      if (v17)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      if (v17)
      {
        v11 = v18;
        v12 = v19;
      }

      else
      {
        v14 = v20;
      }

      ++a4;
    }

    while (v15 != a4);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v10 <= v12)
  {
    v21 = v11;
  }

  else
  {
    v21 = v14;
  }

  *v24 = v21;
  if (a7)
  {
    *a7 = v13;
  }

  if (v10 <= v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = v10;
  }

  return v22;
}

- (BOOL)findFrameIndicesInFrameArray:(id)a3 forTimeRange:(id *)a4 startIndex:(int *)a5 endIndex:(int *)a6
{
  v10 = a3;
  if (![v10 count])
  {
    goto LABEL_24;
  }

  if ((a4->var0.var2 & 0x1D) == 1 || (a4->var1.var2 & 0x1D) == 1)
  {
    v27 = **&MEMORY[0x277CC0898];
    if ([v10 count])
    {
      v11 = 0;
      while (1)
      {
        v12 = [v10 objectAtIndexedSubscript:v11];
        v13 = [v12 objectForKeyedSubscript:@"PresentationTime"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          memset(&v26, 0, sizeof(v26));
          CMTimeMakeFromDictionary(&v26, v13);
          time1 = v26;
          time2 = self->inputTrimTime.start;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
          {
            break;
          }
        }

        if ([v10 count] <= ++v11)
        {
          goto LABEL_13;
        }
      }

      v27 = v26;

LABEL_13:
      v14 = v11;
    }

    else
    {
      v14 = 0;
      v11 = 0;
    }

    if ([v10 count] <= v11)
    {
      goto LABEL_24;
    }

    v22 = a5;
    v16 = [v10 count];
    v17 = v16;
    if (v16 <= v14)
    {
      goto LABEL_24;
    }

    v15 = v16 - 1;
    while (1)
    {
      v18 = [v10 objectAtIndexedSubscript:--v17];
      v19 = [v18 objectForKeyedSubscript:@"PresentationTime"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memset(&v26, 0, sizeof(v26));
        CMTimeMakeFromDictionary(&v26, v19);
        memset(&time1, 0, sizeof(time1));
        time2 = v26;
        rhs = v27;
        CMTimeSubtract(&time1, &time2, &rhs);
        time2 = time1;
        rhs = self->inputTrimTime.duration;
        if (CMTimeCompare(&time2, &rhs) <= 0)
        {
          break;
        }
      }

      --v15;
      if (v17 <= v14)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v22 = a5;
    v14 = 0;
    v15 = [v10 count] - 1;
  }

  if (![(PregateAnalyzer *)self subsegmentMeetsTrimCriteriaForFrames:v10 firstFrame:v14 lastFrame:v15 firstFrameTimeOut:0 lastFrameTimeOut:0 preciseTrimTimeOut:0])
  {
LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  *v22 = v14;
  *a6 = v15;
  v20 = 1;
LABEL_25:

  return v20;
}

- (int)findGatingPassViaTrimming:(id)a3
{
  v4 = a3;
  v10 = 0;
  v9 = 0;
  v5 = [(PregateAnalyzer *)self findLongestPassingSegmentInFrameFlags:self->_badFrameFlags startIndex:self->_trimInput_firstIndex endIndex:self->_trimInput_lastIndex startOfRun:&v10 gatingFailures:&v9];
  if (v5)
  {
    v6 = v5 + v10 - 1;
    if ([PregateAnalyzer subsegmentMeetsTrimCriteriaForFrames:"subsegmentMeetsTrimCriteriaForFrames:firstFrame:lastFrame:firstFrameTimeOut:lastFrameTimeOut:preciseTrimTimeOut:" firstFrame:v4 lastFrame:? firstFrameTimeOut:? lastFrameTimeOut:? preciseTrimTimeOut:?])
    {
      v7 = [(PregateAnalyzer *)self isCumulativePanAcceptableForFrames:v4 firstIndex:v10 lastIndex:v6];
      if (!v7)
      {
        *&self->outputTrimTime.start.value = 0uLL;
        self->outputTrimTime.start.epoch = 0;
        self->outputTrimTime.duration.epoch = 0;
        *&self->outputTrimTime.duration.value = 0uLL;
      }
    }

    else
    {
      v7 = v9;
      if (!v9)
      {
        v7 = 512;
        v9 = 512;
      }
    }
  }

  else if (v9)
  {
    v7 = v9;
  }

  else
  {
    v7 = 512;
  }

  return v7;
}

- (int)processPregateSuccess:(int *)a3
{
  v5 = MEMORY[0x277CC0898];
  v6 = *MEMORY[0x277CC0898];
  *&self->outputTrimTime.start.value = *MEMORY[0x277CC0898];
  v7 = *(v5 + 16);
  self->outputTrimTime.start.epoch = v7;
  p_duration = &self->outputTrimTime.duration;
  *&self->outputTrimTime.duration.value = v6;
  self->outputTrimTime.duration.epoch = v7;
  v9 = [(PregateAnalyzer *)self fetchVideoDimensionsFromMetadata];
  if (!v9)
  {
    v20 = 0;
    v9 = [(PregateAnalyzer *)self getFrameMetadataArray:&v20];
    v10 = v20;
    if ([v10 count])
    {
      if (v9 || !v10)
      {
        goto LABEL_11;
      }

      v11 = *&self->inputTrimTime.start.epoch;
      *time = *&self->inputTrimTime.start.value;
      *&time[16] = v11;
      v19 = *&self->inputTrimTime.duration.timescale;
      if ([(PregateAnalyzer *)self findFrameIndicesInFrameArray:v10 forTimeRange:time startIndex:&self->_trimInput_firstIndex endIndex:&self->_trimInput_lastIndex])
      {
        v12 = [(PregateAnalyzer *)self getPerFrameGatingData:v10 firstIndex:self->_trimInput_firstIndex lastIndex:self->_trimInput_lastIndex];
        if (!v12)
        {
          v12 = [(PregateAnalyzer *)self findGatingPassViaTrimming:v10];
        }
      }

      else
      {
        v12 = 512;
      }
    }

    else
    {
      v12 = 2048;
    }

    *a3 = v12;
LABEL_11:
  }

  if (!*a3)
  {
    if (self->outputTrimTime.start.flags & 1) != 0 && (self->outputTrimTime.duration.flags)
    {
      *time = *&self->outputTrimTime.start.value;
      *&time[16] = self->outputTrimTime.start.epoch;
      Seconds = CMTimeGetSeconds(time);
      *time = *&p_duration->value;
      *&time[16] = p_duration->epoch;
      v14 = CMTimeGetSeconds(time);
      *time = *&self->inputTrimTime.start.value;
      *&time[16] = self->inputTrimTime.start.epoch;
      v15 = CMTimeGetSeconds(time);
      *time = *&self->inputTrimTime.duration.value;
      *&time[16] = self->inputTrimTime.duration.epoch;
      v17 = CMTimeGetSeconds(time);
      NSLog(&cfstr_VideoGatingTri.isa, *&Seconds, *&v14, *&v15, *&v17);
    }

    else
    {
      NSLog(&cfstr_VideoGatingSuc.isa);
    }
  }

  return v9;
}

- (CGSize)inputVideoSize
{
  objc_copyStruct(v4, &self->_inputVideoSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end