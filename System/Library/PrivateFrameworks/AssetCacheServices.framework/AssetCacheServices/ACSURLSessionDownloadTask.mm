@interface ACSURLSessionDownloadTask
- (ACSURLSessionDownloadTask)initWithNSURLDownloadTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session;
- (NSURLRequest)originalRequest;
- (void)cancelByProducingResumeData:(id)data;
@end

@implementation ACSURLSessionDownloadTask

- (NSURLRequest)originalRequest
{
  _resumedOriginalRequest = [(ACSURLSessionDownloadTask *)self _resumedOriginalRequest];
  v4 = _resumedOriginalRequest;
  if (_resumedOriginalRequest)
  {
    originalRequest = _resumedOriginalRequest;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ACSURLSessionDownloadTask;
    originalRequest = [(ACSURLSessionTask *)&v8 originalRequest];
  }

  v6 = originalRequest;

  return v6;
}

- (void)cancelByProducingResumeData:(id)data
{
  dataCopy = data;
  _weakSession = [(ACSURLSessionTask *)self _weakSession];
  [_weakSession _cancelDownloadTask:self byProducingResumeData:dataCopy];
}

- (ACSURLSessionDownloadTask)initWithNSURLDownloadTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session
{
  v6.receiver = self;
  v6.super_class = ACSURLSessionDownloadTask;
  return [(ACSURLSessionTask *)&v6 initWithNSURLTaskCreator:creator initialRequest:request forSession:session];
}

@end