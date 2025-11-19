@interface EARLatticeMitigatorResult
- (EARLatticeMitigatorResult)initWithCoder:(id)a3;
- (EARLatticeMitigatorResult)initWithLatticeMitigatorResult:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARLatticeMitigatorResult

- (EARLatticeMitigatorResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EARLatticeMitigatorResult;
  v5 = [(EARLatticeMitigatorResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    [v4 decodeFloatForKey:@"score"];
    v5->_score = v8;
    [v4 decodeFloatForKey:@"threshold"];
    v5->_threshold = v9;
    [v4 decodeFloatForKey:@"calibrationScale"];
    v5->_calibrationScale = v10;
    [v4 decodeFloatForKey:@"calibrationOffset"];
    v5->_calibrationOffset = v11;
    v5->_processed = [v4 decodeBoolForKey:@"processed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v9 = a3;
  [v9 encodeObject:version forKey:@"version"];
  *&v5 = self->_score;
  [v9 encodeFloat:@"score" forKey:v5];
  *&v6 = self->_threshold;
  [v9 encodeFloat:@"threshold" forKey:v6];
  *&v7 = self->_calibrationScale;
  [v9 encodeFloat:@"calibrationScale" forKey:v7];
  *&v8 = self->_calibrationOffset;
  [v9 encodeFloat:@"calibrationOffset" forKey:v8];
  [v9 encodeBool:self->_processed forKey:@"processed"];
}

- (EARLatticeMitigatorResult)initWithLatticeMitigatorResult:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = EARLatticeMitigatorResult;
    v5 = [(EARLatticeMitigatorResult *)&v14 init];
    if (v5)
    {
      v6 = [v4 version];
      version = v5->_version;
      v5->_version = v6;

      [v4 score];
      v5->_score = v8;
      [v4 threshold];
      v5->_threshold = v9;
      [v4 calibrationScale];
      v5->_calibrationScale = v10;
      [v4 calibrationOffset];
      v5->_calibrationOffset = v11;
      v5->_processed = [v4 processed];
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end