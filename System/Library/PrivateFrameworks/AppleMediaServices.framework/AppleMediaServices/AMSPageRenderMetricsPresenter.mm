@interface AMSPageRenderMetricsPresenter
- (AMSPageRenderMetricsPresenter)initWithBag:(id)a3 metrics:(id)a4;
- (NSDictionary)dictionaryForPosting;
- (void)endWithActivity:(int64_t)a3 pageMetrics:(id)a4;
- (void)enqueueEvent;
- (void)importTimings:(id)a3;
- (void)startWithActivity:(int64_t)a3;
- (void)viewDidAppear;
- (void)viewDidLoad;
@end

@implementation AMSPageRenderMetricsPresenter

- (AMSPageRenderMetricsPresenter)initWithBag:(id)a3 metrics:(id)a4
{
  v6 = a3;
  [(AMSPageRenderMetricsPresenter *)self setMetrics:a4];
  v7 = objc_alloc_init(AMSPageRenderMetricsEvent);
  [(AMSPageRenderMetricsPresenter *)self setPageRenderEvent:v7];

  [(AMSPageRenderMetricsPresenter *)self setBag:v6];
  return self;
}

- (NSDictionary)dictionaryForPosting
{
  v2 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  v3 = [v2 dictionaryForPosting];

  return v3;
}

- (void)enqueueEvent
{
  v3 = [(AMSPageRenderMetricsPresenter *)self bag];
  v4 = [v3 BOOLForKey:@"page-render-metrics-enabled"];
  v5 = [v4 valueWithError:0];
  v6 = [v5 BOOLValue];

  if (v6)
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

- (void)endWithActivity:(int64_t)a3 pageMetrics:(id)a4
{
  v17 = a4;
  if (a3 == 1)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [AMSMetrics serverTimeFromDate:v6];
    v8 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [v8 setResourceRequestEndTime:v7];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [AMSMetrics serverTimeFromDate:v6];
    v8 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [v8 setPageEndTime:v7];
  }

LABEL_6:
  v9 = [v17 objectForKeyedSubscript:@"eventType"];
  v10 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [v10 setEventType:v9];

  v11 = [v17 objectForKeyedSubscript:@"pageType"];
  v12 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [v12 setPageType:v11];

  v13 = [v17 objectForKeyedSubscript:@"pageUrl"];
  v14 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [v14 setPageUrl:v13];

  v15 = [v17 objectForKeyedSubscript:@"placement"];
  v16 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [v16 setPageId:v15];
}

- (void)importTimings:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Importing PageRender timings from JS: %@", buf, 0x20u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v4;
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
        v15 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
        v16 = [v9 objectForKeyedSubscript:v14];
        [v15 setProperty:v16 forBodyKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)startWithActivity:(int64_t)a3
{
  if (a3 == 1)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v4 = [AMSMetrics serverTimeFromDate:?];
    v5 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [v5 setResourceRequestStartTime:v4];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v6 = [MEMORY[0x1E695DF00] date];
    v4 = [AMSMetrics serverTimeFromDate:?];
    v5 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
    [v5 setPageRequestTime:v4];
  }
}

- (void)viewDidAppear
{
  v5 = [MEMORY[0x1E695DF00] date];
  v3 = [AMSMetrics serverTimeFromDate:v5];
  v4 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [v4 setPageUserInteractiveTime:v3];
}

- (void)viewDidLoad
{
  v5 = [MEMORY[0x1E695DF00] date];
  v3 = [AMSMetrics serverTimeFromDate:v5];
  v4 = [(AMSPageRenderMetricsPresenter *)self pageRenderEvent];
  [v4 setPageAppearTime:v3];
}

@end