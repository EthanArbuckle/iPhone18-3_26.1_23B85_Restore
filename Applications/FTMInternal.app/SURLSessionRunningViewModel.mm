@interface SURLSessionRunningViewModel
- (_TtC11FTMInternal27SURLSessionRunningViewModel)init;
- (void)URLSession:(id)session didCreateTask:(id)task;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:;
@end

@implementation SURLSessionRunningViewModel

- (_TtC11FTMInternal27SURLSessionRunningViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002EED40;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0xD000000000000032;
  *(v13 + 40) = 0x80000001002BDCF0;
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  print(_:separator:terminator:)();

  (*(v9 + 8))(v12, v8);
}

- (void)URLSession:(id)session didCreateTask:(id)task
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_10023B778(taskCopy, &unk_10031FB90, sub_10023C080, &unk_10031FBA8);
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_10023B778(taskCopy, &unk_10031FB40, sub_10023C308, &unk_10031FB58);
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_10023B778(taskCopy, &unk_10031FAF0, sub_10023C024, &unk_10031FB08);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  sub_10023BA98(taskCopy, metricsCopy);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_10023A438(sessionCopy, taskCopy, error);
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10021F6F4(v0, qword_100382528);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100223114(0xD000000000000033, 0x80000001002BDC80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_1001A5654(v3);
  }
}

@end