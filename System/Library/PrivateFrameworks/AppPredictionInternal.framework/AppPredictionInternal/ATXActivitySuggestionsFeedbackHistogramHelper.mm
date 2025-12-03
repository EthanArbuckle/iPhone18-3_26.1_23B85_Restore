@interface ATXActivitySuggestionsFeedbackHistogramHelper
+ (id)histogramBundleIdForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType;
- (ATXActivitySuggestionsFeedbackHistogramHelper)init;
- (ATXActivitySuggestionsFeedbackHistogramHelper)initWithFeedbackCategoricalHistogram:(id)histogram;
- (void)updateFeedbackHistogramWithEvent:(id)event;
@end

@implementation ATXActivitySuggestionsFeedbackHistogramHelper

- (ATXActivitySuggestionsFeedbackHistogramHelper)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:96];

  v5 = [(ATXActivitySuggestionsFeedbackHistogramHelper *)self initWithFeedbackCategoricalHistogram:v4];
  return v5;
}

- (ATXActivitySuggestionsFeedbackHistogramHelper)initWithFeedbackCategoricalHistogram:(id)histogram
{
  histogramCopy = histogram;
  v9.receiver = self;
  v9.super_class = ATXActivitySuggestionsFeedbackHistogramHelper;
  v6 = [(ATXActivitySuggestionsFeedbackHistogramHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackCategoricalHistogram, histogram);
  }

  return v7;
}

- (void)updateFeedbackHistogramWithEvent:(id)event
{
  v30 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy location]== 1)
  {
    selfCopy = self;
    v5 = objc_opt_class();
    activity = [eventCopy activity];
    modeUUID = [activity modeUUID];
    activity2 = [eventCopy activity];
    [activity2 activityType];
    v9 = ATXActivityTypeToBMUserFocusInferredModeType();
    activity3 = [eventCopy activity];
    [activity3 origin];
    v11 = BMUserFocusInferredModeOriginFromLegacy();
    activity4 = [eventCopy activity];
    originAnchorType = [activity4 originAnchorType];
    v14 = [v5 histogramBundleIdForModeWithUUID:modeUUID modeType:v9 origin:v11 originAnchorType:originAnchorType];

    eventType = [eventCopy eventType];
    switch(eventType)
    {
      case 3:
        feedbackCategoricalHistogram = selfCopy->_feedbackCategoricalHistogram;
        eventDate = [eventCopy eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)feedbackCategoricalHistogram addLaunchWithBundleId:v14 date:eventDate category:@"rejected"];

        v18 = __atxlog_handle_modes();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
          v28 = 2112;
          v29 = v14;
          v19 = "%s: adding rejected count to feedback event of id: %@";
          goto LABEL_13;
        }

        goto LABEL_14;
      case 2:
        v20 = selfCopy->_feedbackCategoricalHistogram;
        eventDate2 = [eventCopy eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)v20 addLaunchWithBundleId:v14 date:eventDate2 category:@"accepted"];

        v18 = __atxlog_handle_modes();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
          v28 = 2112;
          v29 = v14;
          v19 = "%s: adding accepted count to feedback event of id: %@";
          goto LABEL_13;
        }

LABEL_14:

        break;
      case 0:
        v16 = selfCopy->_feedbackCategoricalHistogram;
        eventDate3 = [eventCopy eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)v16 addLaunchWithBundleId:v14 date:eventDate3 category:@"suggested"];

        v18 = __atxlog_handle_modes();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
          v28 = 2112;
          v29 = v14;
          v19 = "%s: adding suggested count to feedback event of id: %@";
LABEL_13:
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
          goto LABEL_14;
        }

        goto LABEL_14;
    }
  }

  else
  {
    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[ATXActivitySuggestionsFeedbackHistogramHelper updateFeedbackHistogramWithEvent:]";
      v28 = 2112;
      v29 = eventCopy;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: skipping feedback event since it does not pertain to lock screen: %@", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)histogramBundleIdForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originAnchorType:(id)anchorType
{
  v7 = MEMORY[0x277CCACA8];
  anchorTypeCopy = anchorType;
  dCopy = d;
  v10 = [v7 alloc];
  v11 = BMUserFocusInferredModeTypeToLegacy();
  anchorTypeCopy = [v10 initWithFormat:@"%@:%lu:%lu:%@", dCopy, v11, BMUserFocusInferredModeOriginToLegacy(), anchorTypeCopy];

  return anchorTypeCopy;
}

@end