@interface AllocatedTokenMetadataEntity
+ (id)databaseTable;
- (_TtC20AttributionKitDaemon28AllocatedTokenMetadataEntity)init;
- (_TtC20AttributionKitDaemon28AllocatedTokenMetadataEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (_TtC20AttributionKitDaemon28AllocatedTokenMetadataEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
@end

@implementation AllocatedTokenMetadataEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC20AttributionKitDaemon28AllocatedTokenMetadataEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for AllocatedTokenMetadataEntity();
  v8 = [(SQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:v6];

  return v8;
}

- (_TtC20AttributionKitDaemon28AllocatedTokenMetadataEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AllocatedTokenMetadataEntity();
  return [(SQLiteEntity *)&v7 initWithPersistentID:a3 onConnection:a4];
}

- (_TtC20AttributionKitDaemon28AllocatedTokenMetadataEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AllocatedTokenMetadataEntity();
  return [(AllocatedTokenMetadataEntity *)&v3 init];
}

@end