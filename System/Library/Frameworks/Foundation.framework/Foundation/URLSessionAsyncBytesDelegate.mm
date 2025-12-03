@interface URLSessionAsyncBytesDelegate
- (_TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate)init;
- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation URLSessionAsyncBytesDelegate

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  _Block_copy(v10);
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  selfCopy = self;
  specialized URLSessionAsyncBytesDelegate.urlSession(_:dataTask:didReceive:completionHandler:)(responseCopy, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  selfCopy = self;
  v14 = specialized Data.init(referencing:)(dataCopy);
  v16 = v15;

  _Block_copy(v10);
  specialized URLSessionAsyncBytesDelegate.urlSession(_:dataTask:_didReceive:completionHandler:)(taskCopy, v14, v16, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
  outlined consume of Data._Representation(v14, v16);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  specialized URLSessionAsyncBytesDelegate.urlSession(_:task:didCompleteWithError:)(error);
}

- (_TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end