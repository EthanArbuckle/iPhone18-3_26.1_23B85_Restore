@interface PHASEDistanceModelParameters
- (PHASEDistanceModelParameters)init;
- (id)initInternal;
@end

@implementation PHASEDistanceModelParameters

- (PHASEDistanceModelParameters)init
{
  [(PHASEDistanceModelParameters *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal
{
  v6.receiver = self;
  v6.super_class = PHASEDistanceModelParameters;
  v2 = [(PHASEDistanceModelParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    fadeOutParameters = v2->_fadeOutParameters;
    v2->_fadeOutParameters = 0;
  }

  return v3;
}

@end