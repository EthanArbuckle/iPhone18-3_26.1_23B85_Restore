@interface AFAssistantSamplingUtilities
+ (id)samplingDateAsString;
@end

@implementation AFAssistantSamplingUtilities

+ (id)samplingDateAsString
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [objc_opt_class() dateFormatter];
  v4 = [v3 stringFromDate:v2];

  return v4;
}

@end