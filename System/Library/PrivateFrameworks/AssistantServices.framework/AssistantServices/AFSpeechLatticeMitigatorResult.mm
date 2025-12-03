@interface AFSpeechLatticeMitigatorResult
- (AFSpeechLatticeMitigatorResult)initWithCoder:(id)coder;
- (AFSpeechLatticeMitigatorResult)initWithResults:(id)results score:(float)score threshold:(float)threshold;
- (AFSpeechLatticeMitigatorResult)initWithResults:(id)results score:(float)score threshold:(float)threshold calibrationScale:(float)scale calibrationOffset:(float)offset;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechLatticeMitigatorResult

- (id)dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"version";
  v3 = [(NSString *)self->_version copy];
  v12[0] = v3;
  v11[1] = @"score";
  *&v4 = self->_score;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v12[1] = v5;
  v11[2] = @"threshold";
  *&v6 = self->_threshold;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (AFSpeechLatticeMitigatorResult)initWithResults:(id)results score:(float)score threshold:(float)threshold calibrationScale:(float)scale calibrationOffset:(float)offset
{
  resultsCopy = results;
  v17.receiver = self;
  v17.super_class = AFSpeechLatticeMitigatorResult;
  v13 = [(AFSpeechLatticeMitigatorResult *)&v17 init];
  if (v13)
  {
    v14 = [resultsCopy copy];
    version = v13->_version;
    v13->_version = v14;

    v13->_score = score;
    v13->_threshold = threshold;
    v13->_calibrationScale = scale;
    v13->_calibrationOffset = offset;
  }

  return v13;
}

- (AFSpeechLatticeMitigatorResult)initWithResults:(id)results score:(float)score threshold:(float)threshold
{
  resultsCopy = results;
  v15.receiver = self;
  v15.super_class = AFSpeechLatticeMitigatorResult;
  v9 = [(AFSpeechLatticeMitigatorResult *)&v15 init];
  if (v9)
  {
    LODWORD(v12) = 1.0;
    *&v10 = score;
    *&v11 = threshold;
    v13 = [(AFSpeechLatticeMitigatorResult *)v9 initWithResults:resultsCopy score:v10 threshold:v11 calibrationScale:v12 calibrationOffset:0.0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (AFSpeechLatticeMitigatorResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AFSpeechLatticeMitigatorResult;
  v5 = [(AFSpeechLatticeMitigatorResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_version"];
    version = v5->_version;
    v5->_version = v6;

    [coderCopy decodeFloatForKey:@"_score"];
    v5->_score = v8;
    [coderCopy decodeFloatForKey:@"_threshold"];
    v5->_threshold = v9;
    [coderCopy decodeFloatForKey:@"_calibrationScale"];
    v5->_calibrationScale = v10;
    [coderCopy decodeFloatForKey:@"_calibrationOffset"];
    v5->_calibrationOffset = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"_version"];
  *&v5 = self->_score;
  [coderCopy encodeFloat:@"_score" forKey:v5];
  *&v6 = self->_threshold;
  [coderCopy encodeFloat:@"_threshold" forKey:v6];
  *&v7 = self->_calibrationScale;
  [coderCopy encodeFloat:@"_calibrationScale" forKey:v7];
  *&v8 = self->_calibrationOffset;
  [coderCopy encodeFloat:@"_calibrationOffset" forKey:v8];
}

@end