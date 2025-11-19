@interface CHWorkoutDetailAwardTableViewCell
- (CGRect)badgeRect;
- (CHWorkoutDetailAwardTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForAchievement:(id)a3 badgeImageFactory:(id)a4 localizationProvider:(id)a5 isLastCell:(BOOL)a6;
@end

@implementation CHWorkoutDetailAwardTableViewCell

- (CHWorkoutDetailAwardTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100601B60(a3, a4, v6);
}

- (void)configureForAchievement:(id)a3 badgeImageFactory:(id)a4 localizationProvider:(id)a5 isLastCell:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_1006022F8(v10, v11, v12, a6);
}

- (CGRect)badgeRect
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_achievementBadgeView);
  v3 = self;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  UIEdgeInsets.init(uniform:)();
  v13 = v12;
  v15 = v14;

  v16 = sub_1002957AC(v5, v7, v9, v11, v13, v15);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end