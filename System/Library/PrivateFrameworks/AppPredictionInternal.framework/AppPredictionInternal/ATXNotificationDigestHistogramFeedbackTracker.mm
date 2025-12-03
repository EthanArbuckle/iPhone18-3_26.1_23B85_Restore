@interface ATXNotificationDigestHistogramFeedbackTracker
- (ATXNotificationDigestHistogramFeedbackTracker)init;
- (ATXNotificationDigestHistogramFeedbackTracker)initWithDigestFeedbackHistogram:(id)histogram alltimeMarqueeAppearanceHistogram:(id)appearanceHistogram;
- (id)feedbackDictionaryForBundleId:(id)id;
- (void)logBasicNotificationsSentForBundleId:(id)id numNotifications:(unint64_t)notifications;
- (void)logMarqueeAppearanceForBundleId:(id)id;
- (void)logMarqueeEngagementForBundleId:(id)id;
- (void)logNonMarqueeAppearanceForBundleId:(id)id;
- (void)logNonMarqueeEngagementForBundleId:(id)id;
- (void)logTimeSensitiveNotificationsSentForBundleId:(id)id numNotifications:(unint64_t)notifications;
@end

@implementation ATXNotificationDigestHistogramFeedbackTracker

- (ATXNotificationDigestHistogramFeedbackTracker)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:97];

  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = [v5 categoricalHistogramForLaunchType:98];

  v7 = [(ATXNotificationDigestHistogramFeedbackTracker *)self initWithDigestFeedbackHistogram:v4 alltimeMarqueeAppearanceHistogram:v6];
  return v7;
}

- (ATXNotificationDigestHistogramFeedbackTracker)initWithDigestFeedbackHistogram:(id)histogram alltimeMarqueeAppearanceHistogram:(id)appearanceHistogram
{
  histogramCopy = histogram;
  appearanceHistogramCopy = appearanceHistogram;
  v12.receiver = self;
  v12.super_class = ATXNotificationDigestHistogramFeedbackTracker;
  v9 = [(ATXNotificationDigestHistogramFeedbackTracker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_digestFeedbackHistogram, histogram);
    objc_storeStrong(&v10->_alltimeMarqueeAppearanceHistogram, appearanceHistogram);
  }

  return v10;
}

- (void)logMarqueeAppearanceForBundleId:(id)id
{
  digestFeedbackHistogram = self->_digestFeedbackHistogram;
  v5 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v7 = [v5 now];
  [(_ATXAppLaunchCategoricalHistogram *)digestFeedbackHistogram addLaunchWithBundleId:idCopy date:v7 category:@"marquee_appearance"];

  alltimeMarqueeAppearanceHistogram = self->_alltimeMarqueeAppearanceHistogram;
  v9 = [MEMORY[0x277CBEAA8] now];
  [(_ATXAppLaunchCategoricalHistogram *)alltimeMarqueeAppearanceHistogram addLaunchWithBundleId:idCopy date:v9 category:@"marquee_alltimeAppearance"];
}

- (void)logMarqueeEngagementForBundleId:(id)id
{
  digestFeedbackHistogram = self->_digestFeedbackHistogram;
  v4 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v6 = [v4 now];
  [(_ATXAppLaunchCategoricalHistogram *)digestFeedbackHistogram addLaunchWithBundleId:idCopy date:v6 category:@"marquee_engagement"];
}

- (void)logNonMarqueeAppearanceForBundleId:(id)id
{
  digestFeedbackHistogram = self->_digestFeedbackHistogram;
  v4 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v6 = [v4 now];
  [(_ATXAppLaunchCategoricalHistogram *)digestFeedbackHistogram addLaunchWithBundleId:idCopy date:v6 category:@"nonmarquee_appearance"];
}

- (void)logNonMarqueeEngagementForBundleId:(id)id
{
  digestFeedbackHistogram = self->_digestFeedbackHistogram;
  v4 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v6 = [v4 now];
  [(_ATXAppLaunchCategoricalHistogram *)digestFeedbackHistogram addLaunchWithBundleId:idCopy date:v6 category:@"nonmarquee_engagement"];
}

- (void)logBasicNotificationsSentForBundleId:(id)id numNotifications:(unint64_t)notifications
{
  digestFeedbackHistogram = self->_digestFeedbackHistogram;
  v6 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v9 = [v6 now];
  *&v8 = notifications;
  [(_ATXAppLaunchCategoricalHistogram *)digestFeedbackHistogram addLaunchWithBundleId:idCopy date:v9 category:@"basic_notifications_sent" weight:v8];
}

- (void)logTimeSensitiveNotificationsSentForBundleId:(id)id numNotifications:(unint64_t)notifications
{
  digestFeedbackHistogram = self->_digestFeedbackHistogram;
  v6 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v9 = [v6 now];
  *&v8 = notifications;
  [(_ATXAppLaunchCategoricalHistogram *)digestFeedbackHistogram addLaunchWithBundleId:idCopy date:v9 category:@"urgent_notifications_sent" weight:v8];
}

- (id)feedbackDictionaryForBundleId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22[0] = @"marquee_engagement";
  v22[1] = @"marquee_appearance";
  v22[2] = @"nonmarquee_engagement";
  v22[3] = @"nonmarquee_appearance";
  v22[4] = @"basic_notifications_sent";
  v22[5] = @"urgent_notifications_sent";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{6, 0}];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = MEMORY[0x277CCABB0];
        [(_ATXAppLaunchCategoricalHistogram *)self->_digestFeedbackHistogram totalLaunchesForBundleId:idCopy category:v11];
        v13 = [v12 numberWithDouble:?];
        [v5 setObject:v13 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = MEMORY[0x277CCABB0];
  [(_ATXAppLaunchCategoricalHistogram *)self->_alltimeMarqueeAppearanceHistogram totalLaunchesForBundleId:idCopy category:@"marquee_alltimeAppearance"];
  v15 = [v14 numberWithDouble:?];
  [v5 setObject:v15 forKeyedSubscript:@"marquee_alltimeAppearance"];

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

@end