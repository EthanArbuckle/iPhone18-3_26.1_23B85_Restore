@interface BCViewPropertyAnimatorCounter
- (void)animate:(id)a3 afterDelay:(double)a4;
@end

@implementation BCViewPropertyAnimatorCounter

- (void)animate:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  [v6 setUserInteractionEnabled:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9DB20;
  v7[3] = &unk_2C8FD0;
  v7[4] = self;
  [v6 addCompletion:v7];
  [(BCViewPropertyAnimatorCounter *)self setAnimationCount:[(BCViewPropertyAnimatorCounter *)self animationCount]+ 1];
  [v6 addAnimations:&stru_2CC1F0];
  [v6 startAnimationAfterDelay:a4];
}

@end