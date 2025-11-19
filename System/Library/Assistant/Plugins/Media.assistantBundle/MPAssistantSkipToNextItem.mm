@interface MPAssistantSkipToNextItem
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSkipToNextItem

- (void)performWithCompletion:(id)a3
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v35[0] = *MEMORY[0x277D27D08];
  v6 = [(MPAssistantSkipToNextItem *)self refId];
  v35[1] = *MEMORY[0x277D27DC0];
  v36[0] = v6;
  v36[1] = @"com.apple.MediaAssistant.siri";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  if (![(NSString *)self->_requestAceHash length])
  {
    v8 = [(MPAssistantSkipToNextItem *)self aceId];
    v9 = sub_233505670(@"Skip To Next Item", v8);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v9;
  }

  v11 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_requestAceHash;
    v13 = [(MPAssistantSkipToNextItem *)self hashedRouteUIDs];
    *buf = 138543618;
    v32 = v12;
    v33 = 2048;
    v34 = [v13 count];
    _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Skip To Next Item (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v14 = self->_requestAceHash;
  v15 = [(MPAssistantSkipToNextItem *)self hashedRouteUIDs];
  sub_2335057BC(@"Skip To Next Item", v14, v15);

  v16 = objc_alloc_init(MEMORY[0x277D27828]);
  v17 = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_233500F50;
  v24[3] = &unk_2789DBAF8;
  v25 = v17;
  v26 = self;
  v27 = v16;
  v28 = v7;
  v29 = v5;
  v30 = v4;
  v18 = v4;
  v19 = v5;
  v20 = v7;
  v21 = v16;
  v22 = v17;
  sub_233500F50(v24, 0);

  v23 = *MEMORY[0x277D85DE8];
}

@end