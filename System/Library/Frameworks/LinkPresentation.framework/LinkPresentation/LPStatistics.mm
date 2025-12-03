@interface LPStatistics
+ (void)recordEvent:(id)event;
+ (void)recordMetadataFetchEvent:(id)event;
@end

@implementation LPStatistics

+ (void)recordEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy type] || objc_msgSend(eventCopy, "type") == 4)
  {
    [self recordMetadataFetchEvent:eventCopy];
  }
}

+ (void)recordMetadataFetchEvent:(id)event
{
  v10[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v9[0] = @"status";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "status")}];
  v10[0] = v4;
  v9[1] = @"specialization";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "specialization")}];
  v10[1] = v5;
  v9[2] = @"duration";
  v6 = MEMORY[0x1E696AD98];
  [eventCopy duration];
  v7 = [v6 numberWithDouble:?];
  v10[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  AnalyticsSendEvent();
}

@end