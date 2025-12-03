@interface AMSPageRenderMetricsPresenter
- (AMSPageRenderMetricsPresenter)initWithBag:(id)bag metrics:(id)metrics;
- (NSDictionary)dictionaryForPosting;
- (void)endWithActivity:(int64_t)activity pageMetrics:(id)metrics;
- (void)enqueueEvent;
- (void)importTimings:(id)timings;
- (void)startWithActivity:(int64_t)activity;
- (void)viewDidAppear;
- (void)viewDidLoad;
@end

@implementation AMSPageRenderMetricsPresenter

- (AMSPageRenderMetricsPresenter)initWithBag:(id)bag metrics:(id)metrics
{
  bagCopy = bag;
  [(AMSPageRenderMetricsPresenter *)self setMetrics:metrics];
  v7 = objc_alloc_init(AMSPageRenderMetricsEvent);
  [(AMSPageRenderMetricsPresenter *)self setPageRenderEvent:v7];

  [(AMSPageRenderMetricsPresenter *)self setBag:bagCopy];
  return self;
}

- (NSDictionary)dictionaryForPosting
{
  pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  dictionaryForPosting = [pageRenderEvent dictionaryForPosting];

  return dictionaryForPosting;
}

- (void)enqueueEvent
{
  v3 = [(AMSPageRenderMetricsPresenter *)self bag];
  v4 = [v3 BOOLForKey:@"page-render-metrics-enabled"];
  v5 = [v4 valueWithError:0];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [(AMSPageRenderMetricsPresenter *)self bag];
    v8 = [AMSMetricsLoggingEvent shouldSampleErrorsWithBag:v7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__AMSPageRenderMetricsPresenter_enqueueEvent__block_invoke;
    v9[3] = &unk_1E73B3680;
    v9[4] = self;
    [v8 addSuccessBlock:v9];
  }
}

void __45__AMSPageRenderMetricsPresenter_enqueueEvent__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) metrics];
  v2 = [*(a1 + 32) pageRenderEvent];
  [v3 enqueueEvent:v2];
}

- (void)endWithActivity:(int64_t)activity pageMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (activity == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    v7 = [AMSMetrics serverTimeFromDate:date];
    pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [pageRenderEvent setResourceRequestEndTime:v7];
  }

  else
  {
    if (activity)
    {
      goto LABEL_6;
    }

    date = [MEMORY[0x1E695DF00] date];
    v7 = [AMSMetrics serverTimeFromDate:date];
    pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [pageRenderEvent setPageEndTime:v7];
  }

LABEL_6:
  v9 = [metricsCopy objectForKeyedSubscript:@"eventType"];
  pageRenderEvent2 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [pageRenderEvent2 setEventType:v9];

  v11 = [metricsCopy objectForKeyedSubscript:@"pageType"];
  pageRenderEvent3 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [pageRenderEvent3 setPageType:v11];

  v13 = [metricsCopy objectForKeyedSubscript:@"pageUrl"];
  pageRenderEvent4 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [pageRenderEvent4 setPageUrl:v13];

  v15 = [metricsCopy objectForKeyedSubscript:@"placement"];
  pageRenderEvent5 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [pageRenderEvent5 setPageId:v15];
}

- (void)importTimings:(id)timings
{
  v28 = *MEMORY[0x1E69E9840];
  timingsCopy = timings;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v26 = 2112;
    v27 = timingsCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Importing PageRender timings from JS: %@", buf, 0x20u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = timingsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
        v16 = [v9 objectForKeyedSubscript:v14];
        [pageRenderEvent setProperty:v16 forBodyKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)startWithActivity:(int64_t)activity
{
  if (activity == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = [AMSMetrics serverTimeFromDate:?];
    pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [pageRenderEvent setResourceRequestStartTime:v4];
  }

  else
  {
    if (activity)
    {
      return;
    }

    date = [MEMORY[0x1E695DF00] date];
    v4 = [AMSMetrics serverTimeFromDate:?];
    pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [pageRenderEvent setPageRequestTime:v4];
  }
}

- (void)viewDidAppear
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [AMSMetrics serverTimeFromDate:date];
  pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [pageRenderEvent setPageUserInteractiveTime:v3];
}

- (void)viewDidLoad
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [AMSMetrics serverTimeFromDate:date];
  pageRenderEvent = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [pageRenderEvent setPageAppearTime:v3];
}

@end