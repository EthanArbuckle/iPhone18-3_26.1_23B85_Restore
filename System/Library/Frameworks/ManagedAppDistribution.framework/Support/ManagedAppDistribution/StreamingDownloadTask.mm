@interface StreamingDownloadTask
- (_TtC28ManagedAppDistributionDaemon21StreamingDownloadTask)init;
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)task _didReceiveData:(NSData *)data completionHandler:(id)handler;
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)task didReceiveResponse:(NSURLResponse *)response completionHandler:(id)handler;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task _willSendRequestForEstablishedConnection:(NSURLRequest *)connection completionHandler:(id)handler;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation StreamingDownloadTask

- (_TtC28ManagedAppDistributionDaemon21StreamingDownloadTask)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler
{
  v13 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = session;
  v17[3] = task;
  v17[4] = redirection;
  v17[5] = request;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1006A1788;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1006A1790;
  v20[5] = v19;
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;

  sub_100521E40(0, 0, v15, &unk_1006A1798, v20);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = session;
  v13[6] = task;
  v13[7] = error;
  sessionCopy = session;
  taskCopy = task;

  errorCopy = error;
  sub_1004A673C(0, 0, v11, &unk_1006A1748, v13);
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task _willSendRequestForEstablishedConnection:(NSURLRequest *)connection completionHandler:(id)handler
{
  v11 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = session;
  v15[3] = task;
  v15[4] = connection;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006A1710;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006A1718;
  v18[5] = v17;
  sessionCopy = session;
  taskCopy = task;
  connectionCopy = connection;

  sub_100521E40(0, 0, v13, &unk_1006A1720, v18);
}

- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)task didReceiveResponse:(NSURLResponse *)response completionHandler:(id)handler
{
  v11 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = session;
  v15[3] = task;
  v15[4] = response;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006A16D8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006A16E0;
  v18[5] = v17;
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;

  sub_100521E40(0, 0, v13, &unk_1006A16E8, v18);
}

- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)task _didReceiveData:(NSData *)data completionHandler:(id)handler
{
  v11 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = session;
  v15[3] = task;
  v15[4] = data;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006A16A0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006A16A8;
  v18[5] = v17;
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;

  sub_100521E40(0, 0, v13, &unk_1006A16B0, v18);
}

@end