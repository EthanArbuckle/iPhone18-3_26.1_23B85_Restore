@interface TSWReviewAssociativeAnswerState
- (TSWReviewAssociativeAnswerState)initWithCoder:(id)a3;
- (id)choicesForTargetIndex:(unint64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setChoices:(id)a3 forTargetIndex:(unint64_t)a4;
@end

@implementation TSWReviewAssociativeAnswerState

- (void)dealloc
{
  self->mChoicesForTarget = 0;
  v3.receiver = self;
  v3.super_class = TSWReviewAssociativeAnswerState;
  [(TSWReviewAssociativeAnswerState *)&v3 dealloc];
}

- (TSWReviewAssociativeAnswerState)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSWReviewAssociativeAnswerState;
  v4 = [(TSWReviewAnswerState *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v4->mChoicesForTarget = [a3 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, v6, objc_opt_class(), 0), @"TSWReviewAnswerStateChoicesForTarget"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWReviewAssociativeAnswerState;
  [(TSWReviewAnswerState *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->mChoicesForTarget forKey:@"TSWReviewAnswerStateChoicesForTarget"];
}

- (id)choicesForTargetIndex:(unint64_t)a3
{
  mChoicesForTarget = self->mChoicesForTarget;
  if (!mChoicesForTarget)
  {
    mChoicesForTarget = objc_alloc_init(NSMutableDictionary);
    self->mChoicesForTarget = mChoicesForTarget;
  }

  v6 = [NSNumber numberWithUnsignedInteger:a3];

  return [(NSMutableDictionary *)mChoicesForTarget objectForKey:v6];
}

- (void)setChoices:(id)a3 forTargetIndex:(unint64_t)a4
{
  mChoicesForTarget = self->mChoicesForTarget;
  v6 = [NSNumber numberWithUnsignedInteger:a4];

  [(NSMutableDictionary *)mChoicesForTarget setObject:a3 forKey:v6];
}

@end