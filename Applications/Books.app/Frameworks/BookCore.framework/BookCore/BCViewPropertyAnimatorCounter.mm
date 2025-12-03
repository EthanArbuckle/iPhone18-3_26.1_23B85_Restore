@interface BCViewPropertyAnimatorCounter
- (void)animate:(id)animate afterDelay:(double)delay;
@end

@implementation BCViewPropertyAnimatorCounter

- (void)animate:(id)animate afterDelay:(double)delay
{
  animateCopy = animate;
  [animateCopy setUserInteractionEnabled:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9DB20;
  v7[3] = &unk_2C8FD0;
  v7[4] = self;
  [animateCopy addCompletion:v7];
  [(BCViewPropertyAnimatorCounter *)self setAnimationCount:[(BCViewPropertyAnimatorCounter *)self animationCount]+ 1];
  [animateCopy addAnimations:&stru_2CC1F0];
  [animateCopy startAnimationAfterDelay:delay];
}

@end