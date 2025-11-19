@interface CRLMemoryReadChannel
- (_TtC8Freeform20CRLMemoryReadChannel)init;
- (void)addBarrier:(id)a3;
- (void)readFromOffset:(int64_t)a3 length:(int64_t)a4 handler:(id)a5;
- (void)readFromOffsetAndWait:(int64_t)a3 length:(int64_t)a4 handler:(id)a5;
@end

@implementation CRLMemoryReadChannel

- (void)readFromOffset:(int64_t)a3 length:(int64_t)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_100D32A48(a3, a4, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)readFromOffsetAndWait:(int64_t)a3 length:(int64_t)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_100D32A48(a3, a4, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

- (void)addBarrier:(id)a3
{
  v3 = _Block_copy(a3);
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