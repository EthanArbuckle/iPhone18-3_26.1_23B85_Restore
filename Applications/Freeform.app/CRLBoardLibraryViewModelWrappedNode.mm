@interface CRLBoardLibraryViewModelWrappedNode
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSArray)children;
- (_TtC8Freeform35CRLBoardLibraryViewModelWrappedNode)init;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)setChildren:(id)children;
@end

@implementation CRLBoardLibraryViewModelWrappedNode

- (NSArray)children
{
  swift_getObjectType();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setChildren:(id)children
{
  swift_getObjectType();
  *(self + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_children) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100A13268(v8);

  sub_10000CAAC(v8, &unk_1019F4D00);
  return v6 & 1;
}

- (_TtC8Freeform35CRLBoardLibraryViewModelWrappedNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  swift_getObjCClassMetadata();
  dataCopy = data;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100A178C8(&unk_101A0CAF8, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002640C(v7, v9);

  return v11;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  _Block_copy(v5);
  selfCopy = self;
  v7 = sub_100A17C58(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

@end