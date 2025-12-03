@interface AFAssistantSamplingUtilities
+ (id)samplingDateAsString;
@end

@implementation AFAssistantSamplingUtilities

+ (id)samplingDateAsString
{
  date = [MEMORY[0x1E695DF00] date];
  dateFormatter = [objc_opt_class() dateFormatter];
  v4 = [dateFormatter stringFromDate:date];

  return v4;
}

@end