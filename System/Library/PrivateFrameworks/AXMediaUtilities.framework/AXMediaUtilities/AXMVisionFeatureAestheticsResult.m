@interface AXMVisionFeatureAestheticsResult
- (AXMVisionFeatureAestheticsResult)initWithCoder:(id)a3;
- (AXMVisionFeatureAestheticsResult)initWithVisionAestheticsObservation:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionFeatureAestheticsResult

- (AXMVisionFeatureAestheticsResult)initWithVisionAestheticsObservation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AXMVisionFeatureAestheticsResult;
  v5 = [(AXMVisionFeatureAestheticsResult *)&v14 init];
  if (v5)
  {
    [v4 aestheticScore];
    v5->_aestheticScore = v6;
    [v4 wellFramedSubjectScore];
    v5->_wellFramedSubjectScore = v7;
    [v4 wellChosenBackgroundScore];
    v5->_wellChosenBackgroundScore = v8;
    [v4 noiseScore];
    v5->_noiseScore = v9;
    [v4 failureScore];
    v5->_failureScore = v10;
    [v4 pleasantCompositionScore];
    v5->_pleasantCompositionScore = v11;
    v12 = v5;
  }

  return v5;
}

- (AXMVisionFeatureAestheticsResult)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AXMVisionFeatureAestheticsResult;
  v5 = [(AXMVisionFeatureAestheticsResult *)&v14 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"aestheticScore"];
    v5->_aestheticScore = v6;
    [v4 decodeFloatForKey:@"wellFramedSubjectScore"];
    v5->_wellFramedSubjectScore = v7;
    [v4 decodeFloatForKey:@"wellChosenBackgroundScore"];
    v5->_wellChosenBackgroundScore = v8;
    [v4 decodeFloatForKey:@"noiseScore"];
    v5->_noiseScore = v9;
    [v4 decodeFloatForKey:@"failureScore"];
    v5->_failureScore = v10;
    [v4 decodeFloatForKey:@"pleasantCompositionScore"];
    v5->_pleasantCompositionScore = v11;
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AXMVisionFeatureAestheticsResult *)self aestheticScore];
  [v4 encodeFloat:@"aestheticScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self wellFramedSubjectScore];
  [v4 encodeFloat:@"wellFramedSubjectScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self wellChosenBackgroundScore];
  [v4 encodeFloat:@"wellChosenBackgroundScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self noiseScore];
  [v4 encodeFloat:@"noiseScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self failureScore];
  [v4 encodeFloat:@"failureScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self pleasantCompositionScore];
  [v4 encodeFloat:@"pleasantCompositionScore" forKey:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(AXMVisionFeatureAestheticsResult *)self aestheticScore];
  v5 = v4;
  [(AXMVisionFeatureAestheticsResult *)self wellFramedSubjectScore];
  v7 = v6;
  [(AXMVisionFeatureAestheticsResult *)self wellChosenBackgroundScore];
  v9 = v8;
  [(AXMVisionFeatureAestheticsResult *)self noiseScore];
  v11 = v10;
  [(AXMVisionFeatureAestheticsResult *)self failureScore];
  v13 = v12;
  [(AXMVisionFeatureAestheticsResult *)self pleasantCompositionScore];
  return [v3 stringWithFormat:@"Aesthetics: aesthetic=%.2f wellFramedSubject=%.2f wellChosenBackground=%.2f noise=%.2f failure=%.2f pleasantComposition=%.2f", *&v5, *&v7, *&v9, *&v11, *&v13, v14];
}

@end