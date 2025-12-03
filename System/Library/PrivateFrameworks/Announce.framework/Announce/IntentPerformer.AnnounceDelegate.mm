@interface IntentPerformer.AnnounceDelegate
- (_TtCC8Announce15IntentPerformerP33_C74B68F3225F20A6CD7178FA6C65F87716AnnounceDelegate)init;
- (void)connectionInvalidated;
@end

@implementation IntentPerformer.AnnounceDelegate

- (void)connectionInvalidated
{
  v1 = *&self[OBJC_IVAR____TtCC8Announce15IntentPerformerP33_C74B68F3225F20A6CD7178FA6C65F87716AnnounceDelegate_cleanup];
  v2 = *&self[OBJC_IVAR____TtCC8Announce15IntentPerformerP33_C74B68F3225F20A6CD7178FA6C65F87716AnnounceDelegate_cleanup + 8];
  selfCopy = self;
  v1();
}

- (_TtCC8Announce15IntentPerformerP33_C74B68F3225F20A6CD7178FA6C65F87716AnnounceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end