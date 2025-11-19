@interface ExportedScreenTimeMonitor
- (_TtC13AskPermission25ExportedScreenTimeMonitor)init;
- (void)appExceptionsDidUpdate;
@end

@implementation ExportedScreenTimeMonitor

- (void)appExceptionsDidUpdate
{
  v2 = self;
  sub_24106E964();
}

- (_TtC13AskPermission25ExportedScreenTimeMonitor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExportedScreenTimeMonitor();
  return [(ExportedScreenTimeMonitor *)&v3 init];
}

@end