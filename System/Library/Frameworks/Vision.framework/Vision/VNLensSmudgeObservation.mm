@interface VNLensSmudgeObservation
+ (id)observationForOriginatingRequestSpecifier:(id)specifier confidence:(float)confidence error:(id *)error;
- (id)_initWithOriginatingRequestSpecifier:(id)specifier confidence:(float)confidence;
@end

@implementation VNLensSmudgeObservation

- (id)_initWithOriginatingRequestSpecifier:(id)specifier confidence:(float)confidence
{
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = VNLensSmudgeObservation;
  v7 = [(VNObservation *)&v11 initWithOriginatingRequestSpecifier:specifierCopy];
  v9 = v7;
  if (v7)
  {
    *&v8 = confidence;
    [(VNObservation *)v7 setConfidence:v8];
  }

  return v9;
}

+ (id)observationForOriginatingRequestSpecifier:(id)specifier confidence:(float)confidence error:(id *)error
{
  specifierCopy = specifier;
  *&v9 = confidence;
  if ([VNValidationUtilities validateVNConfidenceRange:error error:v9])
  {
    v10 = [self alloc];
    *&v11 = confidence;
    v12 = [v10 _initWithOriginatingRequestSpecifier:specifierCopy confidence:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end