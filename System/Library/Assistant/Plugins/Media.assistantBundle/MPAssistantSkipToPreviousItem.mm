@interface MPAssistantSkipToPreviousItem
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSkipToPreviousItem

- (void)performWithCompletion:(id)completion
{
  v37[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v36[0] = *MEMORY[0x277D27D08];
  refId = [(MPAssistantSkipToPreviousItem *)self refId];
  v7 = *MEMORY[0x277D27DD0];
  v37[0] = refId;
  v37[1] = MEMORY[0x277CBEC38];
  v8 = *MEMORY[0x277D27DC0];
  v36[1] = v7;
  v36[2] = v8;
  v37[2] = @"com.apple.MediaAssistant.siri";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSkipToPreviousItem *)self aceId];
    v11 = sub_233505670(@"Seek To Previous Item", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v11;
  }

  v13 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantSkipToPreviousItem *)self hashedRouteUIDs];
    *buf = 138543618;
    v33 = v14;
    v34 = 2048;
    v35 = [hashedRouteUIDs count];
    _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Seek To Previous Item (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v16 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantSkipToPreviousItem *)self hashedRouteUIDs];
  sub_2335057BC(@"Seek To Previous Item", v16, hashedRouteUIDs2);

  v18 = objc_alloc_init(MEMORY[0x277D27828]);
  command = self->command;
  self->command = v18;

  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_233501758;
  v26[3] = &unk_2789DBB70;
  v27 = nowPlayingApplicationDestination;
  selfCopy = self;
  v29 = v9;
  v30 = date;
  v31 = completionCopy;
  v21 = completionCopy;
  v22 = date;
  v23 = v9;
  v24 = nowPlayingApplicationDestination;
  sub_233501758(v26, 0);

  v25 = *MEMORY[0x277D85DE8];
}

@end