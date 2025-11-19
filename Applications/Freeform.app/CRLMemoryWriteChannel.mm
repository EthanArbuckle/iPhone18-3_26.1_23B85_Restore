@interface CRLMemoryWriteChannel
- (_TtC8Freeform21CRLMemoryWriteChannel)init;
- (void)addBarrier:(id)a3;
- (void)flushWithCompletion:(id)a3;
- (void)writeData:(id)a3 handler:(id)a4;
@end

@implementation CRLMemoryWriteChannel

- (void)writeData:(id)a3 handler:(id)a4
{
  v7 = type metadata accessor for DispatchData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static DispatchData._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v12 = a3;
  v13 = self;
  DispatchData.append(_:)();
  swift_endAccess();
  v14 = DispatchData.count.getter();
  v11[2](v11, 1, v14, 0);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

- (void)flushWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)addBarrier:(id)a3
{
  v3 = _Block_copy(a3);
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