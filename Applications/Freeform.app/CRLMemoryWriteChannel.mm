@interface CRLMemoryWriteChannel
- (_TtC8Freeform21CRLMemoryWriteChannel)init;
- (void)addBarrier:(id)barrier;
- (void)flushWithCompletion:(id)completion;
- (void)writeData:(id)data handler:(id)handler;
@end

@implementation CRLMemoryWriteChannel

- (void)writeData:(id)data handler:(id)handler
{
  v7 = type metadata accessor for DispatchData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  static DispatchData._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  dataCopy = data;
  selfCopy = self;
  DispatchData.append(_:)();
  swift_endAccess();
  v14 = DispatchData.count.getter();
  v11[2](v11, 1, v14, 0);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

- (void)flushWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)addBarrier:(id)barrier
{
  v3 = _Block_copy(barrier);
  v3[2]();

  _Block_release(v3);
}

- (_TtC8Freeform21CRLMemoryWriteChannel)init
{
  ObjectType = swift_getObjectType();
  static DispatchData.empty.getter();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(CRLMemoryWriteChannel *)&v5 init];
}

@end