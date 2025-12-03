@interface ATXDigestOnboardingSuggestionLogging
- (ATXDigestOnboardingSuggestionLogging)init;
- (ATXDigestOnboardingSuggestionLogging)initWithDigestOnboardingSuggestionLoggingBiomeStream:(id)stream;
- (void)logDigestOnboardingSuggestionWithOutcome:(int)outcome timeToResolution:(double)resolution;
@end

@implementation ATXDigestOnboardingSuggestionLogging

- (ATXDigestOnboardingSuggestionLogging)initWithDigestOnboardingSuggestionLoggingBiomeStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXDigestOnboardingSuggestionLogging;
  v6 = [(ATXDigestOnboardingSuggestionLogging *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digestOnboardingSuggestionLoggingBiomeStream, stream);
  }

  return v7;
}

- (ATXDigestOnboardingSuggestionLogging)init
{
  v3 = objc_opt_new();
  v4 = [(ATXDigestOnboardingSuggestionLogging *)self initWithDigestOnboardingSuggestionLoggingBiomeStream:v3];

  return v4;
}

- (void)logDigestOnboardingSuggestionWithOutcome:(int)outcome timeToResolution:(double)resolution
{
  v5 = *&outcome;
  v9 = objc_opt_new();
  v7 = [[ATXDigestOnboardingSuggestionLoggingEvent alloc] initWithSessionUUID:v9 outcome:v5 timeToResolution:resolution];
  source = [(ATXDigestOnboardingSuggestionLoggingBiomeStream *)self->_digestOnboardingSuggestionLoggingBiomeStream source];
  [source sendEvent:v7];
}

@end