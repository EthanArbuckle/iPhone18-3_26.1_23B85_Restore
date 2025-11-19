@interface StickerDataSource
- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4;
- (id)stickersForAchievement:(id)a3;
- (id)stickersForAchievements:(id)a3;
- (int64_t)numberOfStickersInStickerBrowserView:(id)a3;
@end

@implementation StickerDataSource

- (int64_t)numberOfStickersInStickerBrowserView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000BDD4();

  return v6;
}

- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10000BFC4(a4);

  return v8;
}

- (id)stickersForAchievements:(id)a3
{
  sub_10000BAB0(0, &qword_100018B50, ACHAchievement_ptr);
  v4 = sub_10000FAAC();
  v5 = self;
  sub_100003B38(v4);

  sub_10000BAB0(0, &qword_100018B38, MSSticker_ptr);
  v6.super.isa = sub_10000FA9C().super.isa;

  return v6.super.isa;
}

- (id)stickersForAchievement:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100004D44(v4);

  sub_10000BAB0(0, &qword_100018B38, MSSticker_ptr);
  v6.super.isa = sub_10000FA9C().super.isa;

  return v6.super.isa;
}

@end