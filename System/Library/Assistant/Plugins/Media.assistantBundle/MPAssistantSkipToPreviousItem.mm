@interface MPAssistantSkipToPreviousItem
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSkipToPreviousItem

- (void)performWithCompletion:(id)a3
{
  v37[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v36[0] = *MEMORY[0x277D27D08];
  v6 = [(MPAssistantSkipToPreviousItem *)self refId];
  v7 = *MEMORY[0x277D27DD0];
  v37[0] = v6;
  v37[1] = MEMORY[0x277CBEC38];
  v8 = *MEMORY[0x277D27DC0];
  v36[1] = v7;
  v36[2] = v8;
  v37[2] = @"com.apple.MediaAssistant.siri";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

  if (![(NSString *)self->_requestAceHash length])
  {
    v10 = [(MPAssistantSkipToPreviousItem *)self aceId];
    v11 = sub_233505670(@"Seek To Previous Item", v10);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v11;
  }

  v13 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_requestAceHash;
    v15 = [(MPAssistantSkipToPreviousItem *)self hashedRouteUIDs];
    *buf = 138543618;
    v33 = v14;
    v34 = 2048;
    v35 = [v15 count];
    _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Seek To Previous Item (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v16 = self->_requestAceHash;
  v17 = [(MPAssistantSkipToPreviousItem *)self hashedRouteUIDs];
  sub_2335057BC(@"Seek To Previous Item", v16, v17);

  v18 = objc_alloc_init(MEMORY[0x277D27828]);
  command = self->command;
  self->command = v18;

  v20 = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_233501758;
  v26[3] = &unk_2789DBB70;
  v27 = v20;
  v28 = self;
  v29 = v9;
  v30 = v5;
  v31 = v4;
  v21 = v4;
  v22 = v5;
  v23 = v9;
  v24 = v20;
  sub_233501758(v26, 0);

  v25 = *MEMORY[0x277D85DE8];
}

@end