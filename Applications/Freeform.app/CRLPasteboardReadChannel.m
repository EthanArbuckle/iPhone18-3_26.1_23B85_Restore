@interface CRLPasteboardReadChannel
- (BOOL)isValid;
- (_TtC8Freeform24CRLPasteboardReadChannel)init;
- (void)addBarrier:(id)a3;
- (void)close;
- (void)readFromOffset:(int64_t)a3 length:(int64_t)a4 handler:(id)a5;
- (void)readFromOffsetAndWait:(int64_t)a3 length:(int64_t)a4 handler:(id)a5;
@end

@implementation CRLPasteboardReadChannel

- (void)readFromOffset:(int64_t)a3 length:(int64_t)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_100AC47A8(a3, a4, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)readFromOffsetAndWait:(int64_t)a3 length:(int64_t)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_100AC47A8(a3, a4, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

- (void)close
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardDataManaging;
  swift_beginAccess();
  v4 = self;
  sub_100AC4738(v5, self + v3);
  swift_endAccess();
}

- (void)addBarrier:(id)a3
{
  v3 = _Block_copy(a3);
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