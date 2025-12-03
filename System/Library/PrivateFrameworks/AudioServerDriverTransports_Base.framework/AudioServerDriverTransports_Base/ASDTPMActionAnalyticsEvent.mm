@interface ASDTPMActionAnalyticsEvent
- (ASDTPMActionAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer;
- (int)action;
- (void)sendEventNamed:(id)named withData:(id)data;
@end

@implementation ASDTPMActionAnalyticsEvent

- (ASDTPMActionAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v17.receiver = self;
  v17.super_class = ASDTPMActionAnalyticsEvent;
  v7 = [(ASDTPMAction *)&v17 initWithConfig:configCopy forSequencer:sequencer];
  if (!v7)
  {
LABEL_5:
    v14 = v7;
    goto LABEL_9;
  }

  asdtPMActionAnalyticsEventName = [configCopy asdtPMActionAnalyticsEventName];
  [(ASDTPMActionAnalyticsEvent *)v7 setEventName:asdtPMActionAnalyticsEventName];

  eventName = [(ASDTPMActionAnalyticsEvent *)v7 eventName];

  if (eventName)
  {
    asdtName = [configCopy asdtName];

    if (!asdtName)
    {
      v11 = MEMORY[0x277CCACA8];
      eventName2 = [(ASDTPMActionAnalyticsEvent *)v7 eventName];
      v13 = [v11 stringWithFormat:@"AnalyticsEvent:%@", eventName2];
      [(ASDTPMAction *)v7 setName:v13];
    }

    goto LABEL_5;
  }

  v15 = ASDTBaseLogType();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(ASDTPMActionAnalyticsEvent *)v7 initWithConfig:configCopy forSequencer:v15];
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)sendEventNamed:(id)named withData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  AnalyticsSendEventLazy();
}

- (int)action
{
  v16 = *MEMORY[0x277D85DE8];
  eventData = [(ASDTPMActionAnalyticsEvent *)self eventData];
  if (eventData)
  {
    v4 = ASDTBaseLogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTPMDevice *)self name];
      eventName = [(ASDTPMActionAnalyticsEvent *)self eventName];
      v10 = 138412802;
      v11 = name;
      v12 = 2112;
      v13 = eventName;
      v14 = 2112;
      v15 = eventData;
      _os_log_impl(&dword_241659000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@: %@", &v10, 0x20u);
    }

    eventName2 = [(ASDTPMActionAnalyticsEvent *)self eventName];
    [(ASDTPMActionAnalyticsEvent *)self sendEventNamed:eventName2 withData:eventData];
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