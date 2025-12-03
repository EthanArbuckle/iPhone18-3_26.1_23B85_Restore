@interface InternalKaliLiveOnSettingsModel
- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
@end

@implementation InternalKaliLiveOnSettingsModel

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_29E08B554(&unk_2A24B9698, sub_29E08BB88, &unk_2A24B96B0);
}

- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_29E08B554(&unk_2A24B9648, sub_29E08B82C, &unk_2A24B9660);
}

@end