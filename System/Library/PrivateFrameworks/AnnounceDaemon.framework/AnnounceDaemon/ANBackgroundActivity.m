@interface ANBackgroundActivity
- (ANBackgroundActivity)init;
- (BOOL)shouldDefer;
- (void)scheduleWithBlock:(id)a3;
@end

@implementation ANBackgroundActivity

- (ANBackgroundActivity)init
{
  v6.receiver = self;
  v6.super_class = ANBackgroundActivity;
  v2 = [(ANBackgroundActivity *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.announce.activity.dailyanalytics"];
    backgroundActivity = v2->_backgroundActivity;
    v2->_backgroundActivity = v3;

    [(NSBackgroundActivityScheduler *)v2->_backgroundActivity setPreregistered:1];
    [(NSBackgroundActivityScheduler *)v2->_backgroundActivity setQualityOfService:9];
    [(NSBackgroundActivityScheduler *)v2->_backgroundActivity setCheckInHandler:&__block_literal_global_21];
  }

  return v2;
}

void __28__ANBackgroundActivity_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  if (ANLogHandleBackgroundActivity_once != -1)
  {
    __28__ANBackgroundActivity_init__block_invoke_cold_1();
  }

  v0 = ANLogHandleBackgroundActivity_logger;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v0, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily checked in.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)scheduleWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(ANBackgroundActivity *)self backgroundActivity];
  [v5 scheduleWithBlock:v4];
}

- (BOOL)shouldDefer
{
  v2 = [(ANBackgroundActivity *)self backgroundActivity];
  v3 = [v2 shouldDefer];

  return v3;
}

@end