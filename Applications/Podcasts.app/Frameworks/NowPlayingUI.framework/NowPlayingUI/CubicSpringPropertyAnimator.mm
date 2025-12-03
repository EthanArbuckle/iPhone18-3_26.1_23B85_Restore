@interface CubicSpringPropertyAnimator
- (_TtC12NowPlayingUI27CubicSpringPropertyAnimator)initWithDuration:(double)duration timingParameters:(id)parameters;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
@end

@implementation CubicSpringPropertyAnimator

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  if (path)
  {
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  v11 = sub_D8B10(view, v6, v8);

  return v11;
}

- (_TtC12NowPlayingUI27CubicSpringPropertyAnimator)initWithDuration:(double)duration timingParameters:(id)parameters
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CubicSpringPropertyAnimator();
  return [(CubicSpringPropertyAnimator *)&v7 initWithDuration:parameters timingParameters:duration];
}

@end