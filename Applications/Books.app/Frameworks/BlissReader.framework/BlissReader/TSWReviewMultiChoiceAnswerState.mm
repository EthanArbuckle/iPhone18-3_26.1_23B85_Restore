@interface TSWReviewMultiChoiceAnswerState
- (NSIndexSet)selectedChoices;
- (TSWReviewMultiChoiceAnswerState)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TSWReviewMultiChoiceAnswerState

- (void)dealloc
{
  self->mSelectedChoices = 0;
  v3.receiver = self;
  v3.super_class = TSWReviewMultiChoiceAnswerState;
  [(TSWReviewMultiChoiceAnswerState *)&v3 dealloc];
}

- (TSWReviewMultiChoiceAnswerState)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWReviewMultiChoiceAnswerState;
  v4 = [(TSWReviewAnswerState *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->mSelectedChoices = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"TSWReviewAnswerStateSelectedChoices"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWReviewMultiChoiceAnswerState;
  [(TSWReviewAnswerState *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->mSelectedChoices forKey:@"TSWReviewAnswerStateSelectedChoices"];
}

- (NSIndexSet)selectedChoices
{
  result = self->mSelectedChoices;
  if (!result)
  {
    result = objc_alloc_init(NSIndexSet);
    self->mSelectedChoices = result;
  }

  return result;
}

@end