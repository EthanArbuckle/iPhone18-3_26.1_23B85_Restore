@interface VNLensSmudgeObservation
+ (id)observationForOriginatingRequestSpecifier:(id)a3 confidence:(float)a4 error:(id *)a5;
- (id)_initWithOriginatingRequestSpecifier:(id)a3 confidence:(float)a4;
@end

@implementation VNLensSmudgeObservation

- (id)_initWithOriginatingRequestSpecifier:(id)a3 confidence:(float)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VNLensSmudgeObservation;
  v7 = [(VNObservation *)&v11 initWithOriginatingRequestSpecifier:v6];
  v9 = v7;
  if (v7)
  {
    *&v8 = a4;
    [(VNObservation *)v7 setConfidence:v8];
  }

  return v9;
}

+ (id)observationForOriginatingRequestSpecifier:(id)a3 confidence:(float)a4 error:(id *)a5
{
  v8 = a3;
  *&v9 = a4;
  if ([VNValidationUtilities validateVNConfidenceRange:a5 error:v9])
  {
    v10 = [a1 alloc];
    *&v11 = a4;
    v12 = [v10 _initWithOriginatingRequestSpecifier:v8 confidence:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end