@interface AppDistributorMetadataEntity
+ (id)databaseTable;
- (_TtC20AttributionKitDaemon28AppDistributorMetadataEntity)init;
- (_TtC20AttributionKitDaemon28AppDistributorMetadataEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (_TtC20AttributionKitDaemon28AppDistributorMetadataEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
@end

@implementation AppDistributorMetadataEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC20AttributionKitDaemon28AppDistributorMetadataEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for AppDistributorMetadataEntity();
  v8 = [(SQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:v6];

  return v8;
}

- (_TtC20AttributionKitDaemon28AppDistributorMetadataEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppDistributorMetadataEntity();
  return [(SQLiteEntity *)&v7 initWithPersistentID:a3 onConnection:a4];
}

- (_TtC20AttributionKitDaemon28AppDistributorMetadataEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDistributorMetadataEntity();
  return [(AppDistributorMetadataEntity *)&v3 init];
}

@end