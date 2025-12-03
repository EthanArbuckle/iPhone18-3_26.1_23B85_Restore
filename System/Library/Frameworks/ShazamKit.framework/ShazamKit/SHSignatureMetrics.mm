@interface SHSignatureMetrics
- (SHSignatureMetrics)initWithCoder:(id)coder;
- (SHSignatureMetrics)initWithSessionStartDate:(id)date signatureRecordingOffset:(double)offset;
- (double)sessionDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHSignatureMetrics

- (SHSignatureMetrics)initWithSessionStartDate:(id)date signatureRecordingOffset:(double)offset
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = SHSignatureMetrics;
  v8 = [(SHSignatureMetrics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sessionStartDate, date);
    v9->_signatureRecordingOffset = offset;
  }

  return v9;
}

- (SHSignatureMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionStartDate"];
  v6 = [coderCopy decodeIntegerForKey:@"recordingSource"];
  [coderCopy decodeDoubleForKey:@"signatureRecordingOffset"];
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
  sessionStartDate = [(SHSignatureMetrics *)self sessionStartDate];
  if (sessionStartDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    sessionStartDate2 = [(SHSignatureMetrics *)self sessionStartDate];
    [date timeIntervalSinceDate:sessionStartDate2];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionStartDate = [(SHSignatureMetrics *)self sessionStartDate];
  [coderCopy encodeObject:sessionStartDate forKey:@"sessionStartDate"];

  [coderCopy encodeInteger:-[SHSignatureMetrics recordingSource](self forKey:{"recordingSource"), @"recordingSource"}];
  [(SHSignatureMetrics *)self signatureRecordingOffset];
  [coderCopy encodeDouble:@"signatureRecordingOffset" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHSignatureMetrics allocWithZone:?];
  sessionStartDate = [(SHSignatureMetrics *)self sessionStartDate];
  v7 = [sessionStartDate copyWithZone:zone];
  [(SHSignatureMetrics *)self signatureRecordingOffset];
  v8 = [(SHSignatureMetrics *)v5 initWithSessionStartDate:v7 signatureRecordingOffset:?];

  [(SHSignatureMetrics *)v8 setRecordingSource:[(SHSignatureMetrics *)self recordingSource]];
  return v8;
}

@end