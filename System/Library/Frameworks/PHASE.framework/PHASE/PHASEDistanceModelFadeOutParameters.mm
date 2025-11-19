@interface PHASEDistanceModelFadeOutParameters
- (PHASEDistanceModelFadeOutParameters)init;
- (PHASEDistanceModelFadeOutParameters)initWithCullDistance:(double)cullDistance;
@end

@implementation PHASEDistanceModelFadeOutParameters

- (PHASEDistanceModelFadeOutParameters)init
{
  [(PHASEDistanceModelFadeOutParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEDistanceModelFadeOutParameters)initWithCullDistance:(double)cullDistance
{
  v10.receiver = self;
  v10.super_class = PHASEDistanceModelFadeOutParameters;
  v5 = [(PHASEDistanceModelFadeOutParameters *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v5->_cullDistance = PHASEGetPropertyBounded<double>(v7, v8, cullDistance, 1.0, 1.79769313e308);
  }

  return v5;
}

@end