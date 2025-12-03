@interface InternalLunaLiveOnSettingsModel
- (_TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel)init;
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)settingsManagerDidUpdateAnalysisSettings:(id)settings;
- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
@end

@implementation InternalLunaLiveOnSettingsModel

- (_TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;
  selfCopy = self;
  sub_29E08B17C(analysisCopy);
}

- (void)settingsManagerDidUpdateAnalysisSettings:(id)settings
{
  sub_29E2C3714();
  v5[2] = self;
  selfCopy = self;
  sub_29E0D8C74(sub_29E08B93C, v5);
}

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_29E08B554(&unk_2A24B9760, sub_29E08BB94, &unk_2A24B9778);
}

- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_29E08B554(&unk_2A24B9710, sub_29E08B918, &unk_2A24B9728);
}

@end