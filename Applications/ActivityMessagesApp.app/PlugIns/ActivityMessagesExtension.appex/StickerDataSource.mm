@interface StickerDataSource
- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index;
- (id)stickersForAchievement:(id)achievement;
- (id)stickersForAchievements:(id)achievements;
- (int64_t)numberOfStickersInStickerBrowserView:(id)view;
@end

@implementation StickerDataSource

- (int64_t)numberOfStickersInStickerBrowserView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_10000BDD4();

  return v6;
}

- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10000BFC4(index);

  return v8;
}

- (id)stickersForAchievements:(id)achievements
{
  sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
  v4 = sub_10000FAAC();
  selfCopy = self;
  sub_100003B38(v4);

  sub_10000BAB0(0, &qword_100018B38, MSSticker_ptr);
  v6.super.isa = sub_10000FA9C().super.isa;

  return v6.super.isa;
}

- (id)stickersForAchievement:(id)achievement
{
  achievementCopy = achievement;
  selfCopy = self;
  sub_100004D44(achievementCopy);

  sub_10000BAB0(0, &qword_100018B38, MSSticker_ptr);
  v6.super.isa = sub_10000FA9C().super.isa;

  return v6.super.isa;
}

@end