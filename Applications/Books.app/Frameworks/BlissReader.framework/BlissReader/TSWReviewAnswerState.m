@interface TSWReviewAnswerState
- (TSWReviewAnswerState)init;
- (TSWReviewAnswerState)initWithCoder:(id)a3;
@end

@implementation TSWReviewAnswerState

- (TSWReviewAnswerState)init
{
  v3.receiver = self;
  v3.super_class = TSWReviewAnswerState;
  result = [(TSWReviewAnswerState *)&v3 init];
  if (result)
  {
    result->mVersion = 0;
  }

  return result;
}

- (TSWReviewAnswerState)initWithCoder:(id)a3
{
  v4 = [(TSWReviewAnswerState *)self init];
  if (v4 && [a3 containsValueForKey:@"TSWReviewAnswerStateVersion"])
  {
    v4->mVersion = [objc_msgSend(a3 valueForKey:{@"TSWReviewAnswerStateVersion", "unsignedIntegerValue"}];
  }

  return v4;
}

@end