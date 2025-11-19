@interface CLEEDUploadServiceConfig
- (CLEEDUploadServiceConfig)initWithCoder:(id)a3;
- (CLEEDUploadServiceConfig)initWithNumInflightUploads:(int64_t)a3 maxUploadFileSizeMB:(int64_t)a4 maxUploadQuotaMB:(int64_t)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLEEDUploadServiceConfig

- (CLEEDUploadServiceConfig)initWithNumInflightUploads:(int64_t)a3 maxUploadFileSizeMB:(int64_t)a4 maxUploadQuotaMB:(int64_t)a5
{
  v31 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "[CLEEDUploadServiceConfig initWithNumInflightUploads:maxUploadFileSizeMB:maxUploadQuotaMB:]";
    v25 = 2050;
    v26 = a5;
    v27 = 2050;
    v28 = a4;
    v29 = 2050;
    v30 = a3;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2EMSFW,%{public}s[uploadQuotaMB:%{public}ld,maxFileSizeMB:%{public}ld,numInFlightUploads:%{public}ld]", buf, 0x2Au);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v15 = 136446978;
    v16 = "[CLEEDUploadServiceConfig initWithNumInflightUploads:maxUploadFileSizeMB:maxUploadQuotaMB:]";
    v17 = 2050;
    v18 = a5;
    v19 = 2050;
    v20 = a4;
    v21 = 2050;
    v22 = a3;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadServiceConfig initWithNumInflightUploads:maxUploadFileSizeMB:maxUploadQuotaMB:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v14.receiver = self;
  v14.super_class = CLEEDUploadServiceConfig;
  result = [(CLEEDUploadServiceConfig *)&v14 init];
  if (result)
  {
    result->_maxUploadFileSizeMB = a4;
    result->_maxUploadQuotaMB = a5;
    result->_numInFlightUploads = a3;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLEEDUploadServiceConfig;
  [(CLEEDUploadServiceConfig *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_maxUploadQuotaMB forKey:@"maxUploadQuotaMB"];
  [a3 encodeInteger:self->_maxUploadFileSizeMB forKey:@"maxUploadFileSizeMB"];
  numInFlightUploads = self->_numInFlightUploads;

  [a3 encodeInteger:numInFlightUploads forKey:@"numInFlightUploads"];
}

- (CLEEDUploadServiceConfig)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLEEDUploadServiceConfig;
  v4 = [(CLEEDUploadServiceConfig *)&v6 init];
  if (v4)
  {
    v4->_maxUploadQuotaMB = [a3 decodeIntegerForKey:@"maxUploadQuotaMB"];
    v4->_maxUploadFileSizeMB = [a3 decodeIntegerForKey:@"maxUploadFileSizeMB"];
    v4->_numInFlightUploads = [a3 decodeIntegerForKey:@"numInFlightUploads"];
  }

  return v4;
}

@end