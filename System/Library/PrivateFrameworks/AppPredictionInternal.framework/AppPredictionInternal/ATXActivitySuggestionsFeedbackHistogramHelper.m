@interface ATXActivitySuggestionsFeedbackHistogramHelper
+ (id)histogramBundleIdForModeWithUUID:(id)a3 modeType:(int)a4 origin:(int)a5 originAnchorType:(id)a6;
- (ATXActivitySuggestionsFeedbackHistogramHelper)init;
- (ATXActivitySuggestionsFeedbackHistogramHelper)initWithFeedbackCategoricalHistogram:(id)a3;
- (void)updateFeedbackHistogramWithEvent:(id)a3;
@end

@implementation ATXActivitySuggestionsFeedbackHistogramHelper

- (ATXActivitySuggestionsFeedbackHistogramHelper)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:96];

  v5 = [(ATXActivitySuggestionsFeedbackHistogramHelper *)self initWithFeedbackCategoricalHistogram:v4];
  return v5;
}

- (ATXActivitySuggestionsFeedbackHistogramHelper)initWithFeedbackCategoricalHistogram:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXActivitySuggestionsFeedbackHistogramHelper;
  v6 = [(ATXActivitySuggestionsFeedbackHistogramHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackCategoricalHistogram, a3);
  }

  return v7;
}

- (void)updateFeedbackHistogramWithEvent:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 location]== 1)
  {
    v25 = self;
    v5 = objc_opt_class();
    v6 = [v4 activity];
    v7 = [v6 modeUUID];
    v8 = [v4 activity];
    [v8 activityType];
    v9 = ATXActivityTypeToBMUserFocusInferredModeType();
    v10 = [v4 activity];
    [v10 origin];
    v11 = BMUserFocusInferredModeOriginFromLegacy();
    v12 = [v4 activity];
    v13 = [v12 originAnchorType];
    v14 = [v5 histogramBundleIdForModeWithUUID:v7 modeType:v9 origin:v11 originAnchorType:v13];

    v15 = [v4 eventType];
    switch(v15)
    {
      case 3:
        feedbackCategoricalHistogram = v25->_feedbackCategoricalHistogram;
        v23 = [v4 eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)feedbackCategoricalHistogram addLaunchWithBundleId:v14 date:v23 category:@"rejected"];

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
        v20 = v25->_feedbackCategoricalHistogram;
        v21 = [v4 eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)v20 addLaunchWithBundleId:v14 date:v21 category:@"accepted"];

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
        v16 = v25->_feedbackCategoricalHistogram;
        v17 = [v4 eventDate];
        [(_ATXAppLaunchCategoricalHistogram *)v16 addLaunchWithBundleId:v14 date:v17 category:@"suggested"];

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
      v29 = v4;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: skipping feedback event since it does not pertain to lock screen: %@", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)histogramBundleIdForModeWithUUID:(id)a3 modeType:(int)a4 origin:(int)a5 originAnchorType:(id)a6
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a6;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = BMUserFocusInferredModeTypeToLegacy();
  v12 = [v10 initWithFormat:@"%@:%lu:%lu:%@", v9, v11, BMUserFocusInferredModeOriginToLegacy(), v8];

  return v12;
}

@end