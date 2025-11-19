@interface APExtensionMonitorClient
- (_TtC13AppProtection24APExtensionMonitorClient)init;
- (void)beginMonitoringForExtensionUUID:(id)a3 monitorUUID:(id)a4;
- (void)endMonitoringForMonitorUUID:(id)a3;
@end

@implementation APExtensionMonitorClient

- (void)beginMonitoringForExtensionUUID:(id)a3 monitorUUID:(id)a4
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17 - v13;
  sub_185B67ADC();
  sub_185B67ADC();
  v15 = self;
  sub_185B44980(v14, v11);

  v16 = *(v6 + 8);
  v16(v11, v5);
  v16(v14, v5);
}

- (void)endMonitoringForMonitorUUID:(id)a3
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  v10 = self;
  sub_185B4542C(v9);

  (*(v5 + 8))(v9, v4);
}

- (_TtC13AppProtection24APExtensionMonitorClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end