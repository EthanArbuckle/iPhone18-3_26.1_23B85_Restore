@interface RCSServiceReachabilityDelegate
- (BOOL)networkDataAvailable;
- (_TtC3RCS30RCSServiceReachabilityDelegate)init;
- (_TtC3RCS30RCSServiceReachabilityDelegate)initWithServiceSession:(id)session;
- (int64_t)maxChatParticipantsForContext:(id)context;
@end

@implementation RCSServiceReachabilityDelegate

- (int64_t)maxChatParticipantsForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_AA130(contextCopy);

  return v6;
}

- (BOOL)networkDataAvailable
{
  selfCopy = self;
  serviceSession = [(RCSServiceReachabilityDelegate *)selfCopy serviceSession];
  if (serviceSession && (v4 = serviceSession, v5 = [serviceSession networkMonitor], v4, v5))
  {
    immediatelyReachable = [v5 immediatelyReachable];
  }

  else
  {
    immediatelyReachable = 0;
  }

  return immediatelyReachable;
}

- (_TtC3RCS30RCSServiceReachabilityDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC3RCS30RCSServiceReachabilityDelegate)initWithServiceSession:(id)session
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end