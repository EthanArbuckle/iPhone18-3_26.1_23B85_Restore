@interface AMDMetricsContainer
- (AMDMetricsContainer)initWithLevel:(char)level andAction:(id)action andVersion:(id)version andBuild:(id)build andStorefrontId:(id)id withLoggingProbability:(id)probability;
@end

@implementation AMDMetricsContainer

- (AMDMetricsContainer)initWithLevel:(char)level andAction:(id)action andVersion:(id)version andBuild:(id)build andStorefrontId:(id)id withLoggingProbability:(id)probability
{
  selfCopy = self;
  v49 = a2;
  levelCopy = level;
  location = 0;
  objc_storeStrong(&location, action);
  v46 = 0;
  objc_storeStrong(&v46, version);
  v45 = 0;
  objc_storeStrong(&v45, build);
  v44 = 0;
  objc_storeStrong(&v44, id);
  v43 = 0;
  objc_storeStrong(&v43, probability);
  v8 = selfCopy;
  selfCopy = 0;
  v42.receiver = v8;
  v42.super_class = AMDMetricsContainer;
  selfCopy = [(AMDMetricsContainer *)&v42 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AMDMetricsContainer *)selfCopy setLogData:?];
  MEMORY[0x277D82BD8](v40);
  logData = [(AMDMetricsContainer *)selfCopy logData];
  if (location)
  {
    v35 = location;
  }

  else
  {
    v35 = @"unknown";
  }

  [(NSMutableDictionary *)logData setObject:v35 forKey:@"eventType"];
  MEMORY[0x277D82BD8](logData);
  logData2 = [(AMDMetricsContainer *)selfCopy logData];
  if (v45)
  {
    v33 = v45;
  }

  else
  {
    v33 = @"unknown";
  }

  [(NSMutableDictionary *)logData2 setObject:v33 forKey:@"osBuildNumber"];
  MEMORY[0x277D82BD8](logData2);
  v26 = [objc_alloc(MEMORY[0x277CEE5A8]) initWithTopic:@"xp_amp_odp_log"];
  [(AMDMetricsContainer *)selfCopy setMetricEvent:?];
  MEMORY[0x277D82BD8](v26);
  metricEvent = [(AMDMetricsContainer *)selfCopy metricEvent];
  [(AMSMetricsEvent *)metricEvent setAnonymous:1];
  MEMORY[0x277D82BD8](metricEvent);
  metricEvent2 = [(AMDMetricsContainer *)selfCopy metricEvent];
  v28 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v29 = [v28 numberWithDouble:v9 * 1000.0];
  [AMSMetricsEvent setProperty:metricEvent2 forBodyKey:"setProperty:forBodyKey:"];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](date);
  MEMORY[0x277D82BD8](metricEvent2);
  metricEvent3 = [(AMDMetricsContainer *)selfCopy metricEvent];
  if (location)
  {
    v25 = location;
  }

  else
  {
    v25 = @"unknown";
  }

  [(AMSMetricsEvent *)metricEvent3 setProperty:v25 forBodyKey:@"eventType"];
  MEMORY[0x277D82BD8](metricEvent3);
  metricEvent4 = [(AMDMetricsContainer *)selfCopy metricEvent];
  if (v46)
  {
    v23 = v46;
  }

  else
  {
    v23 = &unk_2852BA968;
  }

  [(AMSMetricsEvent *)metricEvent4 setProperty:v23 forBodyKey:@"eventVersion"];
  MEMORY[0x277D82BD8](metricEvent4);
  metricEvent5 = [(AMDMetricsContainer *)selfCopy metricEvent];
  logData3 = [(AMDMetricsContainer *)selfCopy logData];
  [AMSMetricsEvent setProperty:metricEvent5 forBodyKey:"setProperty:forBodyKey:"];
  MEMORY[0x277D82BD8](logData3);
  MEMORY[0x277D82BD8](metricEvent5);
  metricEvent6 = [(AMDMetricsContainer *)selfCopy metricEvent];
  if (v45)
  {
    v19 = v45;
  }

  else
  {
    v19 = @"unknown";
  }

  [(AMSMetricsEvent *)metricEvent6 setProperty:v19 forBodyKey:@"osBuildNumber"];
  MEMORY[0x277D82BD8](metricEvent6);
  metricEvent7 = [(AMDMetricsContainer *)selfCopy metricEvent];
  if (v44)
  {
    v17 = v44;
  }

  else
  {
    v17 = &unk_2852BA980;
  }

  [(AMSMetricsEvent *)metricEvent7 setProperty:v17 forBodyKey:@"storeFrontHeader"];
  MEMORY[0x277D82BD8](metricEvent7);
  metricEvent8 = [(AMDMetricsContainer *)selfCopy metricEvent];
  v13 = MEMORY[0x277CCABB0];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v14 = [v13 numberWithInteger:{objc_msgSend(localTimeZone, "secondsFromGMT") / 3600}];
  [AMSMetricsEvent setProperty:metricEvent8 forBodyKey:"setProperty:forBodyKey:"];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](localTimeZone);
  MEMORY[0x277D82BD8](metricEvent8);
  [(AMDMetricsContainer *)selfCopy setVerbosity:levelCopy];
  if (v43)
  {
    v12 = v43;
  }

  else
  {
    v12 = &unk_2852BC670;
  }

  [(AMDMetricsContainer *)selfCopy setLoggingProbability:v12];
  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

@end