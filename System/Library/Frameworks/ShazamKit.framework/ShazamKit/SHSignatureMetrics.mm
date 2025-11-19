@interface SHSignatureMetrics
- (SHSignatureMetrics)initWithCoder:(id)a3;
- (SHSignatureMetrics)initWithSessionStartDate:(id)a3 signatureRecordingOffset:(double)a4;
- (double)sessionDuration;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHSignatureMetrics

- (SHSignatureMetrics)initWithSessionStartDate:(id)a3 signatureRecordingOffset:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SHSignatureMetrics;
  v8 = [(SHSignatureMetrics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sessionStartDate, a3);
    v9->_signatureRecordingOffset = a4;
  }

  return v9;
}

- (SHSignatureMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionStartDate"];
  v6 = [v4 decodeIntegerForKey:@"recordingSource"];
  [v4 decodeDoubleForKey:@"signatureRecordingOffset"];
  v8 = v7;

  v9 = [(SHSignatureMetrics *)self initWithSessionStartDate:v5 signatureRecordingOffset:v8];
  v10 = v9;
  if (v9)
  {
    v9->_recordingSource = v6;
  }

  return v10;
}

- (double)sessionDuration
{
  v3 = [(SHSignatureMetrics *)self sessionStartDate];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(SHSignatureMetrics *)self sessionStartDate];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(SHSignatureMetrics *)self sessionStartDate];
  [v5 encodeObject:v4 forKey:@"sessionStartDate"];

  [v5 encodeInteger:-[SHSignatureMetrics recordingSource](self forKey:{"recordingSource"), @"recordingSource"}];
  [(SHSignatureMetrics *)self signatureRecordingOffset];
  [v5 encodeDouble:@"signatureRecordingOffset" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHSignatureMetrics allocWithZone:?];
  v6 = [(SHSignatureMetrics *)self sessionStartDate];
  v7 = [v6 copyWithZone:a3];
  [(SHSignatureMetrics *)self signatureRecordingOffset];
  v8 = [(SHSignatureMetrics *)v5 initWithSessionStartDate:v7 signatureRecordingOffset:?];

  [(SHSignatureMetrics *)v8 setRecordingSource:[(SHSignatureMetrics *)self recordingSource]];
  return v8;
}

@end