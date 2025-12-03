@interface CLEEDUploadServiceConfig
- (CLEEDUploadServiceConfig)initWithCoder:(id)coder;
- (CLEEDUploadServiceConfig)initWithNumInflightUploads:(int64_t)uploads maxUploadFileSizeMB:(int64_t)b maxUploadQuotaMB:(int64_t)mB;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLEEDUploadServiceConfig

- (CLEEDUploadServiceConfig)initWithNumInflightUploads:(int64_t)uploads maxUploadFileSizeMB:(int64_t)b maxUploadQuotaMB:(int64_t)mB
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
    mBCopy = mB;
    v27 = 2050;
    bCopy = b;
    v29 = 2050;
    uploadsCopy = uploads;
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
    mBCopy2 = mB;
    v19 = 2050;
    bCopy2 = b;
    v21 = 2050;
    uploadsCopy2 = uploads;
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
    result->_maxUploadFileSizeMB = b;
    result->_maxUploadQuotaMB = mB;
    result->_numInFlightUploads = uploads;
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_maxUploadQuotaMB forKey:@"maxUploadQuotaMB"];
  [coder encodeInteger:self->_maxUploadFileSizeMB forKey:@"maxUploadFileSizeMB"];
  numInFlightUploads = self->_numInFlightUploads;

  [coder encodeInteger:numInFlightUploads forKey:@"numInFlightUploads"];
}

- (CLEEDUploadServiceConfig)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLEEDUploadServiceConfig;
  v4 = [(CLEEDUploadServiceConfig *)&v6 init];
  if (v4)
  {
    v4->_maxUploadQuotaMB = [coder decodeIntegerForKey:@"maxUploadQuotaMB"];
    v4->_maxUploadFileSizeMB = [coder decodeIntegerForKey:@"maxUploadFileSizeMB"];
    v4->_numInFlightUploads = [coder decodeIntegerForKey:@"numInFlightUploads"];
  }

  return v4;
}

@end