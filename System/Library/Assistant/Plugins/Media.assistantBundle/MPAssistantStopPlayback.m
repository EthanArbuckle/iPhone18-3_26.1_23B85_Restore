@interface MPAssistantStopPlayback
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantStopPlayback

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPAssistantPausePlayback);
  v6 = [(MPAssistantStopPlayback *)self hashedRouteUIDs];
  [(MPAssistantPausePlayback *)v5 setHashedRouteUIDs:v6];

  v7 = [(MPAssistantStopPlayback *)self refId];
  [(MPAssistantPausePlayback *)v5 setRefId:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233502514;
  v9[3] = &unk_2789DBC10;
  v10 = v4;
  v8 = v4;
  [(MPAssistantPausePlayback *)v5 performWithCompletion:v9];
}

@end