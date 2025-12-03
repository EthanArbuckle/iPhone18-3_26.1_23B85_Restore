@interface AXMVisionFeatureAestheticsResult
- (AXMVisionFeatureAestheticsResult)initWithCoder:(id)coder;
- (AXMVisionFeatureAestheticsResult)initWithVisionAestheticsObservation:(id)observation;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionFeatureAestheticsResult

- (AXMVisionFeatureAestheticsResult)initWithVisionAestheticsObservation:(id)observation
{
  observationCopy = observation;
  v14.receiver = self;
  v14.super_class = AXMVisionFeatureAestheticsResult;
  v5 = [(AXMVisionFeatureAestheticsResult *)&v14 init];
  if (v5)
  {
    [observationCopy aestheticScore];
    v5->_aestheticScore = v6;
    [observationCopy wellFramedSubjectScore];
    v5->_wellFramedSubjectScore = v7;
    [observationCopy wellChosenBackgroundScore];
    v5->_wellChosenBackgroundScore = v8;
    [observationCopy noiseScore];
    v5->_noiseScore = v9;
    [observationCopy failureScore];
    v5->_failureScore = v10;
    [observationCopy pleasantCompositionScore];
    v5->_pleasantCompositionScore = v11;
    v12 = v5;
  }

  return v5;
}

- (AXMVisionFeatureAestheticsResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = AXMVisionFeatureAestheticsResult;
  v5 = [(AXMVisionFeatureAestheticsResult *)&v14 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"aestheticScore"];
    v5->_aestheticScore = v6;
    [coderCopy decodeFloatForKey:@"wellFramedSubjectScore"];
    v5->_wellFramedSubjectScore = v7;
    [coderCopy decodeFloatForKey:@"wellChosenBackgroundScore"];
    v5->_wellChosenBackgroundScore = v8;
    [coderCopy decodeFloatForKey:@"noiseScore"];
    v5->_noiseScore = v9;
    [coderCopy decodeFloatForKey:@"failureScore"];
    v5->_failureScore = v10;
    [coderCopy decodeFloatForKey:@"pleasantCompositionScore"];
    v5->_pleasantCompositionScore = v11;
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AXMVisionFeatureAestheticsResult *)self aestheticScore];
  [coderCopy encodeFloat:@"aestheticScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self wellFramedSubjectScore];
  [coderCopy encodeFloat:@"wellFramedSubjectScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self wellChosenBackgroundScore];
  [coderCopy encodeFloat:@"wellChosenBackgroundScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self noiseScore];
  [coderCopy encodeFloat:@"noiseScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self failureScore];
  [coderCopy encodeFloat:@"failureScore" forKey:?];
  [(AXMVisionFeatureAestheticsResult *)self pleasantCompositionScore];
  [coderCopy encodeFloat:@"pleasantCompositionScore" forKey:?];
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