@interface ATXHomeScreenWidgetFeedback
- (ATXHomeScreenWidgetFeedback)init;
- (ATXHomeScreenWidgetFeedback)initWithWidgetFeedbackHistogram:(id)a3;
- (double)eventCountForWidgetBundleId:(id)a3 type:(unint64_t)a4;
- (double)pseudoTapEngagementRateForWidgetBundleId:(id)a3;
- (double)tapEngagementRateForWidgetBundleId:(id)a3;
- (id)categoryStringForFeedbackType:(unint64_t)a3;
- (void)addEventForWidgetBundleId:(id)a3 type:(unint64_t)a4 weight:(float)a5;
@end

@implementation ATXHomeScreenWidgetFeedback

- (ATXHomeScreenWidgetFeedback)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:62];
  v5 = [(ATXHomeScreenWidgetFeedback *)self initWithWidgetFeedbackHistogram:v4];

  return v5;
}

- (ATXHomeScreenWidgetFeedback)initWithWidgetFeedbackHistogram:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHomeScreenWidgetFeedback;
  v6 = [(ATXHomeScreenWidgetFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_histogram, a3);
  }

  return v7;
}

- (id)categoryStringForFeedbackType:(unint64_t)a3
{
  result = @"TimesTapped";
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        return @"TimesDismissed";
      }

      else if (a3 == 8)
      {
        v9 = __atxlog_handle_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [ATXHomeScreenWidgetFeedback categoryStringForFeedbackType:v9];
        }

        return 0;
      }
    }

    else
    {
      v8 = @"TimesSystemUpdate";
      if (a3 != 6)
      {
        v8 = @"TimesTapped";
      }

      if (a3 == 5)
      {
        return @"TimesSystemFallBack";
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    v4 = @"UserInitiatedRotations";
    v5 = @"TimesSuggestedBySystem";
    if (a3 != 4)
    {
      v5 = @"TimesTapped";
    }

    if (a3 != 3)
    {
      v4 = v5;
    }

    v6 = @"TimesPseudoTapped";
    v7 = @"TimesDisplayed";
    if (a3 != 2)
    {
      v7 = @"TimesTapped";
    }

    if (a3 != 1)
    {
      v6 = v7;
    }

    if (a3 <= 2)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

- (void)addEventForWidgetBundleId:(id)a3 type:(unint64_t)a4 weight:(float)a5
{
  histogram = self->_histogram;
  v9 = MEMORY[0x277CBEAA8];
  v10 = a3;
  v13 = [v9 now];
  v11 = [(ATXHomeScreenWidgetFeedback *)self categoryStringForFeedbackType:a4];
  *&v12 = a5;
  [(_ATXAppLaunchCategoricalHistogram *)histogram addLaunchWithBundleId:v10 date:v13 category:v11 weight:v12];
}

- (double)eventCountForWidgetBundleId:(id)a3 type:(unint64_t)a4
{
  histogram = self->_histogram;
  v7 = a3;
  v8 = [(ATXHomeScreenWidgetFeedback *)self categoryStringForFeedbackType:a4];
  [(_ATXAppLaunchCategoricalHistogram *)histogram totalLaunchesForBundleId:v7 category:v8];
  v10 = v9;

  return v10;
}

- (double)tapEngagementRateForWidgetBundleId:(id)a3
{
  v4 = a3;
  [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:v4 type:2];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
    [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:v4 type:0];
    v6 = v8 / v7;
  }

  return v6;
}

- (double)pseudoTapEngagementRateForWidgetBundleId:(id)a3
{
  v4 = a3;
  [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:v4 type:2];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
    [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:v4 type:1];
    v6 = v8 / v7;
  }

  return v6;
}

@end