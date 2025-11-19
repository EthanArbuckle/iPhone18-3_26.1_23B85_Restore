@interface IMAnimationTracker
+ (id)animationTrackerWithCompletion:(id)a3;
- (IMAnimationTracker)initWithCompletion:(id)a3;
- (void)addAnimationWithBlock:(id)a3;
@end

@implementation IMAnimationTracker

- (IMAnimationTracker)initWithCompletion:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMAnimationTracker;
  v5 = [(IMAnimationTracker *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    completion = v5->_completion;
    v5->_completion = v6;
  }

  return v5;
}

+ (id)animationTrackerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCompletion:v4];

  return v5;
}

- (void)addAnimationWithBlock:(id)a3
{
  if (a3)
  {
    ++self->_animationCount;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_5DAA0;
    v3[3] = &unk_2C99D8;
    v3[4] = self;
    (*(a3 + 2))(a3, v3);
  }
}

@end