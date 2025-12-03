@interface SHMatcherResponse
+ (id)errorResponseForSignature:(id)signature error:(id)error;
+ (id)matchWithRecordingIntermission:(double)intermission recordingSignatureOffset:(double)offset retrySeconds:(double)seconds match:(id)match;
+ (id)noMatchWithRecordingIntermission:(double)intermission recordingSignatureOffset:(double)offset retrySeconds:(double)seconds signature:(id)signature;
- (BOOL)isStillRunningAssociatedRequest;
- (SHMatcherResponse)initWithCoder:(id)coder;
- (SHMatcherResponse)initWithRecordingIntermission:(double)intermission recordingSignatureOffset:(double)offset retrySeconds:(double)seconds match:(id)match signature:(id)signature associatedRequestID:(id)d result:(int64_t)result error:(id)self0;
- (SHSignature)signature;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMatcherResponse

+ (id)errorResponseForSignature:(id)signature error:(id)error
{
  errorCopy = error;
  signatureCopy = signature;
  v7 = [[SHMatcherResponse alloc] initWithRecordingIntermission:0 recordingSignatureOffset:signatureCopy retrySeconds:0 match:3 signature:errorCopy associatedRequestID:0.0 result:0.0 error:0.0];

  return v7;
}

+ (id)noMatchWithRecordingIntermission:(double)intermission recordingSignatureOffset:(double)offset retrySeconds:(double)seconds signature:(id)signature
{
  signatureCopy = signature;
  v10 = [[SHMatcherResponse alloc] initWithRecordingIntermission:0 recordingSignatureOffset:signatureCopy retrySeconds:0 match:2 signature:0 associatedRequestID:intermission result:offset error:seconds];

  return v10;
}

+ (id)matchWithRecordingIntermission:(double)intermission recordingSignatureOffset:(double)offset retrySeconds:(double)seconds match:(id)match
{
  matchCopy = match;
  v10 = [SHMatcherResponse alloc];
  querySignature = [matchCopy querySignature];
  v12 = [(SHMatcherResponse *)v10 initWithRecordingIntermission:matchCopy recordingSignatureOffset:querySignature retrySeconds:0 match:1 signature:0 associatedRequestID:intermission result:offset error:seconds];

  return v12;
}

- (SHMatcherResponse)initWithRecordingIntermission:(double)intermission recordingSignatureOffset:(double)offset retrySeconds:(double)seconds match:(id)match signature:(id)signature associatedRequestID:(id)d result:(int64_t)result error:(id)self0
{
  matchCopy = match;
  signatureCopy = signature;
  dCopy = d;
  errorCopy = error;
  v26.receiver = self;
  v26.super_class = SHMatcherResponse;
  v23 = [(SHMatcherResponse *)&v26 init];
  v24 = v23;
  if (v23)
  {
    v23->_recordingSignatureOffset = offset;
    v23->_recordingIntermission = intermission;
    v23->_retrySeconds = seconds;
    objc_storeStrong(&v23->_match, match);
    objc_storeStrong(&v24->_signature, signature);
    objc_storeStrong(&v24->_runningAssociatedRequestID, d);
    v24->_result = result;
    objc_storeStrong(&v24->_error, error);
    [(SHMatcherResponse *)v24 validate];
  }

  return v24;
}

- (BOOL)isStillRunningAssociatedRequest
{
  runningAssociatedRequestID = [(SHMatcherResponse *)self runningAssociatedRequestID];
  v3 = runningAssociatedRequestID != 0;

  return v3;
}

- (SHSignature)signature
{
  signature = self->_signature;
  if (signature)
  {
    querySignature = signature;
  }

  else
  {
    querySignature = [(SHMatch *)self->_match querySignature];
  }

  return querySignature;
}

- (SHMatcherResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"recordingIntermission"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"recordingSignatureOffset"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"retrySeconds"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"match"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedRequestID"];
  v15 = [coderCopy decodeIntegerForKey:@"resultType"];

  v16 = [(SHMatcherResponse *)self initWithRecordingIntermission:v11 recordingSignatureOffset:v12 retrySeconds:v14 match:v15 signature:v13 associatedRequestID:v6 result:v8 error:v10];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  match = self->_match;
  coderCopy = coder;
  [coderCopy encodeObject:match forKey:@"match"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  v5 = [SHError normalizedError:self->_error];
  [coderCopy encodeObject:v5 forKey:@"error"];

  [coderCopy encodeDouble:@"recordingIntermission" forKey:self->_recordingIntermission];
  [coderCopy encodeDouble:@"recordingSignatureOffset" forKey:self->_recordingSignatureOffset];
  [coderCopy encodeDouble:@"retrySeconds" forKey:self->_retrySeconds];
  [coderCopy encodeObject:self->_runningAssociatedRequestID forKey:@"associatedRequestID"];
  [coderCopy encodeInteger:self->_result forKey:@"resultType"];
}

@end