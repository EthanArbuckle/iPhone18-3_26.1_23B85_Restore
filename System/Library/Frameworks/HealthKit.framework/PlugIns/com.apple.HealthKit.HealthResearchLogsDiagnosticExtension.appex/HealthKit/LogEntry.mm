@interface LogEntry
- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)init;
- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)initWithCategory:(id)a3 composedMessage:(id)a4 date:(id)a5 formatString:(id)a6 logLevel:(int64_t)a7 processIdentifier:(int64_t)a8 process:(id)a9 subsystem:(id)a10;
@end

@implementation LogEntry

- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)initWithCategory:(id)a3 composedMessage:(id)a4 date:(id)a5 formatString:(id)a6 logLevel:(int64_t)a7 processIdentifier:(int64_t)a8 process:(id)a9 subsystem:(id)a10
{
  v30 = a8;
  v31 = self;
  v32 = a7;
  v10 = sub_1000077E8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007808();
  v16 = v15;
  v17 = sub_100007808();
  v19 = v18;
  sub_1000077C8();
  v20 = sub_100007808();
  v22 = v21;
  v23 = sub_100007808();
  v25 = v24;
  v26 = sub_100007808();
  return sub_10000404C(v14, v16, v17, v19, v13, v20, v22, v32, v30, v23, v25, v26, v27);
}

- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end