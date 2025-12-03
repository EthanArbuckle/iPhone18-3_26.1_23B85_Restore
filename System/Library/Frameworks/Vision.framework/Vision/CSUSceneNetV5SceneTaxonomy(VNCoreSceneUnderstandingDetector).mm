@interface CSUSceneNetV5SceneTaxonomy(VNCoreSceneUnderstandingDetector)
- (BOOL)VNGetClassificationMetrics:()VNCoreSceneUnderstandingDetector forLabel:error:;
@end

@implementation CSUSceneNetV5SceneTaxonomy(VNCoreSceneUnderstandingDetector)

- (BOOL)VNGetClassificationMetrics:()VNCoreSceneUnderstandingDetector forLabel:error:
{
  v8 = a4;
  if ([self hasLabelAttributes])
  {
    v9 = [self attributesForLabel:v8 error:a5];
    v10 = v9;
    if (v9)
    {
      precisionOperatingPointCurve = [v9 precisionOperatingPointCurve];
      recallOperatingPointCurve = [v10 recallOperatingPointCurve];
      v13 = [precisionOperatingPointCurve count];
      v14 = [recallOperatingPointCurve count];
      v15 = v14;
      if (v13 && v14)
      {
        v16 = [MEMORY[0x1E69DF9C0] VNCurveForCSUMetricOperatingPointCurve:precisionOperatingPointCurve error:a5];
        if (v16)
        {
          v17 = [MEMORY[0x1E69DF9C0] VNCurveForCSUMetricOperatingPointCurve:recallOperatingPointCurve error:a5];
          v18 = v17 != 0;
          if (v17)
          {
            *a3 = [objc_alloc(MEMORY[0x1E69DF8D0]) initWithPrecisionCurve:v16 recallCurve:v17];
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        if (!v13)
        {
          uTF8String = [v8 UTF8String];
          VNValidatedLog(2, @"%s does not have prevision curve", v20, v21, v22, v23, v24, v25, uTF8String);
        }

        if (!v15)
        {
          uTF8String2 = [v8 UTF8String];
          VNValidatedLog(2, @"%s does not have recall curve", v27, v28, v29, v30, v31, v32, uTF8String2);
        }

        *a3 = 0;
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    *a3 = 0;
    v18 = 1;
  }

  return v18;
}

@end