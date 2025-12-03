@interface BuddyAISFlowTaskInfo
- (BuddyAISFlowTaskInfo)initWithUnderlyingFlowTaskInfo:(id)info;
- (void)waitUntilLoadedWithCompletion:(id)completion;
@end

@implementation BuddyAISFlowTaskInfo

- (BuddyAISFlowTaskInfo)initWithUnderlyingFlowTaskInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BuddyAISFlowTaskInfo;
  selfCopy = [(BuddyAISFlowTaskInfo *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)waitUntilLoadedWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  underlyingFlowTaskInfo = [(BuddyAISFlowTaskInfo *)selfCopy underlyingFlowTaskInfo];
  if (underlyingFlowTaskInfo)
  {
    underlyingFlowTaskInfo2 = [(BuddyAISFlowTaskInfo *)selfCopy underlyingFlowTaskInfo];
    [(AISFlowTaskInfoProtocol *)underlyingFlowTaskInfo2 waitUntilLoadedWithCompletionHandler:location[0]];
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

@end