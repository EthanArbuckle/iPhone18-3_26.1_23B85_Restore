@interface NWURLSessionResumeInfo
- (NWURLSessionResumeInfo)initWithCoder:(id)a3;
- (id)initWithTask:(id)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWURLSessionResumeInfo

- (NWURLSessionResumeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NWURLSessionResumeInfo;
  v5 = [(NWURLSessionResumeInfo *)&v17 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalRequest"];
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
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentRequest"];
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
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"response"];
  [(NWURLSessionResumeInfo *)v5 setResponse:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"earliestBeginDate"];
  [(NWURLSessionResumeInfo *)v5 setEarliestBeginDate:v11];

  -[NWURLSessionResumeInfo setCountOfBytesClientExpectsToSend:](v5, "setCountOfBytesClientExpectsToSend:", [v4 decodeInt64ForKey:@"countOfBytesClientExpectsToSend"]);
  -[NWURLSessionResumeInfo setCountOfBytesClientExpectsToReceive:](v5, "setCountOfBytesClientExpectsToReceive:", [v4 decodeInt64ForKey:@"countOfBytesClientExpectsToReceive"]);
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskDescription"];
  [(NWURLSessionResumeInfo *)v5 setTaskDescription:v12];

  [v4 decodeFloatForKey:@"priority"];
  [(NWURLSessionResumeInfo *)v5 setPriority:?];
  -[NWURLSessionResumeInfo setPrefersIncrementalDelivery:](v5, "setPrefersIncrementalDelivery:", [v4 decodeBoolForKey:@"prefersIncrementalDelivery"]);
  -[NWURLSessionResumeInfo setTaskIdentifier:](v5, "setTaskIdentifier:", [v4 decodeInt32ForKey:@"taskIdentifier"]);
  [v4 decodeDoubleForKey:@"startTime"];
  [(NWURLSessionResumeInfo *)v5 setStartTime:?];

LABEL_5:
  v13 = v5;
LABEL_16:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(NWURLSessionResumeInfo *)self originalRequest];
  [v9 encodeObject:v4 forKey:@"originalRequest"];

  v5 = [(NWURLSessionResumeInfo *)self currentRequest];
  [v9 encodeObject:v5 forKey:@"currentRequest"];

  v6 = [(NWURLSessionResumeInfo *)self response];
  [v9 encodeObject:v6 forKey:@"response"];

  v7 = [(NWURLSessionResumeInfo *)self earliestBeginDate];
  [v9 encodeObject:v7 forKey:@"earliestBeginDate"];

  [v9 encodeInt64:-[NWURLSessionResumeInfo countOfBytesClientExpectsToSend](self forKey:{"countOfBytesClientExpectsToSend"), @"countOfBytesClientExpectsToSend"}];
  [v9 encodeInt64:-[NWURLSessionResumeInfo countOfBytesClientExpectsToReceive](self forKey:{"countOfBytesClientExpectsToReceive"), @"countOfBytesClientExpectsToReceive"}];
  v8 = [(NWURLSessionResumeInfo *)self taskDescription];
  [v9 encodeObject:v8 forKey:@"taskDescription"];

  [(NWURLSessionResumeInfo *)self priority];
  [v9 encodeFloat:@"priority" forKey:?];
  [v9 encodeBool:-[NWURLSessionResumeInfo prefersIncrementalDelivery](self forKey:{"prefersIncrementalDelivery"), @"prefersIncrementalDelivery"}];
  [v9 encodeInt32:-[NWURLSessionResumeInfo taskIdentifier](self forKey:{"taskIdentifier"), @"taskIdentifier"}];
  [(NWURLSessionResumeInfo *)self startTime];
  [v9 encodeDouble:@"startTime" forKey:?];
}

- (id)initWithTask:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NWURLSessionResumeInfo;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v4 = [v3 originalRequest];
      [a1 setOriginalRequest:v4];

      v5 = [v3 currentRequest];
      [a1 setCurrentRequest:v5];

      v6 = [v3 response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v3 response];
        [a1 setResponse:v8];
      }

      v9 = [v3 earliestBeginDate];
      [a1 setEarliestBeginDate:v9];

      [a1 setCountOfBytesClientExpectsToSend:{objc_msgSend(v3, "countOfBytesClientExpectsToSend")}];
      [a1 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v3, "countOfBytesExpectedToReceive")}];
      v10 = [v3 taskDescription];
      [a1 setTaskDescription:v10];

      [v3 priority];
      [a1 setPriority:?];
      [a1 setPrefersIncrementalDelivery:{objc_msgSend(v3, "prefersIncrementalDelivery")}];
    }
  }

  return a1;
}

@end