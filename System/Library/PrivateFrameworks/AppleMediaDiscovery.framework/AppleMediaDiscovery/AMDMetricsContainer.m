@interface AMDMetricsContainer
- (AMDMetricsContainer)initWithLevel:(char)a3 andAction:(id)a4 andVersion:(id)a5 andBuild:(id)a6 andStorefrontId:(id)a7 withLoggingProbability:(id)a8;
@end

@implementation AMDMetricsContainer

- (AMDMetricsContainer)initWithLevel:(char)a3 andAction:(id)a4 andVersion:(id)a5 andBuild:(id)a6 andStorefrontId:(id)a7 withLoggingProbability:(id)a8
{
  v50 = self;
  v49 = a2;
  v48 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v46 = 0;
  objc_storeStrong(&v46, a5);
  v45 = 0;
  objc_storeStrong(&v45, a6);
  v44 = 0;
  objc_storeStrong(&v44, a7);
  v43 = 0;
  objc_storeStrong(&v43, a8);
  v8 = v50;
  v50 = 0;
  v42.receiver = v8;
  v42.super_class = AMDMetricsContainer;
  v50 = [(AMDMetricsContainer *)&v42 init];
  objc_storeStrong(&v50, v50);
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AMDMetricsContainer *)v50 setLogData:?];
  MEMORY[0x277D82BD8](v40);
  v41 = [(AMDMetricsContainer *)v50 logData];
  if (location)
  {
    v35 = location;
  }

  else
  {
    v35 = @"unknown";
  }

  [(NSMutableDictionary *)v41 setObject:v35 forKey:@"eventType"];
  MEMORY[0x277D82BD8](v41);
  v34 = [(AMDMetricsContainer *)v50 logData];
  if (v45)
  {
    v33 = v45;
  }

  else
  {
    v33 = @"unknown";
  }

  [(NSMutableDictionary *)v34 setObject:v33 forKey:@"osBuildNumber"];
  MEMORY[0x277D82BD8](v34);
  v26 = [objc_alloc(MEMORY[0x277CEE5A8]) initWithTopic:@"xp_amp_odp_log"];
  [(AMDMetricsContainer *)v50 setMetricEvent:?];
  MEMORY[0x277D82BD8](v26);
  v27 = [(AMDMetricsContainer *)v50 metricEvent];
  [(AMSMetricsEvent *)v27 setAnonymous:1];
  MEMORY[0x277D82BD8](v27);
  v31 = [(AMDMetricsContainer *)v50 metricEvent];
  v28 = MEMORY[0x277CCABB0];
  v30 = [MEMORY[0x277CBEAA8] date];
  [v30 timeIntervalSince1970];
  v29 = [v28 numberWithDouble:v9 * 1000.0];
  [AMSMetricsEvent setProperty:v31 forBodyKey:"setProperty:forBodyKey:"];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v32 = [(AMDMetricsContainer *)v50 metricEvent];
  if (location)
  {
    v25 = location;
  }

  else
  {
    v25 = @"unknown";
  }

  [(AMSMetricsEvent *)v32 setProperty:v25 forBodyKey:@"eventType"];
  MEMORY[0x277D82BD8](v32);
  v24 = [(AMDMetricsContainer *)v50 metricEvent];
  if (v46)
  {
    v23 = v46;
  }

  else
  {
    v23 = &unk_2852BA968;
  }

  [(AMSMetricsEvent *)v24 setProperty:v23 forBodyKey:@"eventVersion"];
  MEMORY[0x277D82BD8](v24);
  v21 = [(AMDMetricsContainer *)v50 metricEvent];
  v20 = [(AMDMetricsContainer *)v50 logData];
  [AMSMetricsEvent setProperty:v21 forBodyKey:"setProperty:forBodyKey:"];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v22 = [(AMDMetricsContainer *)v50 metricEvent];
  if (v45)
  {
    v19 = v45;
  }

  else
  {
    v19 = @"unknown";
  }

  [(AMSMetricsEvent *)v22 setProperty:v19 forBodyKey:@"osBuildNumber"];
  MEMORY[0x277D82BD8](v22);
  v18 = [(AMDMetricsContainer *)v50 metricEvent];
  if (v44)
  {
    v17 = v44;
  }

  else
  {
    v17 = &unk_2852BA980;
  }

  [(AMSMetricsEvent *)v18 setProperty:v17 forBodyKey:@"storeFrontHeader"];
  MEMORY[0x277D82BD8](v18);
  v16 = [(AMDMetricsContainer *)v50 metricEvent];
  v13 = MEMORY[0x277CCABB0];
  v15 = [MEMORY[0x277CBEBB0] localTimeZone];
  v14 = [v13 numberWithInteger:{objc_msgSend(v15, "secondsFromGMT") / 3600}];
  [AMSMetricsEvent setProperty:v16 forBodyKey:"setProperty:forBodyKey:"];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  [(AMDMetricsContainer *)v50 setVerbosity:v48];
  if (v43)
  {
    v12 = v43;
  }

  else
  {
    v12 = &unk_2852BC670;
  }

  [(AMDMetricsContainer *)v50 setLoggingProbability:v12];
  v11 = MEMORY[0x277D82BE0](v50);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v50, 0);
  return v11;
}

@end