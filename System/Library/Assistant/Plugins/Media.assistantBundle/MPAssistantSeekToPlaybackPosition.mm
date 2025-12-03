@interface MPAssistantSeekToPlaybackPosition
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSeekToPlaybackPosition

- (void)performWithCompletion:(id)completion
{
  v44[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v43[0] = *MEMORY[0x277D27D50];
  v6 = MEMORY[0x277CCABB0];
  positionInMilliseconds = [(MPAssistantSeekToPlaybackPosition *)self positionInMilliseconds];
  longValue = [positionInMilliseconds longValue];
  if (longValue >= 0)
  {
    v9 = longValue;
  }

  else
  {
    v9 = -longValue;
  }

  v10 = [v6 numberWithDouble:v9 / 1000.0];
  v43[1] = *MEMORY[0x277D27DC0];
  v44[0] = v10;
  v44[1] = @"com.apple.MediaAssistant.siri";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSeekToPlaybackPosition *)self aceId];
    v13 = sub_233505670(@"Seek To Playback Position", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v13;
  }

  v15 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantSeekToPlaybackPosition *)self hashedRouteUIDs];
    v18 = [hashedRouteUIDs count];
    positionInMilliseconds2 = [(MPAssistantSeekToPlaybackPosition *)self positionInMilliseconds];
    *buf = 138543874;
    v38 = v16;
    v39 = 2048;
    v40 = v18;
    v41 = 2114;
    v42 = positionInMilliseconds2;
    _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_DEFAULT, "Seek To Playback Position (invoke) <%{public}@>: %lu UIDs, %{public}@ position", buf, 0x20u);
  }

  v20 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantSeekToPlaybackPosition *)self hashedRouteUIDs];
  sub_2335057BC(@"Seek To Playback Position", v20, hashedRouteUIDs2);

  v22 = objc_alloc_init(MEMORY[0x277D27828]);
  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2334F603C;
  v30[3] = &unk_2789DBAF8;
  v31 = nowPlayingApplicationDestination;
  selfCopy = self;
  v33 = v22;
  v34 = v11;
  v35 = date;
  v36 = completionCopy;
  v24 = completionCopy;
  v25 = date;
  v26 = v11;
  v27 = v22;
  v28 = nowPlayingApplicationDestination;
  sub_2334F603C(v30, 0);

  v29 = *MEMORY[0x277D85DE8];
}

@end