@interface ATXAssetsAggregateLogger
+ (void)logKey:(id)a3 replaceScalarValueWith:(int64_t)a4;
@end

@implementation ATXAssetsAggregateLogger

+ (void)logKey:(id)a3 replaceScalarValueWith:(int64_t)a4
{
  v9 = a3;
  if (!v9)
  {
    [ATXAssetsAggregateLogger logKey:a2 replaceScalarValueWith:a1];
  }

  v7 = objc_opt_new();
  [v7 setKey:v9];
  v8 = [MEMORY[0x1E69C5B48] sharedInstance];
  [v8 trackScalarForMessage:v7 count:a4];
}

+ (void)logKey:(uint64_t)a1 replaceScalarValueWith:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAssetsAggregateLogger.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"key"}];
}

@end