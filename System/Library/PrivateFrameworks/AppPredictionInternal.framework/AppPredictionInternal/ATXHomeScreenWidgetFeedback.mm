@interface ATXHomeScreenWidgetFeedback
- (ATXHomeScreenWidgetFeedback)init;
- (ATXHomeScreenWidgetFeedback)initWithWidgetFeedbackHistogram:(id)histogram;
- (double)eventCountForWidgetBundleId:(id)id type:(unint64_t)type;
- (double)pseudoTapEngagementRateForWidgetBundleId:(id)id;
- (double)tapEngagementRateForWidgetBundleId:(id)id;
- (id)categoryStringForFeedbackType:(unint64_t)type;
- (void)addEventForWidgetBundleId:(id)id type:(unint64_t)type weight:(float)weight;
@end

@implementation ATXHomeScreenWidgetFeedback

- (ATXHomeScreenWidgetFeedback)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:62];
  v5 = [(ATXHomeScreenWidgetFeedback *)self initWithWidgetFeedbackHistogram:v4];

  return v5;
}

- (ATXHomeScreenWidgetFeedback)initWithWidgetFeedbackHistogram:(id)histogram
{
  histogramCopy = histogram;
  v9.receiver = self;
  v9.super_class = ATXHomeScreenWidgetFeedback;
  v6 = [(ATXHomeScreenWidgetFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_histogram, histogram);
  }

  return v7;
}

- (id)categoryStringForFeedbackType:(unint64_t)type
{
  result = @"TimesTapped";
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        return @"TimesDismissed";
      }

      else if (type == 8)
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
      if (type != 6)
      {
        v8 = @"TimesTapped";
      }

      if (type == 5)
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
    if (type != 4)
    {
      v5 = @"TimesTapped";
    }

    if (type != 3)
    {
      v4 = v5;
    }

    v6 = @"TimesPseudoTapped";
    v7 = @"TimesDisplayed";
    if (type != 2)
    {
      v7 = @"TimesTapped";
    }

    if (type != 1)
    {
      v6 = v7;
    }

    if (type <= 2)
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

- (void)addEventForWidgetBundleId:(id)id type:(unint64_t)type weight:(float)weight
{
  histogram = self->_histogram;
  v9 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v13 = [v9 now];
  v11 = [(ATXHomeScreenWidgetFeedback *)self categoryStringForFeedbackType:type];
  *&v12 = weight;
  [(_ATXAppLaunchCategoricalHistogram *)histogram addLaunchWithBundleId:idCopy date:v13 category:v11 weight:v12];
}

- (double)eventCountForWidgetBundleId:(id)id type:(unint64_t)type
{
  histogram = self->_histogram;
  idCopy = id;
  v8 = [(ATXHomeScreenWidgetFeedback *)self categoryStringForFeedbackType:type];
  [(_ATXAppLaunchCategoricalHistogram *)histogram totalLaunchesForBundleId:idCopy category:v8];
  v10 = v9;

  return v10;
}

- (double)tapEngagementRateForWidgetBundleId:(id)id
{
  idCopy = id;
  [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:idCopy type:2];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
    [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:idCopy type:0];
    v6 = v8 / v7;
  }

  return v6;
}

- (double)pseudoTapEngagementRateForWidgetBundleId:(id)id
{
  idCopy = id;
  [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:idCopy type:2];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
    [(ATXHomeScreenWidgetFeedback *)self eventCountForWidgetBundleId:idCopy type:1];
    v6 = v8 / v7;
  }

  return v6;
}

@end