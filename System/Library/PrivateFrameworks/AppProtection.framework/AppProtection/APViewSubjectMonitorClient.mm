@interface APViewSubjectMonitorClient
- (_TtC13AppProtection26APViewSubjectMonitorClient)init;
- (void)beginMonitoringForViewSubjectBundleID:(id)d monitorUUID:(id)iD;
- (void)endMonitoringForMonitorUUID:(id)d;
@end

@implementation APViewSubjectMonitorClient

- (void)beginMonitoringForViewSubjectBundleID:(id)d monitorUUID:(id)iD
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_185B67E4C();
  v13 = v12;
  sub_185B67ADC();
  selfCopy = self;
  sub_185B549A0(v11, v13, v10);

  (*(v6 + 8))(v10, v5);
}

- (void)endMonitoringForMonitorUUID:(id)d
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  selfCopy = self;
  sub_185B551EC(v9);

  (*(v5 + 8))(v9, v4);
}

- (_TtC13AppProtection26APViewSubjectMonitorClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end