@interface ASDTPMActionAnalyticsEvent
- (ASDTPMActionAnalyticsEvent)initWithConfig:(id)a3 forSequencer:(id)a4;
- (int)action;
- (void)sendEventNamed:(id)a3 withData:(id)a4;
@end

@implementation ASDTPMActionAnalyticsEvent

- (ASDTPMActionAnalyticsEvent)initWithConfig:(id)a3 forSequencer:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = ASDTPMActionAnalyticsEvent;
  v7 = [(ASDTPMAction *)&v17 initWithConfig:v6 forSequencer:a4];
  if (!v7)
  {
LABEL_5:
    v14 = v7;
    goto LABEL_9;
  }

  v8 = [v6 asdtPMActionAnalyticsEventName];
  [(ASDTPMActionAnalyticsEvent *)v7 setEventName:v8];

  v9 = [(ASDTPMActionAnalyticsEvent *)v7 eventName];

  if (v9)
  {
    v10 = [v6 asdtName];

    if (!v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [(ASDTPMActionAnalyticsEvent *)v7 eventName];
      v13 = [v11 stringWithFormat:@"AnalyticsEvent:%@", v12];
      [(ASDTPMAction *)v7 setName:v13];
    }

    goto LABEL_5;
  }

  v15 = ASDTBaseLogType();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(ASDTPMActionAnalyticsEvent *)v7 initWithConfig:v6 forSequencer:v15];
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)sendEventNamed:(id)a3 withData:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (int)action
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTPMActionAnalyticsEvent *)self eventData];
  if (v3)
  {
    v4 = ASDTBaseLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(ASDTPMDevice *)self name];
      v6 = [(ASDTPMActionAnalyticsEvent *)self eventName];
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_241659000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@: %@", &v10, 0x20u);
    }

    v7 = [(ASDTPMActionAnalyticsEvent *)self eventName];
    [(ASDTPMActionAnalyticsEvent *)self sendEventNamed:v7 withData:v3];
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)initWithConfig:(NSObject *)a3 forSequencer:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_241659000, a3, OS_LOG_TYPE_ERROR, "%@: Event name must be defined in config: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end