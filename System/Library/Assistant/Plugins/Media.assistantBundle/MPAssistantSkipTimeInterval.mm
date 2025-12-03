@interface MPAssistantSkipTimeInterval
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSkipTimeInterval

- (void)performWithCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSkipTimeInterval *)self aceId];
    v7 = sub_233505670(@"Skip Time Interval", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantSkipTimeInterval *)self hashedRouteUIDs];
    v12 = [hashedRouteUIDs count];
    adjustmentInMilliseconds = [(MPAssistantSkipTimeInterval *)self adjustmentInMilliseconds];
    *buf = 138543874;
    v46 = v10;
    v47 = 2048;
    v48 = v12;
    v49 = 2114;
    v50 = adjustmentInMilliseconds;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Skip Time Interval (invoke) <%{public}@>: %lu UIDs, %{public}@ milliseconds", buf, 0x20u);
  }

  v14 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantSkipTimeInterval *)self hashedRouteUIDs];
  sub_2335057BC(@"Skip Time Interval", v14, hashedRouteUIDs2);

  adjustmentInMilliseconds2 = [(MPAssistantSkipTimeInterval *)self adjustmentInMilliseconds];
  [adjustmentInMilliseconds2 doubleValue];
  v18 = v17;

  if (v18 >= 0.0)
  {
    v19 = 17;
  }

  else
  {
    v19 = 18;
  }

  v43[0] = *MEMORY[0x277D27DF8];
  v20 = MEMORY[0x277CCABB0];
  adjustmentInMilliseconds3 = [(MPAssistantSkipTimeInterval *)self adjustmentInMilliseconds];
  longValue = [adjustmentInMilliseconds3 longValue];
  if (longValue >= 0)
  {
    v23 = longValue;
  }

  else
  {
    v23 = -longValue;
  }

  v24 = [v20 numberWithDouble:v23 / 1000.0];
  v44[0] = v24;
  v43[1] = *MEMORY[0x277D27D08];
  refId = [(MPAssistantSkipTimeInterval *)self refId];
  v43[2] = *MEMORY[0x277D27DC0];
  v44[1] = refId;
  v44[2] = @"com.apple.MediaAssistant.siri";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];

  v27 = objc_alloc_init(MEMORY[0x277D27828]);
  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_23350078C;
  v35[3] = &unk_2789DBAD0;
  v36 = nowPlayingApplicationDestination;
  selfCopy = self;
  v42 = v19;
  v38 = v27;
  v39 = v26;
  v40 = date;
  v41 = completionCopy;
  v29 = completionCopy;
  v30 = date;
  v31 = v26;
  v32 = v27;
  v33 = nowPlayingApplicationDestination;
  sub_23350078C(v35, 0);

  v34 = *MEMORY[0x277D85DE8];
}

@end