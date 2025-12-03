@interface ATXAssetsAggregateLogger
+ (void)logKey:(id)key replaceScalarValueWith:(int64_t)with;
@end

@implementation ATXAssetsAggregateLogger

+ (void)logKey:(id)key replaceScalarValueWith:(int64_t)with
{
  keyCopy = key;
  if (!keyCopy)
  {
    [ATXAssetsAggregateLogger logKey:a2 replaceScalarValueWith:self];
  }

  v7 = objc_opt_new();
  [v7 setKey:keyCopy];
  mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
  [mEMORY[0x1E69C5B48] trackScalarForMessage:v7 count:with];
}

+ (void)logKey:(uint64_t)a1 replaceScalarValueWith:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAssetsAggregateLogger.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"key"}];
}

@end