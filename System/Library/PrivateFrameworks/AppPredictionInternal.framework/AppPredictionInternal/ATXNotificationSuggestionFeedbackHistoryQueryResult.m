@interface ATXNotificationSuggestionFeedbackHistoryQueryResult
- (ATXNotificationSuggestionFeedbackHistoryQueryResult)initWithFeedbackKey:(id)a3 latestOutcome:(int64_t)a4 createdTimestamp:(id)a5;
@end

@implementation ATXNotificationSuggestionFeedbackHistoryQueryResult

- (ATXNotificationSuggestionFeedbackHistoryQueryResult)initWithFeedbackKey:(id)a3 latestOutcome:(int64_t)a4 createdTimestamp:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ATXNotificationSuggestionFeedbackHistoryQueryResult;
  v11 = [(ATXNotificationSuggestionFeedbackHistoryQueryResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feedbackKey, a3);
    v12->_latestOutcome = a4;
    objc_storeStrong(&v12->_createdTimestamp, a5);
  }

  return v12;
}

@end