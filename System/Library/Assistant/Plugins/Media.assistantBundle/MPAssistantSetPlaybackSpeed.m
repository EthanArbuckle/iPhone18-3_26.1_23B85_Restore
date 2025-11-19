@interface MPAssistantSetPlaybackSpeed
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSetPlaybackSpeed

- (void)performWithCompletion:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  if (![(NSString *)self->_requestAceHash length])
  {
    v6 = [(MPAssistantSetPlaybackSpeed *)self aceId];
    v7 = sub_233505670(@"Seek To Playback Speed", v6);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    v11 = [(MPAssistantSetPlaybackSpeed *)self hashedRouteUIDs];
    v12 = [v11 count];
    [(MPAssistantSetPlaybackSpeed *)self scalingFactor];
    *buf = 138543874;
    v37 = v10;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v13;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Seek To Playback Speed (invoke) <%{public}@>: %lu UIDs, %f speed", buf, 0x20u);
  }

  v14 = self->_requestAceHash;
  v15 = [(MPAssistantSetPlaybackSpeed *)self hashedRouteUIDs];
  sub_2335057BC(@"Seek To Playback Speed", v14, v15);

  v34[0] = *MEMORY[0x277D27D60];
  v16 = MEMORY[0x277CCABB0];
  [(MPAssistantSetPlaybackSpeed *)self scalingFactor];
  v17 = [v16 numberWithDouble:?];
  v34[1] = *MEMORY[0x277D27DC0];
  v35[0] = v17;
  v35[1] = @"com.apple.MediaAssistant.siri";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v19 = objc_alloc_init(MEMORY[0x277D27828]);
  v20 = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2334F6DD8;
  v27[3] = &unk_2789DBAF8;
  v28 = v20;
  v29 = self;
  v30 = v19;
  v31 = v18;
  v32 = v5;
  v33 = v4;
  v21 = v4;
  v22 = v5;
  v23 = v18;
  v24 = v19;
  v25 = v20;
  sub_2334F6DD8(v27, 0);

  v26 = *MEMORY[0x277D85DE8];
}

@end