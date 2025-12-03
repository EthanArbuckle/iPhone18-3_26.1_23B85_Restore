@interface ACSURLSessionUploadTask
- (ACSURLSessionUploadTask)initWithNSURLUploadTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session;
@end

@implementation ACSURLSessionUploadTask

- (ACSURLSessionUploadTask)initWithNSURLUploadTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session
{
  v6.receiver = self;
  v6.super_class = ACSURLSessionUploadTask;
  return [(ACSURLSessionTask *)&v6 initWithNSURLTaskCreator:creator initialRequest:request forSession:session];
}

@end