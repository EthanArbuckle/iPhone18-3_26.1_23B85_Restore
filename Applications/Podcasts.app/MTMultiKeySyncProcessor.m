@interface MTMultiKeySyncProcessor
- (BOOL)hasLocalChanges;
- (BOOL)requiresNextGetTransaction;
- (MTMultiKeySyncProcessor)init;
- (MTMultiKeySyncProcessor)initWithKeysAndProcessors:(id)a3;
- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5;
- (id)processorForKey:(id)a3;
- (id)versionForGetTransaction:(id)a3 key:(id)a4;
- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4;
@end

@implementation MTMultiKeySyncProcessor

- (MTMultiKeySyncProcessor)initWithKeysAndProcessors:(id)a3
{
  type metadata accessor for KeyProcessorPair();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return MultiKeySyncProcessor.init(keysAndProcessors:)(v3);
}

- (id)processorForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
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
  v2 = self;
  v3 = MultiKeySyncProcessor.hasLocalChanges()();

  return v3;
}

- (BOOL)requiresNextGetTransaction
{
  v2 = self;
  v3 = MultiKeySyncProcessor.requiresNextGetTransaction()();

  return v3;
}

- (id)versionForGetTransaction:(id)a3 key:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  object = MultiKeySyncProcessor.version(forGetTransaction:key:)(v9, v11).value._object;

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

- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = self;
  v13 = MultiKeySyncProcessor.data(forSetTransaction:key:version:)(v11, v8, v10, a5);
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

- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  if (a4)
  {
    v16 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (a6)
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
  MultiKeySyncProcessor.success(forGetTransaction:with:forKey:version:finishedBlock:)(a3, a4, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(a4, v18);
}

- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  if (a4)
  {
    v16 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (a6)
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
  MultiKeySyncProcessor.success(forSetTransaction:with:forKey:version:finishedBlock:)(a3, a4, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(a4, v18);
}

- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  if (a4)
  {
    v16 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (a6)
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
  MultiKeySyncProcessor.conflict(forSetTransaction:with:forKey:version:finishedBlock:)(a3, a4, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(a4, v18);
}

- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for SyncKeysRepository();
  v4 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.podcastsDomainVersion.setter();
}

@end