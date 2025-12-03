@interface MPAssistantSetRepeatMode
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetRepeatMode

- (void)performWithCompletion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSetRepeatMode *)self aceId];
    v7 = sub_233505670(@"Set Repeat Mode", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantSetRepeatMode *)self hashedRouteUIDs];
    v12 = [hashedRouteUIDs count];
    repeatMode = [(MPAssistantSetRepeatMode *)self repeatMode];
    *buf = 138543874;
    v41 = v10;
    v42 = 2048;
    v43 = v12;
    v44 = 2114;
    v45 = repeatMode;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Set Repeat Mode (invoke) <%{public}@>: %lu UIDs, %{public}@ mode", buf, 0x20u);
  }

  v14 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantSetRepeatMode *)self hashedRouteUIDs];
  sub_2335057BC(@"Set Repeat Mode", v14, hashedRouteUIDs2);

  repeatMode2 = [(MPAssistantSetRepeatMode *)self repeatMode];
  LOBYTE(hashedRouteUIDs2) = [repeatMode2 isEqualToString:*MEMORY[0x277D486F8]];

  if (hashedRouteUIDs2)
  {
    v17 = 3;
  }

  else
  {
    repeatMode3 = [(MPAssistantSetRepeatMode *)self repeatMode];
    v19 = [repeatMode3 isEqualToString:*MEMORY[0x277D48708]];

    if (v19)
    {
      v17 = 2;
    }

    else
    {
      repeatMode4 = [(MPAssistantSetRepeatMode *)self repeatMode];
      v21 = [repeatMode4 isEqualToString:*MEMORY[0x277D48700]];

      if ((v21 & 1) == 0)
      {
        v29 = objc_alloc_init(MEMORY[0x277D47208]);
        dictionary = [v29 dictionary];
        completionCopy[2](completionCopy, dictionary);
        goto LABEL_12;
      }

      v17 = 1;
    }
  }

  v38[0] = *MEMORY[0x277D27DC8];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v17];
  v39[0] = v22;
  v38[1] = *MEMORY[0x277D27D08];
  refId = [(MPAssistantSetRepeatMode *)self refId];
  v38[2] = *MEMORY[0x277D27DC0];
  v39[1] = refId;
  v39[2] = @"com.apple.MediaAssistant.siri";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

  v25 = objc_alloc_init(MEMORY[0x277D27828]);
  nowPlayingApplicationDestination = [MEMORY[0x277D27850] nowPlayingApplicationDestination];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2334FDD50;
  v31[3] = &unk_2789DBAF8;
  v32 = nowPlayingApplicationDestination;
  selfCopy = self;
  v34 = v25;
  v35 = v24;
  v36 = date;
  v37 = completionCopy;
  v27 = v24;
  dictionary = v25;
  v29 = nowPlayingApplicationDestination;
  sub_2334FDD50(v31, 0);

LABEL_12:
  v30 = *MEMORY[0x277D85DE8];
}

@end