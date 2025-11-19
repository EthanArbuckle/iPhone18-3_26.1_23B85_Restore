@interface CHAchievementsCollectionViewCell
- (CGRect)badgeRect;
- (CHAchievementsCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyViewConstraints;
- (void)prepareForReuse;
@end

@implementation CHAchievementsCollectionViewCell

- (CHAchievementsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CHAchievementsCollectionViewCell;
  v3 = [(CHAchievementsCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[CHAchievementsCellContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    cellContentView = v3->_cellContentView;
    v3->_cellContentView = v4;

    [(CHAchievementsCellContentView *)v3->_cellContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(CHAchievementsCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_cellContentView];

    [(CHAchievementsCollectionViewCell *)v3 applyViewConstraints];
  }

  return v3;
}

- (void)applyViewConstraints
{
  v3 = [(CHAchievementsCellContentView *)self->_cellContentView leadingAnchor];
  v4 = [(CHAchievementsCollectionViewCell *)self contentView];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [(CHAchievementsCellContentView *)self->_cellContentView topAnchor];
  v8 = [(CHAchievementsCollectionViewCell *)self contentView];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(CHAchievementsCellContentView *)self->_cellContentView trailingAnchor];
  v12 = [(CHAchievementsCollectionViewCell *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v18 = [(CHAchievementsCellContentView *)self->_cellContentView bottomAnchor];
  v15 = [(CHAchievementsCollectionViewCell *)self contentView];
  v16 = [v15 bottomAnchor];
  v17 = [v18 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CHAchievementsCollectionViewCell;
  [(CHAchievementsCollectionViewCell *)&v3 prepareForReuse];
  [(CHAchievementsCellContentView *)self->_cellContentView prepareForReuse];
}

- (CGRect)badgeRect
{
  [(CHAchievementsCellContentView *)self->_cellContentView badgeRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end