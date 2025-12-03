@interface ATXScoredActionWithReason
- (ATXScoredActionWithReason)initWithScoredAction:(id)action predictionReason:(id)reason;
@end

@implementation ATXScoredActionWithReason

- (ATXScoredActionWithReason)initWithScoredAction:(id)action predictionReason:(id)reason
{
  actionCopy = action;
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = ATXScoredActionWithReason;
  v9 = [(ATXScoredActionWithReason *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scoredAction, action);
    v11 = [reasonCopy copy];
    reason = v10->_reason;
    v10->_reason = v11;
  }

  return v10;
}

@end