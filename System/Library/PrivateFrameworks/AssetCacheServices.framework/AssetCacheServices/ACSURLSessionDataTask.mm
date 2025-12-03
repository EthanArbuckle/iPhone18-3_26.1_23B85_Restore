@interface ACSURLSessionDataTask
- (ACSURLSessionDataTask)initWithNSURLDataTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session;
@end

@implementation ACSURLSessionDataTask

- (ACSURLSessionDataTask)initWithNSURLDataTaskCreator:(id)creator initialRequest:(id)request forSession:(id)session
{
  v6.receiver = self;
  v6.super_class = ACSURLSessionDataTask;
  return [(ACSURLSessionTask *)&v6 initWithNSURLTaskCreator:creator initialRequest:request forSession:session];
}

@end