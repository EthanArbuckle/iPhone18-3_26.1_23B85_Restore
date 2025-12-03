@interface CRLLastSubmittedTaskQueue
+ (_TtC8Freeform25CRLLastSubmittedTaskQueue)taskQueueWithQoSAsBackgroundWithLabel:(id)label;
- (_TtC8Freeform25CRLLastSubmittedTaskQueue)init;
- (_TtC8Freeform25CRLLastSubmittedTaskQueue)initWithLabel:(id)label;
- (void)performAsync:(id)async;
@end

@implementation CRLLastSubmittedTaskQueue

- (_TtC8Freeform25CRLLastSubmittedTaskQueue)initWithLabel:(id)label
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static DispatchQoS.userInitiated.getter();
  v10 = objc_allocWithZone(ObjectType);
  v11 = CRLLastSubmittedTaskQueue.init(label:qos:)(v7, v9, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (void)performAsync:(id)async
{
  v4 = _Block_copy(async);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100877818(sub_100685EBC, v5);
}

+ (_TtC8Freeform25CRLLastSubmittedTaskQueue)taskQueueWithQoSAsBackgroundWithLabel:(id)label
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static DispatchQoS.background.getter();
  v10 = objc_allocWithZone(ObjCClassMetadata);
  v11 = CRLLastSubmittedTaskQueue.init(label:qos:)(v7, v9, v6);

  return v11;
}

- (_TtC8Freeform25CRLLastSubmittedTaskQueue)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end