@interface MPAssistantRateMediaEntity
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantRateMediaEntity

- (void)performWithCompletion:(id)completion
{
  v41[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  hashedRouteUID = [(MPAssistantRateMediaEntity *)self hashedRouteUID];

  if (hashedRouteUID)
  {
    hashedRouteUID2 = [(MPAssistantRateMediaEntity *)self hashedRouteUID];
    v41[0] = hashedRouteUID2;
    hashedRouteUID = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantRateMediaEntity *)self aceId];
    v9 = sub_233505670(@"Rate Media Entity", aceId);
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
    v38 = [hashedRouteUID count];
    v39 = 2048;
    rating = [(MPAssistantRateMediaEntity *)self rating];
    _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Rate Media Entity (invoke) <%{public}@>: %lu UIDs rating %ld", buf, 0x20u);
  }

  sub_2335057BC(@"Rate Media Entity", self->_requestAceHash, hashedRouteUID);
  v13 = [(MPAssistantRateMediaEntity *)self rating]/ 5.0;
  *&v13 = v13;
  v33[0] = *MEMORY[0x277D27DB8];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v33[1] = *MEMORY[0x277D27DC0];
  v34[0] = v14;
  v34[1] = @"com.apple.MediaAssistant.siri";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v16 = objc_alloc_init(MEMORY[0x277D27828]);
  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2334F2DA4;
  v25[3] = &unk_2789DBBE8;
  v26 = nowPlayingApplicationDestination;
  v27 = hashedRouteUID;
  v28 = v16;
  v29 = v15;
  v30 = date;
  selfCopy = self;
  v32 = completionCopy;
  v18 = completionCopy;
  v19 = date;
  v20 = v15;
  v21 = v16;
  v22 = hashedRouteUID;
  v23 = nowPlayingApplicationDestination;
  sub_2334F2DA4(v25, 0);

  v24 = *MEMORY[0x277D85DE8];
}

@end