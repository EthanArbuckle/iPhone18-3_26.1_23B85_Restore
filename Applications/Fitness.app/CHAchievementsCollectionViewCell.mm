@interface CHAchievementsCollectionViewCell
- (CGRect)badgeRect;
- (CHAchievementsCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyViewConstraints;
- (void)prepareForReuse;
@end

@implementation CHAchievementsCollectionViewCell

- (CHAchievementsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CHAchievementsCollectionViewCell;
  v3 = [(CHAchievementsCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[CHAchievementsCellContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    cellContentView = v3->_cellContentView;
    v3->_cellContentView = v4;

    [(CHAchievementsCellContentView *)v3->_cellContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CHAchievementsCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_cellContentView];

    [(CHAchievementsCollectionViewCell *)v3 applyViewConstraints];
  }

  return v3;
}

- (void)applyViewConstraints
{
  leadingAnchor = [(CHAchievementsCellContentView *)self->_cellContentView leadingAnchor];
  contentView = [(CHAchievementsCollectionViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v6 setActive:1];

  topAnchor = [(CHAchievementsCellContentView *)self->_cellContentView topAnchor];
  contentView2 = [(CHAchievementsCollectionViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v10 setActive:1];

  trailingAnchor = [(CHAchievementsCellContentView *)self->_cellContentView trailingAnchor];
  contentView3 = [(CHAchievementsCollectionViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v14 setActive:1];

  bottomAnchor = [(CHAchievementsCellContentView *)self->_cellContentView bottomAnchor];
  contentView4 = [(CHAchievementsCollectionViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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