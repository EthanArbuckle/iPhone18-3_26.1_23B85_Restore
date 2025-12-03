@interface ATXNotificationDigestFeedbackInspector
- (id)_formatFeedbackDataForBundleId:(id)id feedback:(id)feedback;
- (id)_histogramKeyForLocation:(id)location feedback:(id)feedback;
- (void)addToHistogramForBundleId:(id)id location:(id)location feedback:(id)feedback withReply:(id)reply;
- (void)clearHistogramWithShouldResetBookmarks:(BOOL)bookmarks reply:(id)reply;
- (void)setHistogramValueForBundleId:(id)id location:(id)location feedback:(id)feedback value:(id)value withReply:(id)reply;
- (void)showHistogramForBundleId:(id)id withReply:(id)reply;
@end

@implementation ATXNotificationDigestFeedbackInspector

- (void)showHistogramForBundleId:(id)id withReply:(id)reply
{
  replyCopy = reply;
  idCopy = id;
  v9 = objc_opt_new();
  v8 = [(ATXNotificationDigestFeedbackInspector *)self _formatFeedbackDataForBundleId:idCopy feedback:v9];

  replyCopy[2](replyCopy, v8, 0);
}

- (void)addToHistogramForBundleId:(id)id location:(id)location feedback:(id)feedback withReply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  locationCopy = location;
  feedbackCopy = feedback;
  replyCopy = reply;
  v14 = objc_opt_new();
  if ([feedbackCopy isEqualToString:@"alltimeAppearance"])
  {
    alltimeMarqueeAppearanceHistogram = [v14 alltimeMarqueeAppearanceHistogram];
    v16 = [MEMORY[0x277CBEAA8] now];
    [alltimeMarqueeAppearanceHistogram addLaunchWithBundleId:idCopy date:v16 category:@"marquee_alltimeAppearance"];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v17 = [(ATXNotificationDigestFeedbackInspector *)self _histogramKeyForLocation:locationCopy feedback:feedbackCopy];
    if (v17)
    {
      digestFeedbackHistogram = [v14 digestFeedbackHistogram];
      v19 = [MEMORY[0x277CBEAA8] now];
      [digestFeedbackHistogram addLaunchWithBundleId:idCopy date:v19 category:v17];

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"Invalid argument for location or feedback";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXNotificationDigestFeedbackInspector" code:-1 userInfo:v20];
      (replyCopy)[2](replyCopy, v21);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setHistogramValueForBundleId:(id)id location:(id)location feedback:(id)feedback value:(id)value withReply:(id)reply
{
  v57[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  locationCopy = location;
  feedbackCopy = feedback;
  valueCopy = value;
  replyCopy = reply;
  v17 = objc_opt_new();
  if ([feedbackCopy isEqualToString:@"alltimeAppearance"])
  {
    alltimeMarqueeAppearanceHistogram = [v17 alltimeMarqueeAppearanceHistogram];
    v19 = MEMORY[0x277CBEB98];
    v57[0] = idCopy;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    v21 = [v19 setWithArray:v20];
    [alltimeMarqueeAppearanceHistogram removeBundleIds:v21];

    alltimeMarqueeAppearanceHistogram2 = [v17 alltimeMarqueeAppearanceHistogram];
    v23 = [MEMORY[0x277CBEAA8] now];
    [valueCopy floatValue];
    [alltimeMarqueeAppearanceHistogram2 addLaunchWithBundleId:idCopy date:v23 category:@"marquee_alltimeAppearance" weight:?];

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v24 = [(ATXNotificationDigestFeedbackInspector *)self _histogramKeyForLocation:locationCopy feedback:feedbackCopy];
    if (v24)
    {
      v43 = replyCopy;
      v44 = valueCopy;
      v45 = feedbackCopy;
      v46 = locationCopy;
      v25 = [v17 feedbackDictionaryForBundleId:idCopy];
      v47 = v17;
      digestFeedbackHistogram = [v17 digestFeedbackHistogram];
      v27 = MEMORY[0x277CBEB98];
      v48 = idCopy;
      v54 = idCopy;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v29 = [v27 setWithArray:v28];
      [digestFeedbackHistogram removeBundleIds:v29];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v30 = v25;
      v31 = [v30 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v50;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v50 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v49 + 1) + 8 * i);
            if (([v35 isEqualToString:v24] & 1) == 0 && (objc_msgSend(v35, "isEqualToString:", @"marquee_alltimeAppearance") & 1) == 0)
            {
              digestFeedbackHistogram2 = [v47 digestFeedbackHistogram];
              v37 = [MEMORY[0x277CBEAA8] now];
              v38 = [v30 objectForKeyedSubscript:v35];
              [v38 floatValue];
              [digestFeedbackHistogram2 addLaunchWithBundleId:v48 date:v37 category:v35 weight:?];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v32);
      }

      v17 = v47;
      digestFeedbackHistogram3 = [v47 digestFeedbackHistogram];
      v40 = [MEMORY[0x277CBEAA8] now];
      valueCopy = v44;
      [v44 floatValue];
      idCopy = v48;
      [digestFeedbackHistogram3 addLaunchWithBundleId:v48 date:v40 category:v24 weight:?];

      replyCopy = v43;
      v43[2](v43, 0);
      feedbackCopy = v45;
      locationCopy = v46;
    }

    else
    {
      v55 = *MEMORY[0x277CCA450];
      v56 = @"Invalid argument for location or feedback";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v41 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXNotificationDigestFeedbackInspector" code:-1 userInfo:v30];
      (replyCopy)[2](replyCopy, v41);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)clearHistogramWithShouldResetBookmarks:(BOOL)bookmarks reply:(id)reply
{
  replyCopy = reply;
  v7 = objc_opt_new();
  digestFeedbackHistogram = [v7 digestFeedbackHistogram];
  [digestFeedbackHistogram resetData];

  alltimeMarqueeAppearanceHistogram = [v7 alltimeMarqueeAppearanceHistogram];
  [alltimeMarqueeAppearanceHistogram resetData];

  replyCopy[2](replyCopy, 0);
}

- (id)_formatFeedbackDataForBundleId:(id)id feedback:(id)feedback
{
  v4 = MEMORY[0x277CCAAA0];
  v5 = [feedback feedbackDictionaryForBundleId:id];
  v6 = [v4 dataWithJSONObject:v5 options:3 error:0];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];

  return v7;
}

- (id)_histogramKeyForLocation:(id)location feedback:(id)feedback
{
  locationCopy = location;
  feedbackCopy = feedback;
  if ([locationCopy isEqualToString:@"notification"])
  {
    feedbackCopy = @"basic_notifications_sent";
  }

  else if ([locationCopy isEqualToString:@"tsnotification"])
  {
    feedbackCopy = @"urgent_notifications_sent";
  }

  else if ([&unk_283A57D58 containsObject:locationCopy] && objc_msgSend(&unk_283A57D70, "containsObject:", feedbackCopy))
  {
    feedbackCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", locationCopy, feedbackCopy];
  }

  else
  {
    feedbackCopy = 0;
  }

  return feedbackCopy;
}

@end