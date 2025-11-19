@interface ACSURLSessionDownloadTask
- (ACSURLSessionDownloadTask)initWithNSURLDownloadTaskCreator:(id)a3 initialRequest:(id)a4 forSession:(id)a5;
- (NSURLRequest)originalRequest;
- (void)cancelByProducingResumeData:(id)a3;
@end

@implementation ACSURLSessionDownloadTask

- (NSURLRequest)originalRequest
{
  v3 = [(ACSURLSessionDownloadTask *)self _resumedOriginalRequest];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ACSURLSessionDownloadTask;
    v5 = [(ACSURLSessionTask *)&v8 originalRequest];
  }

  v6 = v5;

  return v6;
}

- (void)cancelByProducingResumeData:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSessionTask *)self _weakSession];
  [v5 _cancelDownloadTask:self byProducingResumeData:v4];
}

- (ACSURLSessionDownloadTask)initWithNSURLDownloadTaskCreator:(id)a3 initialRequest:(id)a4 forSession:(id)a5
{
  v6.receiver = self;
  v6.super_class = ACSURLSessionDownloadTask;
  return [(ACSURLSessionTask *)&v6 initWithNSURLTaskCreator:a3 initialRequest:a4 forSession:a5];
}

@end