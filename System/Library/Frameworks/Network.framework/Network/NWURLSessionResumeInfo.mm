@interface NWURLSessionResumeInfo
- (NWURLSessionResumeInfo)initWithCoder:(id)coder;
- (id)initWithTask:(id)task;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWURLSessionResumeInfo

- (NWURLSessionResumeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NWURLSessionResumeInfo;
  v5 = [(NWURLSessionResumeInfo *)&v17 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalRequest"];
  if (!v6)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v7 = gurlLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "Cannot init download resume info without original request", v16, 2u);
    }

    goto LABEL_15;
  }

  v7 = v6;
  [(NWURLSessionResumeInfo *)v5 setOriginalRequest:v6];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentRequest"];
  if (!v8)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v14 = gurlLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "Cannot init download resume info without current request", v16, 2u);
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  [(NWURLSessionResumeInfo *)v5 setCurrentRequest:v8];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
  [(NWURLSessionResumeInfo *)v5 setResponse:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"earliestBeginDate"];
  [(NWURLSessionResumeInfo *)v5 setEarliestBeginDate:v11];

  -[NWURLSessionResumeInfo setCountOfBytesClientExpectsToSend:](v5, "setCountOfBytesClientExpectsToSend:", [coderCopy decodeInt64ForKey:@"countOfBytesClientExpectsToSend"]);
  -[NWURLSessionResumeInfo setCountOfBytesClientExpectsToReceive:](v5, "setCountOfBytesClientExpectsToReceive:", [coderCopy decodeInt64ForKey:@"countOfBytesClientExpectsToReceive"]);
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskDescription"];
  [(NWURLSessionResumeInfo *)v5 setTaskDescription:v12];

  [coderCopy decodeFloatForKey:@"priority"];
  [(NWURLSessionResumeInfo *)v5 setPriority:?];
  -[NWURLSessionResumeInfo setPrefersIncrementalDelivery:](v5, "setPrefersIncrementalDelivery:", [coderCopy decodeBoolForKey:@"prefersIncrementalDelivery"]);
  -[NWURLSessionResumeInfo setTaskIdentifier:](v5, "setTaskIdentifier:", [coderCopy decodeInt32ForKey:@"taskIdentifier"]);
  [coderCopy decodeDoubleForKey:@"startTime"];
  [(NWURLSessionResumeInfo *)v5 setStartTime:?];

LABEL_5:
  v13 = v5;
LABEL_16:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  originalRequest = [(NWURLSessionResumeInfo *)self originalRequest];
  [coderCopy encodeObject:originalRequest forKey:@"originalRequest"];

  currentRequest = [(NWURLSessionResumeInfo *)self currentRequest];
  [coderCopy encodeObject:currentRequest forKey:@"currentRequest"];

  response = [(NWURLSessionResumeInfo *)self response];
  [coderCopy encodeObject:response forKey:@"response"];

  earliestBeginDate = [(NWURLSessionResumeInfo *)self earliestBeginDate];
  [coderCopy encodeObject:earliestBeginDate forKey:@"earliestBeginDate"];

  [coderCopy encodeInt64:-[NWURLSessionResumeInfo countOfBytesClientExpectsToSend](self forKey:{"countOfBytesClientExpectsToSend"), @"countOfBytesClientExpectsToSend"}];
  [coderCopy encodeInt64:-[NWURLSessionResumeInfo countOfBytesClientExpectsToReceive](self forKey:{"countOfBytesClientExpectsToReceive"), @"countOfBytesClientExpectsToReceive"}];
  taskDescription = [(NWURLSessionResumeInfo *)self taskDescription];
  [coderCopy encodeObject:taskDescription forKey:@"taskDescription"];

  [(NWURLSessionResumeInfo *)self priority];
  [coderCopy encodeFloat:@"priority" forKey:?];
  [coderCopy encodeBool:-[NWURLSessionResumeInfo prefersIncrementalDelivery](self forKey:{"prefersIncrementalDelivery"), @"prefersIncrementalDelivery"}];
  [coderCopy encodeInt32:-[NWURLSessionResumeInfo taskIdentifier](self forKey:{"taskIdentifier"), @"taskIdentifier"}];
  [(NWURLSessionResumeInfo *)self startTime];
  [coderCopy encodeDouble:@"startTime" forKey:?];
}

- (id)initWithTask:(id)task
{
  v3 = a2;
  if (task)
  {
    v12.receiver = task;
    v12.super_class = NWURLSessionResumeInfo;
    task = objc_msgSendSuper2(&v12, sel_init);
    if (task)
    {
      originalRequest = [v3 originalRequest];
      [task setOriginalRequest:originalRequest];

      currentRequest = [v3 currentRequest];
      [task setCurrentRequest:currentRequest];

      response = [v3 response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        response2 = [v3 response];
        [task setResponse:response2];
      }

      earliestBeginDate = [v3 earliestBeginDate];
      [task setEarliestBeginDate:earliestBeginDate];

      [task setCountOfBytesClientExpectsToSend:{objc_msgSend(v3, "countOfBytesClientExpectsToSend")}];
      [task setCountOfBytesClientExpectsToReceive:{objc_msgSend(v3, "countOfBytesExpectedToReceive")}];
      taskDescription = [v3 taskDescription];
      [task setTaskDescription:taskDescription];

      [v3 priority];
      [task setPriority:?];
      [task setPrefersIncrementalDelivery:{objc_msgSend(v3, "prefersIncrementalDelivery")}];
    }
  }

  return task;
}

@end