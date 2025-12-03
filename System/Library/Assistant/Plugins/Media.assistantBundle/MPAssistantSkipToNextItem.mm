@interface MPAssistantSkipToNextItem
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSkipToNextItem

- (void)performWithCompletion:(id)completion
{
  v36[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v35[0] = *MEMORY[0x277D27D08];
  refId = [(MPAssistantSkipToNextItem *)self refId];
  v35[1] = *MEMORY[0x277D27DC0];
  v36[0] = refId;
  v36[1] = @"com.apple.MediaAssistant.siri";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSkipToNextItem *)self aceId];
    v9 = sub_233505670(@"Skip To Next Item", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v9;
  }

  v11 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantSkipToNextItem *)self hashedRouteUIDs];
    *buf = 138543618;
    v32 = v12;
    v33 = 2048;
    v34 = [hashedRouteUIDs count];
    _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Skip To Next Item (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v14 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantSkipToNextItem *)self hashedRouteUIDs];
  sub_2335057BC(@"Skip To Next Item", v14, hashedRouteUIDs2);

  v16 = objc_alloc_init(MEMORY[0x277D27828]);
  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_233500F50;
  v24[3] = &unk_2789DBAF8;
  v25 = nowPlayingApplicationDestination;
  selfCopy = self;
  v27 = v16;
  v28 = v7;
  v29 = date;
  v30 = completionCopy;
  v18 = completionCopy;
  v19 = date;
  v20 = v7;
  v21 = v16;
  v22 = nowPlayingApplicationDestination;
  sub_233500F50(v24, 0);

  v23 = *MEMORY[0x277D85DE8];
}

@end