@interface TSWReviewAssociativeAnswerState
- (TSWReviewAssociativeAnswerState)initWithCoder:(id)coder;
- (id)choicesForTargetIndex:(unint64_t)index;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setChoices:(id)choices forTargetIndex:(unint64_t)index;
@end

@implementation TSWReviewAssociativeAnswerState

- (void)dealloc
{
  self->mChoicesForTarget = 0;
  v3.receiver = self;
  v3.super_class = TSWReviewAssociativeAnswerState;
  [(TSWReviewAssociativeAnswerState *)&v3 dealloc];
}

- (TSWReviewAssociativeAnswerState)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = TSWReviewAssociativeAnswerState;
  v4 = [(TSWReviewAnswerState *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v4->mChoicesForTarget = [coder decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, v6, objc_opt_class(), 0), @"TSWReviewAnswerStateChoicesForTarget"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TSWReviewAssociativeAnswerState;
  [(TSWReviewAnswerState *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->mChoicesForTarget forKey:@"TSWReviewAnswerStateChoicesForTarget"];
}

- (id)choicesForTargetIndex:(unint64_t)index
{
  mChoicesForTarget = self->mChoicesForTarget;
  if (!mChoicesForTarget)
  {
    mChoicesForTarget = objc_alloc_init(NSMutableDictionary);
    self->mChoicesForTarget = mChoicesForTarget;
  }

  v6 = [NSNumber numberWithUnsignedInteger:index];

  return [(NSMutableDictionary *)mChoicesForTarget objectForKey:v6];
}

- (void)setChoices:(id)choices forTargetIndex:(unint64_t)index
{
  mChoicesForTarget = self->mChoicesForTarget;
  v6 = [NSNumber numberWithUnsignedInteger:index];

  [(NSMutableDictionary *)mChoicesForTarget setObject:choices forKey:v6];
}

@end