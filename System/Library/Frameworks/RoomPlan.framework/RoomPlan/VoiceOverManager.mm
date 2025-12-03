@interface VoiceOverManager
- (void)announcementFinished:(id)finished;
@end

@implementation VoiceOverManager

- (void)announcementFinished:(id)finished
{
  v4 = sub_23AA0BD14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0BD04();
  v9 = *(v5 + 8);

  v9(v8, v4);
  self->isAnnouncingNewScanItems[0] = 0;
}

@end