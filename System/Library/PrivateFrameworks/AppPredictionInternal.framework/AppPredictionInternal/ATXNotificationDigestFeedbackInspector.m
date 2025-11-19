@interface ATXNotificationDigestFeedbackInspector
- (id)_formatFeedbackDataForBundleId:(id)a3 feedback:(id)a4;
- (id)_histogramKeyForLocation:(id)a3 feedback:(id)a4;
- (void)addToHistogramForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 withReply:(id)a6;
- (void)clearHistogramWithShouldResetBookmarks:(BOOL)a3 reply:(id)a4;
- (void)setHistogramValueForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 value:(id)a6 withReply:(id)a7;
- (void)showHistogramForBundleId:(id)a3 withReply:(id)a4;
@end

@implementation ATXNotificationDigestFeedbackInspector

- (void)showHistogramForBundleId:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_opt_new();
  v8 = [(ATXNotificationDigestFeedbackInspector *)self _formatFeedbackDataForBundleId:v7 feedback:v9];

  v6[2](v6, v8, 0);
}

- (void)addToHistogramForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 withReply:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  if ([v12 isEqualToString:@"alltimeAppearance"])
  {
    v15 = [v14 alltimeMarqueeAppearanceHistogram];
    v16 = [MEMORY[0x277CBEAA8] now];
    [v15 addLaunchWithBundleId:v10 date:v16 category:@"marquee_alltimeAppearance"];

    v13[2](v13, 0);
  }

  else
  {
    v17 = [(ATXNotificationDigestFeedbackInspector *)self _histogramKeyForLocation:v11 feedback:v12];
    if (v17)
    {
      v18 = [v14 digestFeedbackHistogram];
      v19 = [MEMORY[0x277CBEAA8] now];
      [v18 addLaunchWithBundleId:v10 date:v19 category:v17];

      v13[2](v13, 0);
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"Invalid argument for location or feedback";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXNotificationDigestFeedbackInspector" code:-1 userInfo:v20];
      (v13)[2](v13, v21);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setHistogramValueForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 value:(id)a6 withReply:(id)a7
{
  v57[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_opt_new();
  if ([v14 isEqualToString:@"alltimeAppearance"])
  {
    v18 = [v17 alltimeMarqueeAppearanceHistogram];
    v19 = MEMORY[0x277CBEB98];
    v57[0] = v12;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    v21 = [v19 setWithArray:v20];
    [v18 removeBundleIds:v21];

    v22 = [v17 alltimeMarqueeAppearanceHistogram];
    v23 = [MEMORY[0x277CBEAA8] now];
    [v15 floatValue];
    [v22 addLaunchWithBundleId:v12 date:v23 category:@"marquee_alltimeAppearance" weight:?];

    v16[2](v16, 0);
  }

  else
  {
    v24 = [(ATXNotificationDigestFeedbackInspector *)self _histogramKeyForLocation:v13 feedback:v14];
    if (v24)
    {
      v43 = v16;
      v44 = v15;
      v45 = v14;
      v46 = v13;
      v25 = [v17 feedbackDictionaryForBundleId:v12];
      v47 = v17;
      v26 = [v17 digestFeedbackHistogram];
      v27 = MEMORY[0x277CBEB98];
      v48 = v12;
      v54 = v12;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v29 = [v27 setWithArray:v28];
      [v26 removeBundleIds:v29];

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
              v36 = [v47 digestFeedbackHistogram];
              v37 = [MEMORY[0x277CBEAA8] now];
              v38 = [v30 objectForKeyedSubscript:v35];
              [v38 floatValue];
              [v36 addLaunchWithBundleId:v48 date:v37 category:v35 weight:?];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v32);
      }

      v17 = v47;
      v39 = [v47 digestFeedbackHistogram];
      v40 = [MEMORY[0x277CBEAA8] now];
      v15 = v44;
      [v44 floatValue];
      v12 = v48;
      [v39 addLaunchWithBundleId:v48 date:v40 category:v24 weight:?];

      v16 = v43;
      v43[2](v43, 0);
      v14 = v45;
      v13 = v46;
    }

    else
    {
      v55 = *MEMORY[0x277CCA450];
      v56 = @"Invalid argument for location or feedback";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v41 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXNotificationDigestFeedbackInspector" code:-1 userInfo:v30];
      (v16)[2](v16, v41);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)clearHistogramWithShouldResetBookmarks:(BOOL)a3 reply:(id)a4
{
  v4 = a4;
  v7 = objc_opt_new();
  v5 = [v7 digestFeedbackHistogram];
  [v5 resetData];

  v6 = [v7 alltimeMarqueeAppearanceHistogram];
  [v6 resetData];

  v4[2](v4, 0);
}

- (id)_formatFeedbackDataForBundleId:(id)a3 feedback:(id)a4
{
  v4 = MEMORY[0x277CCAAA0];
  v5 = [a4 feedbackDictionaryForBundleId:a3];
  v6 = [v4 dataWithJSONObject:v5 options:3 error:0];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];

  return v7;
}

- (id)_histogramKeyForLocation:(id)a3 feedback:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"notification"])
  {
    v7 = @"basic_notifications_sent";
  }

  else if ([v5 isEqualToString:@"tsnotification"])
  {
    v7 = @"urgent_notifications_sent";
  }

  else if ([&unk_283A57D58 containsObject:v5] && objc_msgSend(&unk_283A57D70, "containsObject:", v6))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end