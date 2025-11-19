@interface AVTUsageAnalysisService
+ (id)_stringFromXPCActivityState:(int64_t)a3;
- (AVTUsageAnalysisService)initWithLogger:(id)a3;
- (void)performUsageAnalysis;
- (void)startListening;
@end

@implementation AVTUsageAnalysisService

- (AVTUsageAnalysisService)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTUsageAnalysisService;
  v6 = [(AVTUsageAnalysisService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (void)startListening
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001880;
  handler[3] = &unk_1000041F8;
  handler[4] = self;
  xpc_activity_register([@"com.apple.animoji.UsageAnalysis" UTF8String], XPC_ACTIVITY_CHECK_IN, handler);
}

- (void)performUsageAnalysis
{
  v2 = objc_alloc_init(AVTPAvatarStore);
  [AVTUsageTracker trackCountOfMemojiInStore:v2];
}

+ (id)_stringFromXPCActivityState:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100004218 + a3);
  }
}

@end