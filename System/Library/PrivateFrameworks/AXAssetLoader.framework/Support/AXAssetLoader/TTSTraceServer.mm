@interface TTSTraceServer
+ (_TtC9axassetsd14TTSTraceServer)shared;
+ (void)setShared:(id)a3;
@end

@implementation TTSTraceServer

+ (_TtC9axassetsd14TTSTraceServer)shared
{
  if (qword_10001DF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static TTSTraceServer.shared;
}

+ (void)setShared:(id)a3
{
  v3 = qword_10001DF20;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static TTSTraceServer.shared;
  static TTSTraceServer.shared = v4;
}

@end