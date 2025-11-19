@interface ACSURLSessionDataTask
- (ACSURLSessionDataTask)initWithNSURLDataTaskCreator:(id)a3 initialRequest:(id)a4 forSession:(id)a5;
@end

@implementation ACSURLSessionDataTask

- (ACSURLSessionDataTask)initWithNSURLDataTaskCreator:(id)a3 initialRequest:(id)a4 forSession:(id)a5
{
  v6.receiver = self;
  v6.super_class = ACSURLSessionDataTask;
  return [(ACSURLSessionTask *)&v6 initWithNSURLTaskCreator:a3 initialRequest:a4 forSession:a5];
}

@end