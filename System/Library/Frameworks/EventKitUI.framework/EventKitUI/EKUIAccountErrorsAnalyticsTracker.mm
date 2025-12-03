@interface EKUIAccountErrorsAnalyticsTracker
+ (void)_trackErrorShown:(unint64_t)shown;
@end

@implementation EKUIAccountErrorsAnalyticsTracker

+ (void)_trackErrorShown:(unint64_t)shown
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"ErrorType";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:shown];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  CalAnalyticsSendEvent();
}

@end