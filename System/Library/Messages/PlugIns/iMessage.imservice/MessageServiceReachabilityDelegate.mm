@interface MessageServiceReachabilityDelegate
- (_TtC8iMessage34MessageServiceReachabilityDelegate)init;
- (_TtC8iMessage34MessageServiceReachabilityDelegate)initWithServiceSession:(id)session;
- (uint64_t)maxChatParticipantsForContext:;
@end

@implementation MessageServiceReachabilityDelegate

- (_TtC8iMessage34MessageServiceReachabilityDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8iMessage34MessageServiceReachabilityDelegate)initWithServiceSession:(id)session
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)maxChatParticipantsForContext:
{
  v0 = [objc_opt_self() sharedInstanceForBagType:1];
  v1 = sub_BD884();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_BDB24();

    swift_unknownObjectRelease();
  }

  else
  {

    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_94DA8(v7);
    return -1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return -1;
  }

  if (v4 <= 10)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

@end