@interface MPAssistantRateMediaEntity
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantRateMediaEntity

- (void)performWithCompletion:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(MPAssistantRateMediaEntity *)self hashedRouteUID];

  if (v6)
  {
    v7 = [(MPAssistantRateMediaEntity *)self hashedRouteUID];
    v41[0] = v7;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    v8 = [(MPAssistantRateMediaEntity *)self aceId];
    v9 = sub_233505670(@"Rate Media Entity", v8);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v9;
  }

  v11 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_requestAceHash;
    *buf = 138543874;
    v36 = v12;
    v37 = 2048;
    v38 = [v6 count];
    v39 = 2048;
    v40 = [(MPAssistantRateMediaEntity *)self rating];
    _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Rate Media Entity (invoke) <%{public}@>: %lu UIDs rating %ld", buf, 0x20u);
  }

  sub_2335057BC(@"Rate Media Entity", self->_requestAceHash, v6);
  v13 = [(MPAssistantRateMediaEntity *)self rating]/ 5.0;
  *&v13 = v13;
  v33[0] = *MEMORY[0x277D27DB8];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v33[1] = *MEMORY[0x277D27DC0];
  v34[0] = v14;
  v34[1] = @"com.apple.MediaAssistant.siri";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v16 = objc_alloc_init(MEMORY[0x277D27828]);
  v17 = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2334F2DA4;
  v25[3] = &unk_2789DBBE8;
  v26 = v17;
  v27 = v6;
  v28 = v16;
  v29 = v15;
  v30 = v5;
  v31 = self;
  v32 = v4;
  v18 = v4;
  v19 = v5;
  v20 = v15;
  v21 = v16;
  v22 = v6;
  v23 = v17;
  sub_2334F2DA4(v25, 0);

  v24 = *MEMORY[0x277D85DE8];
}

@end