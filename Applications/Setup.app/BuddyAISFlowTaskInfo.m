@interface BuddyAISFlowTaskInfo
- (BuddyAISFlowTaskInfo)initWithUnderlyingFlowTaskInfo:(id)a3;
- (void)waitUntilLoadedWithCompletion:(id)a3;
@end

@implementation BuddyAISFlowTaskInfo

- (BuddyAISFlowTaskInfo)initWithUnderlyingFlowTaskInfo:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BuddyAISFlowTaskInfo;
  v8 = [(BuddyAISFlowTaskInfo *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(v8 + 1, location[0]);
  }

  v4 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (void)waitUntilLoadedWithCompletion:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  v4 = [(BuddyAISFlowTaskInfo *)v7 underlyingFlowTaskInfo];
  if (v4)
  {
    v5 = [(BuddyAISFlowTaskInfo *)v7 underlyingFlowTaskInfo];
    [(AISFlowTaskInfoProtocol *)v5 waitUntilLoadedWithCompletionHandler:location[0]];
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

@end