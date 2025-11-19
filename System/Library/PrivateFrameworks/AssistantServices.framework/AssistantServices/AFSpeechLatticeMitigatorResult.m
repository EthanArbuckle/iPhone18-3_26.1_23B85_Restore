@interface AFSpeechLatticeMitigatorResult
- (AFSpeechLatticeMitigatorResult)initWithCoder:(id)a3;
- (AFSpeechLatticeMitigatorResult)initWithResults:(id)a3 score:(float)a4 threshold:(float)a5;
- (AFSpeechLatticeMitigatorResult)initWithResults:(id)a3 score:(float)a4 threshold:(float)a5 calibrationScale:(float)a6 calibrationOffset:(float)a7;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
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

- (AFSpeechLatticeMitigatorResult)initWithResults:(id)a3 score:(float)a4 threshold:(float)a5 calibrationScale:(float)a6 calibrationOffset:(float)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = AFSpeechLatticeMitigatorResult;
  v13 = [(AFSpeechLatticeMitigatorResult *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    version = v13->_version;
    v13->_version = v14;

    v13->_score = a4;
    v13->_threshold = a5;
    v13->_calibrationScale = a6;
    v13->_calibrationOffset = a7;
  }

  return v13;
}

- (AFSpeechLatticeMitigatorResult)initWithResults:(id)a3 score:(float)a4 threshold:(float)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = AFSpeechLatticeMitigatorResult;
  v9 = [(AFSpeechLatticeMitigatorResult *)&v15 init];
  if (v9)
  {
    LODWORD(v12) = 1.0;
    *&v10 = a4;
    *&v11 = a5;
    v13 = [(AFSpeechLatticeMitigatorResult *)v9 initWithResults:v8 score:v10 threshold:v11 calibrationScale:v12 calibrationOffset:0.0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (AFSpeechLatticeMitigatorResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AFSpeechLatticeMitigatorResult;
  v5 = [(AFSpeechLatticeMitigatorResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_version"];
    version = v5->_version;
    v5->_version = v6;

    [v4 decodeFloatForKey:@"_score"];
    v5->_score = v8;
    [v4 decodeFloatForKey:@"_threshold"];
    v5->_threshold = v9;
    [v4 decodeFloatForKey:@"_calibrationScale"];
    v5->_calibrationScale = v10;
    [v4 decodeFloatForKey:@"_calibrationOffset"];
    v5->_calibrationOffset = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v9 = a3;
  [v9 encodeObject:version forKey:@"_version"];
  *&v5 = self->_score;
  [v9 encodeFloat:@"_score" forKey:v5];
  *&v6 = self->_threshold;
  [v9 encodeFloat:@"_threshold" forKey:v6];
  *&v7 = self->_calibrationScale;
  [v9 encodeFloat:@"_calibrationScale" forKey:v7];
  *&v8 = self->_calibrationOffset;
  [v9 encodeFloat:@"_calibrationOffset" forKey:v8];
}

@end