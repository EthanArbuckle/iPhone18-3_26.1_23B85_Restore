@interface ATXScoredActionWithReason
- (ATXScoredActionWithReason)initWithScoredAction:(id)a3 predictionReason:(id)a4;
@end

@implementation ATXScoredActionWithReason

- (ATXScoredActionWithReason)initWithScoredAction:(id)a3 predictionReason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXScoredActionWithReason;
  v9 = [(ATXScoredActionWithReason *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scoredAction, a3);
    v11 = [v8 copy];
    reason = v10->_reason;
    v10->_reason = v11;
  }

  return v10;
}

@end