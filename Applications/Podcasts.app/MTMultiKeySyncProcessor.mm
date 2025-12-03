@interface MTMultiKeySyncProcessor
- (BOOL)hasLocalChanges;
- (BOOL)requiresNextGetTransaction;
- (MTMultiKeySyncProcessor)init;
- (MTMultiKeySyncProcessor)initWithKeysAndProcessors:(id)processors;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
- (id)processorForKey:(id)key;
- (id)versionForGetTransaction:(id)transaction key:(id)key;
- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version;
@end

@implementation MTMultiKeySyncProcessor

- (MTMultiKeySyncProcessor)initWithKeysAndProcessors:(id)processors
{
  type metadata accessor for KeyProcessorPair();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return MultiKeySyncProcessor.init(keysAndProcessors:)(v3);
}

- (id)processorForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = MultiKeySyncProcessor.processor(for:)(v4, v6);

  return v8;
}

- (MTMultiKeySyncProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)hasLocalChanges
{
  selfCopy = self;
  v3 = MultiKeySyncProcessor.hasLocalChanges()();

  return v3;
}

- (BOOL)requiresNextGetTransaction
{
  selfCopy = self;
  v3 = MultiKeySyncProcessor.requiresNextGetTransaction()();

  return v3;
}

- (id)versionForGetTransaction:(id)transaction key:(id)key
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  transactionCopy = transaction;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  object = MultiKeySyncProcessor.version(forGetTransaction:key:)(transactionCopy, v11).value._object;

  if (object)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  transactionCopy = transaction;
  selfCopy = self;
  v13 = MultiKeySyncProcessor.data(forSetTransaction:key:version:)(transactionCopy, v8, v10, version);
  v15 = v14;

  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1001F6D60(v13, v15);
    v16 = isa;
  }

  return v16;
}

- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  v11 = _Block_copy(block);
  transactionCopy = transaction;
  keyCopy = key;
  versionCopy = version;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (version)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v11)
    {
LABEL_6:
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      v26 = sub_100202D10;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
  v25 = 0;
LABEL_9:
  MultiKeySyncProcessor.success(forGetTransaction:with:forKey:version:finishedBlock:)(transaction, data, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(data, v18);
}

- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  v11 = _Block_copy(block);
  transactionCopy = transaction;
  keyCopy = key;
  versionCopy = version;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (version)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v11)
    {
LABEL_6:
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      v26 = sub_100202D10;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
  v25 = 0;
LABEL_9:
  MultiKeySyncProcessor.success(forSetTransaction:with:forKey:version:finishedBlock:)(transaction, data, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(data, v18);
}

- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  v11 = _Block_copy(block);
  transactionCopy = transaction;
  keyCopy = key;
  versionCopy = version;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (version)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v11)
    {
LABEL_6:
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      v26 = sub_100202CB8;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
  v25 = 0;
LABEL_9:
  MultiKeySyncProcessor.conflict(forSetTransaction:with:forKey:version:finishedBlock:)(transaction, data, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(data, v18);
}

- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version
{
  if (version)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for SyncKeysRepository();
  v4 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.podcastsDomainVersion.setter();
}

@end