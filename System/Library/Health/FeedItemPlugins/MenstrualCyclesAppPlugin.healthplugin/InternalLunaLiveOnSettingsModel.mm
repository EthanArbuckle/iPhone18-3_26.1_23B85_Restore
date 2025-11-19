@interface InternalLunaLiveOnSettingsModel
- (_TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel)init;
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)settingsManagerDidUpdateAnalysisSettings:(id)a3;
- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
@end

@implementation InternalLunaLiveOnSettingsModel

- (_TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E08B17C(v7);
}

- (void)settingsManagerDidUpdateAnalysisSettings:(id)a3
{
  sub_29E2C3714();
  v5[2] = self;
  v4 = self;
  sub_29E0D8C74(sub_29E08B93C, v5);
}

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E08B554(&unk_2A24B9760, sub_29E08BB94, &unk_2A24B9778);
}

- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E08B554(&unk_2A24B9710, sub_29E08B918, &unk_2A24B9728);
}

@end