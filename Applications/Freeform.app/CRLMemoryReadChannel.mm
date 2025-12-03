@interface CRLMemoryReadChannel
- (_TtC8Freeform20CRLMemoryReadChannel)init;
- (void)addBarrier:(id)barrier;
- (void)readFromOffset:(int64_t)offset length:(int64_t)length handler:(id)handler;
- (void)readFromOffsetAndWait:(int64_t)wait length:(int64_t)length handler:(id)handler;
@end

@implementation CRLMemoryReadChannel

- (void)readFromOffset:(int64_t)offset length:(int64_t)length handler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  selfCopy = self;
  sub_100D32A48(offset, length, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)readFromOffsetAndWait:(int64_t)wait length:(int64_t)length handler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  selfCopy = self;
  sub_100D32A48(wait, length, selfCopy, v8);
  _Block_release(v8);

  _Block_release(v8);
}

- (void)addBarrier:(id)barrier
{
  v3 = _Block_copy(barrier);
  v3[2]();

  _Block_release(v3);
}

- (_TtC8Freeform20CRLMemoryReadChannel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end