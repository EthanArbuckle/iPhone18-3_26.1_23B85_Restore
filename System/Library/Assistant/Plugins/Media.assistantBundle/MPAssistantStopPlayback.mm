@interface MPAssistantStopPlayback
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantStopPlayback

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MPAssistantPausePlayback);
  hashedRouteUIDs = [(MPAssistantStopPlayback *)self hashedRouteUIDs];
  [(MPAssistantPausePlayback *)v5 setHashedRouteUIDs:hashedRouteUIDs];

  refId = [(MPAssistantStopPlayback *)self refId];
  [(MPAssistantPausePlayback *)v5 setRefId:refId];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233502514;
  v9[3] = &unk_2789DBC10;
  v10 = completionCopy;
  v8 = completionCopy;
  [(MPAssistantPausePlayback *)v5 performWithCompletion:v9];
}

@end