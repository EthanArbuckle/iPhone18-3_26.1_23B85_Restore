@interface ConversionTagDatabaseTransaction
- (_TtC20AttributionKitDaemon32ConversionTagDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon32ConversionTagDatabaseTransaction)initWithConnection:(id)a3;
@end

@implementation ConversionTagDatabaseTransaction

- (_TtC20AttributionKitDaemon32ConversionTagDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ConversionTagDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon32ConversionTagDatabaseTransaction)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(ConversionTagDatabaseSession *)&v5 initWithConnection:a3];
}

@end