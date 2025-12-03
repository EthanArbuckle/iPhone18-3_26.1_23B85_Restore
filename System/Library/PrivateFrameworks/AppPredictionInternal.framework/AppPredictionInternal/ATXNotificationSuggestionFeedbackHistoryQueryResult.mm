@interface ATXNotificationSuggestionFeedbackHistoryQueryResult
- (ATXNotificationSuggestionFeedbackHistoryQueryResult)initWithFeedbackKey:(id)key latestOutcome:(int64_t)outcome createdTimestamp:(id)timestamp;
@end

@implementation ATXNotificationSuggestionFeedbackHistoryQueryResult

- (ATXNotificationSuggestionFeedbackHistoryQueryResult)initWithFeedbackKey:(id)key latestOutcome:(int64_t)outcome createdTimestamp:(id)timestamp
{
  keyCopy = key;
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = ATXNotificationSuggestionFeedbackHistoryQueryResult;
  v11 = [(ATXNotificationSuggestionFeedbackHistoryQueryResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feedbackKey, key);
    v12->_latestOutcome = outcome;
    objc_storeStrong(&v12->_createdTimestamp, timestamp);
  }

  return v12;
}

@end