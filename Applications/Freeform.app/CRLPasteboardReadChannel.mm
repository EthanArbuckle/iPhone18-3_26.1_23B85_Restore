@interface CRLPasteboardReadChannel
- (BOOL)isValid;
- (_TtC8Freeform24CRLPasteboardReadChannel)init;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)readFromOffset:(int64_t)offset length:(int64_t)length handler:(id)handler;
- (void)readFromOffsetAndWait:(int64_t)wait length:(int64_t)length handler:(id)handler;
@end

@implementation CRLPasteboardReadChannel

- (void)readFromOffset:(int64_t)offset length:(int64_t)length handler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  selfCopy = self;
  sub_100AC47A8(offset, length, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)readFromOffsetAndWait:(int64_t)wait length:(int64_t)length handler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  selfCopy = self;
  sub_100AC47A8(wait, length, selfCopy, v8);
  _Block_release(v8);

  _Block_release(v8);
}

- (void)close
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardDataManaging;
  swift_beginAccess();
  selfCopy = self;
  sub_100AC4738(v5, self + v3);
  swift_endAccess();
}

- (void)addBarrier:(id)barrier
{
  v3 = _Block_copy(barrier);
  v3[2]();

  _Block_release(v3);
}

- (BOOL)isValid
{
  v3 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardDataManaging;
  swift_beginAccess();
  sub_100AC54B8(self + v3, v5);
  LOBYTE(self) = v5[3] != 0;
  sub_100AC5528(v5);
  return self;
}

- (_TtC8Freeform24CRLPasteboardReadChannel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end