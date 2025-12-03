@interface MPAssistantIncreasePlaybackSpeed
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantIncreasePlaybackSpeed

- (void)performWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantIncreasePlaybackSpeed *)self aceId];
    v7 = sub_233505670(@"Increase Playback Speed", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantIncreasePlaybackSpeed *)self hashedRouteUIDs];
    *buf = 138543618;
    v34 = v10;
    v35 = 2048;
    v36 = [hashedRouteUIDs count];
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Increase Playback Speed (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v12 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantIncreasePlaybackSpeed *)self hashedRouteUIDs];
  sub_2335057BC(@"Increase Playback Speed", v12, hashedRouteUIDs2);

  v14 = *MEMORY[0x277D27DC0];
  v31[0] = *MEMORY[0x277D27DA0];
  v31[1] = v14;
  v32[0] = &unk_2848D8C40;
  v32[1] = @"com.apple.MediaAssistant.siri";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v16 = objc_alloc_init(MEMORY[0x277D27828]);
  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2334ED7CC;
  v24[3] = &unk_2789DBAF8;
  v25 = nowPlayingApplicationDestination;
  selfCopy = self;
  v27 = v16;
  v28 = v15;
  v29 = date;
  v30 = completionCopy;
  v18 = completionCopy;
  v19 = date;
  v20 = v15;
  v21 = v16;
  v22 = nowPlayingApplicationDestination;
  sub_2334ED7CC(v24, 0);

  v23 = *MEMORY[0x277D85DE8];
}

@end