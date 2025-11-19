@interface AMSHTTPArchiveTaskInfo
- (AMSHTTPArchiveTaskInfo)initWithCoder:(id)a3;
- (AMSHTTPArchiveTaskInfo)initWithURLTaskInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSHTTPArchiveTaskInfo

- (AMSHTTPArchiveTaskInfo)initWithURLTaskInfo:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AMSHTTPArchiveTaskInfo;
  v5 = [(AMSHTTPArchiveTaskInfo *)&v17 init];
  if (v5)
  {
    v6 = [AMSHTTPArchiveMetrics alloc];
    v7 = [v4 metrics];
    v8 = [(AMSHTTPArchiveMetrics *)v6 initWithURLSessionTaskMetrics:v7];
    taskMetrics = v5->_taskMetrics;
    v5->_taskMetrics = v8;

    v10 = [v4 task];
    v11 = [v10 originalRequest];
    v12 = [v11 HTTPBody];
    HTTPBody = v5->_HTTPBody;
    v5->_HTTPBody = v12;

    v14 = [v4 data];
    responseData = v5->_responseData;
    v5->_responseData = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSHTTPArchiveTaskInfo *)self taskMetrics];
  [v4 encodeObject:v5 forKey:@"kCodingKeyTaskMetrics"];

  v6 = [(AMSHTTPArchiveTaskInfo *)self HTTPBody];
  [v4 encodeObject:v6 forKey:@"kCodingKeyHTTPBody"];

  v7 = [(AMSHTTPArchiveTaskInfo *)self responseData];
  [v4 encodeObject:v7 forKey:@"kCodingKeyResponseData"];
}

- (AMSHTTPArchiveTaskInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSHTTPArchiveTaskInfo;
  v5 = [(AMSHTTPArchiveTaskInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTaskMetrics"];
    taskMetrics = v5->_taskMetrics;
    v5->_taskMetrics = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyHTTPBody"];
    HTTPBody = v5->_HTTPBody;
    v5->_HTTPBody = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyResponseData"];
    responseData = v5->_responseData;
    v5->_responseData = v10;
  }

  return v5;
}

@end