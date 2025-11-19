@interface MPAssistantStartPlayback
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantStartPlayback

- (void)performWithCompletion:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  if (![(NSString *)self->_requestAceHash length])
  {
    v6 = [(MPAssistantStartPlayback *)self aceId];
    v7 = sub_233505670(@"Start Playback", v6);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    v11 = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
    *buf = 138543618;
    v39 = v10;
    v40 = 2048;
    v41 = [v11 count];
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Start Playback (invoke) <%{public}@>: %lu UIDs", buf, 0x16u);
  }

  v12 = self->_requestAceHash;
  v13 = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
  sub_2335057BC(@"Start Playback", v12, v13);

  v36[0] = *MEMORY[0x277D27D08];
  v14 = [(MPAssistantStartPlayback *)self refId];
  v36[1] = *MEMORY[0x277D27DC0];
  v37[0] = v14;
  v37[1] = @"com.apple.MediaAssistant.siri";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  v16 = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
  v17 = [v16 containsObject:@"LOCAL_DEVICE"];

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = [(MPAssistantStartPlayback *)self hashedRouteUIDs];
  }

  v19 = objc_alloc_init(MEMORY[0x277D27828]);
  v20 = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_233501F48;
  v28[3] = &unk_2789DBBE8;
  v29 = v20;
  v30 = v18;
  v31 = v19;
  v32 = v15;
  v33 = v5;
  v34 = self;
  v35 = v4;
  v21 = v4;
  v22 = v5;
  v23 = v15;
  v24 = v19;
  v25 = v18;
  v26 = v20;
  sub_233501F48(v28, 0);

  v27 = *MEMORY[0x277D85DE8];
}

@end