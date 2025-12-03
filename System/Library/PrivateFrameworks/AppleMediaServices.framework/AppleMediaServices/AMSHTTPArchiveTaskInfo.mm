@interface AMSHTTPArchiveTaskInfo
- (AMSHTTPArchiveTaskInfo)initWithCoder:(id)coder;
- (AMSHTTPArchiveTaskInfo)initWithURLTaskInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSHTTPArchiveTaskInfo

- (AMSHTTPArchiveTaskInfo)initWithURLTaskInfo:(id)info
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = AMSHTTPArchiveTaskInfo;
  v5 = [(AMSHTTPArchiveTaskInfo *)&v17 init];
  if (v5)
  {
    v6 = [AMSHTTPArchiveMetrics alloc];
    metrics = [infoCopy metrics];
    v8 = [(AMSHTTPArchiveMetrics *)v6 initWithURLSessionTaskMetrics:metrics];
    taskMetrics = v5->_taskMetrics;
    v5->_taskMetrics = v8;

    task = [infoCopy task];
    originalRequest = [task originalRequest];
    hTTPBody = [originalRequest HTTPBody];
    HTTPBody = v5->_HTTPBody;
    v5->_HTTPBody = hTTPBody;

    data = [infoCopy data];
    responseData = v5->_responseData;
    v5->_responseData = data;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  taskMetrics = [(AMSHTTPArchiveTaskInfo *)self taskMetrics];
  [coderCopy encodeObject:taskMetrics forKey:@"kCodingKeyTaskMetrics"];

  hTTPBody = [(AMSHTTPArchiveTaskInfo *)self HTTPBody];
  [coderCopy encodeObject:hTTPBody forKey:@"kCodingKeyHTTPBody"];

  responseData = [(AMSHTTPArchiveTaskInfo *)self responseData];
  [coderCopy encodeObject:responseData forKey:@"kCodingKeyResponseData"];
}

- (AMSHTTPArchiveTaskInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AMSHTTPArchiveTaskInfo;
  v5 = [(AMSHTTPArchiveTaskInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyTaskMetrics"];
    taskMetrics = v5->_taskMetrics;
    v5->_taskMetrics = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyHTTPBody"];
    HTTPBody = v5->_HTTPBody;
    v5->_HTTPBody = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyResponseData"];
    responseData = v5->_responseData;
    v5->_responseData = v10;
  }

  return v5;
}

@end