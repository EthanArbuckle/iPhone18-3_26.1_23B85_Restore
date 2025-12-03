@interface AMSPageRenderMetricsEvent
- (AMSPageRenderMetricsEvent)init;
@end

@implementation AMSPageRenderMetricsEvent

- (AMSPageRenderMetricsEvent)init
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] init", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = AMSPageRenderMetricsEvent;
  return [(AMSMetricsEvent *)&v8 initWithTopic:@"xp_ase_ams_perf"];
}

@end