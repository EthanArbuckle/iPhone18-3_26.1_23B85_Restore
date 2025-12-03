@interface AVCaptionConversionAdjustment
+ (AVCaptionConversionAdjustment)captionConversionAdjustmentWithFigDictionary:(__CFDictionary *)dictionary;
- (AVCaptionConversionAdjustmentType)adjustmentType;
@end

@implementation AVCaptionConversionAdjustment

+ (AVCaptionConversionAdjustment)captionConversionAdjustmentWithFigDictionary:(__CFDictionary *)dictionary
{
  if ([-[__CFDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{*MEMORY[0x1E6971818]), "longValue"}] != 1)
  {
    return 0;
  }

  return [AVCaptionConversionTimeRangeAdjustment captionConversionTimeRangeAdjustmentWithFigDictionary:dictionary];
}

- (AVCaptionConversionAdjustmentType)adjustmentType
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end