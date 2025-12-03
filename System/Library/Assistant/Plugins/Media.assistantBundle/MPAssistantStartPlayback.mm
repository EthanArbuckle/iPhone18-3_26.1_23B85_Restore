@interface MPAssistantStartPlayback
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantStartPlayback

- (void)performWithCompletion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantStartPlayback *)self aceId];
    v7 = sub_233505670(@"Start Playback", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
    *buf = 138543618;
    v39 = v10;
    v40 = 2048;
    v41 = [hashedRouteUIDs count];
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Start Playback (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v12 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
  sub_2335057BC(@"Start Playback", v12, hashedRouteUIDs2);

  v36[0] = *MEMORY[0x277D27D08];
  refId = [(MPAssistantStartPlayback *)self refId];
  v36[1] = *MEMORY[0x277D27DC0];
  v37[0] = refId;
  v37[1] = @"com.apple.MediaAssistant.siri";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  hashedRouteUIDs3 = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
  v17 = [hashedRouteUIDs3 containsObject:@"LOCAL_DEVICE"];

  if (v17)
  {
    hashedRouteUIDs4 = 0;
  }

  else
  {
    hashedRouteUIDs4 = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
  }

  v19 = objc_alloc_init(MEMORY[0x277D27828]);
  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_233501F48;
  v28[3] = &unk_2789DBBE8;
  v29 = nowPlayingApplicationDestination;
  v30 = hashedRouteUIDs4;
  v31 = v19;
  v32 = v15;
  v33 = date;
  selfCopy = self;
  v35 = completionCopy;
  v21 = completionCopy;
  v22 = date;
  v23 = v15;
  v24 = v19;
  v25 = hashedRouteUIDs4;
  v26 = nowPlayingApplicationDestination;
  sub_233501F48(v28, 0);

  v27 = *MEMORY[0x277D85DE8];
}

@end