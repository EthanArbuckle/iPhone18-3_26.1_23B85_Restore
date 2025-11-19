@interface SURLSessionRunningViewModel
- (_TtC11FTMInternal27SURLSessionRunningViewModel)init;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:;
@end

@implementation SURLSessionRunningViewModel

- (_TtC11FTMInternal27SURLSessionRunningViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
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
  v14 = a3;
  v15 = a4;
  v16 = self;
  print(_:separator:terminator:)();

  (*(v9 + 8))(v12, v8);
}

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10023B778(v7, &unk_10031FB90, sub_10023C080, &unk_10031FBA8);
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10023B778(v10, &unk_10031FB40, sub_10023C308, &unk_10031FB58);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10023B778(v10, &unk_10031FAF0, sub_10023C024, &unk_10031FB08);
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10023BA98(v9, v10);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10023A438(v8, v9, a5);
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