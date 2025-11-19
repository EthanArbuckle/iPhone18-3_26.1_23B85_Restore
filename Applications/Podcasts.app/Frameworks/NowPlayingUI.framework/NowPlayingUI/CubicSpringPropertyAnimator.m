@interface CubicSpringPropertyAnimator
- (_TtC12NowPlayingUI27CubicSpringPropertyAnimator)initWithDuration:(double)a3 timingParameters:(id)a4;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
@end

@implementation CubicSpringPropertyAnimator

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  if (a4)
  {
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v11 = sub_D8B10(a3, v6, v8);

  return v11;
}

- (_TtC12NowPlayingUI27CubicSpringPropertyAnimator)initWithDuration:(double)a3 timingParameters:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CubicSpringPropertyAnimator();
  return [(CubicSpringPropertyAnimator *)&v7 initWithDuration:a4 timingParameters:a3];
}

@end