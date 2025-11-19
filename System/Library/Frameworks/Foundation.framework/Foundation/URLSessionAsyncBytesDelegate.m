@interface URLSessionAsyncBytesDelegate
- (_TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate)init;
- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation URLSessionAsyncBytesDelegate

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  specialized URLSessionAsyncBytesDelegate.urlSession(_:dataTask:didReceive:completionHandler:)(v13, v14, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17 = self;
  v14 = specialized Data.init(referencing:)(v13);
  v16 = v15;

  _Block_copy(v10);
  specialized URLSessionAsyncBytesDelegate.urlSession(_:dataTask:_didReceive:completionHandler:)(v12, v14, v16, v17, v10);
  _Block_release(v10);
  _Block_release(v10);
  outlined consume of Data._Representation(v14, v16);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  specialized URLSessionAsyncBytesDelegate.urlSession(_:task:didCompleteWithError:)(a5);
}

- (_TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end