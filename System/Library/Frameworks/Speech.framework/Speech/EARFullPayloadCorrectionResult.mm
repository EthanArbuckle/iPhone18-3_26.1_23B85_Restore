@interface EARFullPayloadCorrectionResult
- (EARFullPayloadCorrectionResult)initWithCoder:(id)a3;
- (EARFullPayloadCorrectionResult)initWithResult:(id)a3 loggingInfo:(id)a4 error:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARFullPayloadCorrectionResult

- (EARFullPayloadCorrectionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EARFullPayloadCorrectionResult;
  v5 = [(EARFullPayloadCorrectionResult *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v7 = v5->_result;
    v5->_result = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"_loggingInfo"];
    loggingInfo = v5->_loggingInfo;
    v5->_loggingInfo = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  result = self->_result;
  v5 = a3;
  [v5 encodeObject:result forKey:@"_result"];
  [v5 encodeObject:self->_loggingInfo forKey:@"_loggingInfo"];
  [v5 encodeObject:self->_error forKey:@"_error"];
}

- (EARFullPayloadCorrectionResult)initWithResult:(id)a3 loggingInfo:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = EARFullPayloadCorrectionResult;
  v12 = [(EARFullPayloadCorrectionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_result, a3);
    objc_storeStrong(&v13->_loggingInfo, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

@end