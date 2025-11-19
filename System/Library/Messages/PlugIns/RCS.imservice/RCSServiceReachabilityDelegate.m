@interface RCSServiceReachabilityDelegate
- (BOOL)networkDataAvailable;
- (_TtC3RCS30RCSServiceReachabilityDelegate)init;
- (_TtC3RCS30RCSServiceReachabilityDelegate)initWithServiceSession:(id)a3;
- (int64_t)maxChatParticipantsForContext:(id)a3;
@end

@implementation RCSServiceReachabilityDelegate

- (int64_t)maxChatParticipantsForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_AA130(v4);

  return v6;
}

- (BOOL)networkDataAvailable
{
  v2 = self;
  v3 = [(RCSServiceReachabilityDelegate *)v2 serviceSession];
  if (v3 && (v4 = v3, v5 = [v3 networkMonitor], v4, v5))
  {
    v6 = [v5 immediatelyReachable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC3RCS30RCSServiceReachabilityDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC3RCS30RCSServiceReachabilityDelegate)initWithServiceSession:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end