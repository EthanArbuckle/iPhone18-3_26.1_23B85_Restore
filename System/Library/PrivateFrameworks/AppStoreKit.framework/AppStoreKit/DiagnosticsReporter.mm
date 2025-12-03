@interface DiagnosticsReporter
- (void)errorDidOccur:(id)occur;
- (void)incidentsDidOccur:(id)occur;
@end

@implementation DiagnosticsReporter

- (void)errorDidOccur:(id)occur
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  v7 = _s11AppStoreKit25RenderPipelineDiagnosticsV5error2ofs5Error_pSg10Foundation12NotificationV_tFZ_0();
  if (v7)
  {
    v8 = v7;
    sub_1E19E3BC4(v7);
  }

  (*(v4 + 8))(v6, v3);
}

- (void)incidentsDidOccur:(id)occur
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  v7 = _s11AppStoreKit25RenderPipelineDiagnosticsV9incidents2ofSay9JetEngine10JSIncidentVGSg10Foundation12NotificationV_tFZ_0();
  if (v7)
  {
    sub_1E19E41C8(v7);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
}

@end