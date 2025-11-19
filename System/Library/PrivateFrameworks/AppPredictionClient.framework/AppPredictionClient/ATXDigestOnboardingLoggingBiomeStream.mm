@interface ATXDigestOnboardingLoggingBiomeStream
- (ATXDigestOnboardingLoggingBiomeStream)initWithStoreConfig:(id)a3;
@end

@implementation ATXDigestOnboardingLoggingBiomeStream

- (ATXDigestOnboardingLoggingBiomeStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXDigestOnboardingLoggingBiomeStream;
  v5 = [(ATXDigestOnboardingLoggingBiomeStream *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"digestOnboardingLoggingEvent" storeConfig:v6 eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

@end