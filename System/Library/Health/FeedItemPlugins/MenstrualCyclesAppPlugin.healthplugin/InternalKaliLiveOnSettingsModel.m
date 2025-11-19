@interface InternalKaliLiveOnSettingsModel
- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
@end

@implementation InternalKaliLiveOnSettingsModel

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E08B554(&unk_2A24B9698, sub_29E08BB88, &unk_2A24B96B0);
}

- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E08B554(&unk_2A24B9648, sub_29E08B82C, &unk_2A24B9660);
}

@end