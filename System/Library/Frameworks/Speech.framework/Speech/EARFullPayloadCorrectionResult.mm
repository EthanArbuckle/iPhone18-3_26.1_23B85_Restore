@interface EARFullPayloadCorrectionResult
- (EARFullPayloadCorrectionResult)initWithCoder:(id)coder;
- (EARFullPayloadCorrectionResult)initWithResult:(id)result loggingInfo:(id)info error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARFullPayloadCorrectionResult

- (EARFullPayloadCorrectionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = EARFullPayloadCorrectionResult;
  v5 = [(EARFullPayloadCorrectionResult *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"_loggingInfo"];
    loggingInfo = v5->_loggingInfo;
    v5->_loggingInfo = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  result = self->_result;
  coderCopy = coder;
  [coderCopy encodeObject:result forKey:@"_result"];
  [coderCopy encodeObject:self->_loggingInfo forKey:@"_loggingInfo"];
  [coderCopy encodeObject:self->_error forKey:@"_error"];
}

- (EARFullPayloadCorrectionResult)initWithResult:(id)result loggingInfo:(id)info error:(id)error
{
  resultCopy = result;
  infoCopy = info;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = EARFullPayloadCorrectionResult;
  v12 = [(EARFullPayloadCorrectionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_result, result);
    objc_storeStrong(&v13->_loggingInfo, info);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

@end