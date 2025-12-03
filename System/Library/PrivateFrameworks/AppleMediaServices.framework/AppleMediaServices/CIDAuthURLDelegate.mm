@interface CIDAuthURLDelegate
- (void)AMSURLSession:(AMSURLSession *)session task:(NSURLSessionTask *)task handleAuthenticateRequest:(AMSAuthenticateRequest *)request completion:(id)completion;
@end

@implementation CIDAuthURLDelegate

- (void)AMSURLSession:(AMSURLSession *)session task:(NSURLSessionTask *)task handleAuthenticateRequest:(AMSAuthenticateRequest *)request completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = session;
  v11[3] = task;
  v11[4] = request;
  v11[5] = v10;
  v11[6] = self;
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FC6558, v11);
}

@end