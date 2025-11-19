@interface AVCaptionConversionAdjustment
+ (AVCaptionConversionAdjustment)captionConversionAdjustmentWithFigDictionary:(__CFDictionary *)a3;
- (AVCaptionConversionAdjustmentType)adjustmentType;
@end

@implementation AVCaptionConversionAdjustment

+ (AVCaptionConversionAdjustment)captionConversionAdjustmentWithFigDictionary:(__CFDictionary *)a3
{
  if ([-[__CFDictionary objectForKeyedSubscript:](a3 objectForKeyedSubscript:{*MEMORY[0x1E6971818]), "longValue"}] != 1)
  {
    return 0;
  }

  return [AVCaptionConversionTimeRangeAdjustment captionConversionTimeRangeAdjustmentWithFigDictionary:a3];
}

- (AVCaptionConversionAdjustmentType)adjustmentType
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end