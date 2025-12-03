@interface CHWorkoutDetailAwardTableViewCell
- (CGRect)badgeRect;
- (CHWorkoutDetailAwardTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForAchievement:(id)achievement badgeImageFactory:(id)factory localizationProvider:(id)provider isLastCell:(BOOL)cell;
@end

@implementation CHWorkoutDetailAwardTableViewCell

- (CHWorkoutDetailAwardTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100601B60(style, identifier, v6);
}

- (void)configureForAchievement:(id)achievement badgeImageFactory:(id)factory localizationProvider:(id)provider isLastCell:(BOOL)cell
{
  achievementCopy = achievement;
  factoryCopy = factory;
  providerCopy = provider;
  selfCopy = self;
  sub_1006022F8(achievementCopy, factoryCopy, providerCopy, cell);
}

- (CGRect)badgeRect
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_achievementBadgeView);
  selfCopy = self;
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