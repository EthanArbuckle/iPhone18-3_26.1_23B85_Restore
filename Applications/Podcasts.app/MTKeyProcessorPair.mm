@interface MTKeyProcessorPair
- (MTKeyProcessorPair)init;
- (MTKeyProcessorPair)initWithKey:(id)key processor:(id)processor;
- (MZKeyValueStoreTransactionProcessing)processor;
- (NSString)key;
@end

@implementation MTKeyProcessorPair

- (NSString)key
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (MZKeyValueStoreTransactionProcessing)processor
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (MTKeyProcessorPair)initWithKey:(id)key processor:(id)processor
{
  ObjectType = swift_getObjectType();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = (self + OBJC_IVAR___MTKeyProcessorPair_key);
  *v8 = v7;
  v8[1] = v9;
  *(self + OBJC_IVAR___MTKeyProcessorPair_processor) = processor;
  v11.receiver = self;
  v11.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(MTKeyProcessorPair *)&v11 init];
}

- (MTKeyProcessorPair)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end