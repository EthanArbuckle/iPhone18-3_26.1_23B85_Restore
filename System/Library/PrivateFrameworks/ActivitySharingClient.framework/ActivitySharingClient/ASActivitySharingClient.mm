@interface ASActivitySharingClient
- (ASActivitySharingClient)init;
- (void)appBadgeCountWithCompletion:(id)completion;
- (void)areMultipleDevicesSharingDataForSnapshotIndex:(id)index completion:(id)completion;
@end

@implementation ASActivitySharingClient

- (ASActivitySharingClient)init
{
  v6.receiver = self;
  v6.super_class = ASActivitySharingClient;
  v2 = [(ASActivitySharingClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_ASActivitySharingClient);
    activitySharingClient = v2->_activitySharingClient;
    v2->_activitySharingClient = v3;
  }

  return v2;
}

- (void)areMultipleDevicesSharingDataForSnapshotIndex:(id)index completion:(id)completion
{
  activitySharingClient = self->_activitySharingClient;
  completionCopy = completion;
  -[_ASActivitySharingClient areMultipleDevicesSharingDataForSnapshotIndex:completion:](activitySharingClient, "areMultipleDevicesSharingDataForSnapshotIndex:completion:", [index intValue], completionCopy);
}

- (void)appBadgeCountWithCompletion:(id)completion
{
  completionCopy = completion;
  activitySharingClient = self->_activitySharingClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ASActivitySharingClient_appBadgeCountWithCompletion___block_invoke;
  v7[3] = &unk_278C49F20;
  v8 = completionCopy;
  v6 = completionCopy;
  [(_ASActivitySharingClient *)activitySharingClient appBadgeCountWithCompletion:v7];
}

@end