@interface IMAnimationTracker
+ (id)animationTrackerWithCompletion:(id)completion;
- (IMAnimationTracker)initWithCompletion:(id)completion;
- (void)addAnimationWithBlock:(id)block;
@end

@implementation IMAnimationTracker

- (IMAnimationTracker)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = IMAnimationTracker;
  v5 = [(IMAnimationTracker *)&v9 init];
  if (v5)
  {
    v6 = [completionCopy copy];
    completion = v5->_completion;
    v5->_completion = v6;
  }

  return v5;
}

+ (id)animationTrackerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[self alloc] initWithCompletion:completionCopy];

  return v5;
}

- (void)addAnimationWithBlock:(id)block
{
  if (block)
  {
    ++self->_animationCount;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_5DAA0;
    v3[3] = &unk_2C99D8;
    v3[4] = self;
    (*(block + 2))(block, v3);
  }
}

@end