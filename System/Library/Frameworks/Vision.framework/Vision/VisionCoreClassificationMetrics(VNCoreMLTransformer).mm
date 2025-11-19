@interface VisionCoreClassificationMetrics(VNCoreMLTransformer)
+ (id)VNMetricsFromMLPrecisionRecallCurve:()VNCoreMLTransformer error:;
@end

@implementation VisionCoreClassificationMetrics(VNCoreMLTransformer)

+ (id)VNMetricsFromMLPrecisionRecallCurve:()VNCoreMLTransformer error:
{
  v6 = a3;
  v7 = MEMORY[0x1E69DF9C0];
  v8 = [v6 precisionValues];
  v9 = [v6 precisionConfidenceThresholds];
  v10 = [v7 curveWithValuesArray:v8 confidencesArray:v9 error:a4];

  if (v10)
  {
    v11 = MEMORY[0x1E69DF9C0];
    v12 = [v6 recallValues];
    v13 = [v6 recallConfidenceThresholds];
    v14 = [v11 curveWithValuesArray:v12 confidencesArray:v13 error:a4];

    if (v14)
    {
      v15 = [[a1 alloc] initWithPrecisionCurve:v10 recallCurve:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end