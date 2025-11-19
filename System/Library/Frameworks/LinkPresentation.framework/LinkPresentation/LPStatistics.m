@interface LPStatistics
+ (void)recordEvent:(id)a3;
+ (void)recordMetadataFetchEvent:(id)a3;
@end

@implementation LPStatistics

+ (void)recordEvent:(id)a3
{
  v4 = a3;
  if (![v4 type] || objc_msgSend(v4, "type") == 4)
  {
    [a1 recordMetadataFetchEvent:v4];
  }
}

+ (void)recordMetadataFetchEvent:(id)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9[0] = @"status";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "status")}];
  v10[0] = v4;
  v9[1] = @"specialization";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "specialization")}];
  v10[1] = v5;
  v9[2] = @"duration";
  v6 = MEMORY[0x1E696AD98];
  [v3 duration];
  v7 = [v6 numberWithDouble:?];
  v10[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  AnalyticsSendEvent();
}

@end