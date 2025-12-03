@interface VisionCoreClassificationMetrics(VNCoreMLTransformer)
+ (id)VNMetricsFromMLPrecisionRecallCurve:()VNCoreMLTransformer error:;
@end

@implementation VisionCoreClassificationMetrics(VNCoreMLTransformer)

+ (id)VNMetricsFromMLPrecisionRecallCurve:()VNCoreMLTransformer error:
{
  v6 = a3;
  v7 = MEMORY[0x1E69DF9C0];
  precisionValues = [v6 precisionValues];
  precisionConfidenceThresholds = [v6 precisionConfidenceThresholds];
  v10 = [v7 curveWithValuesArray:precisionValues confidencesArray:precisionConfidenceThresholds error:a4];

  if (v10)
  {
    v11 = MEMORY[0x1E69DF9C0];
    recallValues = [v6 recallValues];
    recallConfidenceThresholds = [v6 recallConfidenceThresholds];
    v14 = [v11 curveWithValuesArray:recallValues confidencesArray:recallConfidenceThresholds error:a4];

    if (v14)
    {
      v15 = [[self alloc] initWithPrecisionCurve:v10 recallCurve:v14];
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