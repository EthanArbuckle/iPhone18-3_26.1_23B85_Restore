@interface AMSPaymentSheetPerformanceMetrics
- (AMSPaymentSheetPerformanceMetrics)initWithBag:(id)a3;
- (void)enqueueMetricsEventWithOverlay:(id)a3;
@end

@implementation AMSPaymentSheetPerformanceMetrics

- (AMSPaymentSheetPerformanceMetrics)initWithBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSPaymentSheetPerformanceMetrics;
  v6 = [(AMSPaymentSheetPerformanceMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
  }

  return v7;
}

- (void)enqueueMetricsEventWithOverlay:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[AMSMetricsEvent alloc] initWithTopic:&stru_1F071BA78];
  [(AMSMetricsEvent *)v5 setEventType:@"pageRender"];
  [(AMSMetricsEvent *)v5 setEventVersion:&unk_1F0779880];
  [(AMSMetricsEvent *)v5 setCheckDiagnosticsAndUsageSetting:1];
  [(AMSMetricsEvent *)v5 setProperty:@"paymentDialog" forBodyKey:@"pageId"];
  [(AMSMetricsEvent *)v5 setProperty:@"paymentDialog" forBodyKey:@"pageType"];
  [(AMSPaymentSheetPerformanceMetrics *)self pageRequestTime];
  *v7.i64 = *v6.i64 + trunc(*v6.i64 * 0.25) * -4.0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v43 = *vbslq_s8(vnegq_f64(v8), v7, v6).i64;
  [(AMSPaymentSheetPerformanceMetrics *)self modelConstructionStartTime];
  v10 = [AMSMetrics serverTimeFromTimeInterval:v43 + v9];
  [(AMSMetricsEvent *)v5 setProperty:v10 forBodyKey:@"modelConstructionStartTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self modelConstructionEndTime];
  v12 = [AMSMetrics serverTimeFromTimeInterval:v43 + v11];
  [(AMSMetricsEvent *)v5 setProperty:v12 forBodyKey:@"modelConstructionEndTime"];

  v13 = [(AMSPaymentSheetPerformanceMetrics *)self primaryDataAppleTimingApp];
  [(AMSMetricsEvent *)v5 setProperty:v13 forBodyKey:@"primaryDataAppleTimingApp"];

  [(AMSPaymentSheetPerformanceMetrics *)self primaryDataResponseStartTime];
  v15 = [AMSMetrics serverTimeFromTimeInterval:v43 + v14];
  [(AMSMetricsEvent *)v5 setProperty:v15 forBodyKey:@"primaryDataParseStartTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self primaryDataResponseEndTime];
  v17 = [AMSMetrics serverTimeFromTimeInterval:v43 + v16];
  [(AMSMetricsEvent *)v5 setProperty:v17 forBodyKey:@"primaryDataParseEndTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self resourceRequestStartTime];
  v19 = [AMSMetrics serverTimeFromTimeInterval:v43 + v18];
  [(AMSMetricsEvent *)v5 setProperty:v19 forBodyKey:@"resourceRequestStartTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self resourceRequestEndTime];
  v21 = [AMSMetrics serverTimeFromTimeInterval:v43 + v20];
  [(AMSMetricsEvent *)v5 setProperty:v21 forBodyKey:@"resourceRequestEndTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self primaryDataResponseStartTime];
  v23 = [AMSMetrics serverTimeFromTimeInterval:v43 + v22];
  [(AMSMetricsEvent *)v5 setProperty:v23 forBodyKey:@"primaryDataResponseStartTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self primaryDataResponseEndTime];
  v25 = [AMSMetrics serverTimeFromTimeInterval:v43 + v24];
  [(AMSMetricsEvent *)v5 setProperty:v25 forBodyKey:@"primaryDataResponseEndTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self pageRequestTime];
  v27 = [AMSMetrics serverTimeFromTimeInterval:v43 + v26];
  [(AMSMetricsEvent *)v5 setProperty:v27 forBodyKey:@"pageRequestTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self pageEndTime];
  v29 = [AMSMetrics serverTimeFromTimeInterval:v43 + v28];
  [(AMSMetricsEvent *)v5 setProperty:v29 forBodyKey:@"pageEndTime"];

  [(AMSPaymentSheetPerformanceMetrics *)self pageEndTime];
  v31 = [AMSMetrics serverTimeFromTimeInterval:v43 + v30];
  [(AMSMetricsEvent *)v5 setProperty:v31 forBodyKey:@"onScreenResourcesAppearEndTime"];

  [(AMSMetricsEvent *)v5 addPropertiesWithDictionary:v4];
  v32 = [(AMSMetricsEvent *)v5 topic];
  v33 = [v32 length];

  if (v33)
  {
    v34 = [(AMSPaymentSheetPerformanceMetrics *)self bag];
    v35 = [v34 doubleForKey:@"metrics/performance/samplingPercentageUsersDialogPageRender"];

    v36 = [(AMSPaymentSheetPerformanceMetrics *)self bag];
    v37 = [v36 doubleForKey:@"metrics/performance/sessionDurationDialogPageRender"];

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __68__AMSPaymentSheetPerformanceMetrics_enqueueMetricsEventWithOverlay___block_invoke;
    v44[3] = &unk_1E73B5650;
    v44[4] = self;
    v45 = v5;
    [AMSDefaults shouldSampleWithPercentageValue:v35 sessionDurationValue:v37 identifier:@"paymentDialogRender" completion:v44];
  }

  else
  {
    v35 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v35)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    v37 = [v35 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = AMSLogKey();
      v39 = MEMORY[0x1E696AEC0];
      v40 = objc_opt_class();
      v41 = v40;
      if (v38)
      {
        self = AMSLogKey();
        [v39 stringWithFormat:@"%@: [%@] ", v41, self];
      }

      else
      {
        [v39 stringWithFormat:@"%@: ", v40];
      }
      v42 = ;
      *buf = 138543362;
      v47 = v42;
      _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Not logging Payment Sheet Performance Metrics, no topic provided.", buf, 0xCu);
      if (v38)
      {

        v42 = self;
      }
    }
  }
}

void __68__AMSPaymentSheetPerformanceMetrics_enqueueMetricsEventWithOverlay___block_invoke(uint64_t a1, int a2)
{
  v2 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v11 = [*(a1 + 32) bag];
    v3 = [AMSMetrics internalInstanceUsingBag:?];
    [v3 enqueueEvent:*(v2 + 40)];
  }

  else
  {
    v4 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = v8;
      if (v6)
      {
        v2 = AMSLogKey();
        [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v8];
      }
      v10 = ;
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Not Logging Payment Sheet Performance Metrics due to sampling.", buf, 0xCu);
      if (v6)
      {

        v10 = v2;
      }
    }
  }
}

@end