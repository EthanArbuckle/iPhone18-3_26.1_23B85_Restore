@interface CHHorizontalScrollingAchievementsTableViewCell
- (BOOL)hasVisibleAchievements;
- (CGSize)sizeThatFits:(CGSize)result;
- (CHHorizontalScrollingAchievementsTableViewCell)initWithFrame:(CGRect)frame badgeImageFactory:(id)factory locProvider:(id)provider;
- (CHHorizontalScrollingAchievementsTableViewCellDelegate)delegate;
- (void)achievementsView:(id)view didTapAchievement:(id)achievement cell:(id)cell;
- (void)layoutSubviews;
- (void)setAchievements:(id)achievements;
@end

@implementation CHHorizontalScrollingAchievementsTableViewCell

- (CHHorizontalScrollingAchievementsTableViewCell)initWithFrame:(CGRect)frame badgeImageFactory:(id)factory locProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  factoryCopy = factory;
  providerCopy = provider;
  v33.receiver = self;
  v33.super_class = CHHorizontalScrollingAchievementsTableViewCell;
  height = [(CHHorizontalScrollingAchievementsTableViewCell *)&v33 initWithFrame:x, y, width, height];
  if (height)
  {
    v14 = objc_alloc_init(UILabel);
    titleLabel = height->_titleLabel;
    height->_titleLabel = v14;

    v16 = height->_titleLabel;
    v17 = [UIFont systemFontOfSize:22.0];
    [(UILabel *)v16 setFont:v17];

    v18 = height->_titleLabel;
    v19 = +[UIColor grayColor];
    [(UILabel *)v18 setTextColor:v19];

    v20 = height->_titleLabel;
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"AWARDS" value:&stru_1008680E8 table:@"Localizable"];
    [(UILabel *)v20 setText:v22];

    contentView = [(CHHorizontalScrollingAchievementsTableViewCell *)height contentView];
    [contentView addSubview:height->_titleLabel];

    v24 = [[CHHorizontalScrollingAchievementsView alloc] initWithFrame:factoryCopy badgeImageFactory:providerCopy locProvider:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    achievementsView = height->_achievementsView;
    height->_achievementsView = v24;

    [(CHHorizontalScrollingAchievementsView *)height->_achievementsView setDelegate:height];
    contentView2 = [(CHHorizontalScrollingAchievementsTableViewCell *)height contentView];
    [contentView2 addSubview:height->_achievementsView];

    v27 = objc_alloc_init(UIView);
    topDivider = height->_topDivider;
    height->_topDivider = v27;

    v29 = height->_topDivider;
    v30 = [UIColor colorWithWhite:0.300000012 alpha:1.0];
    [(UIView *)v29 setBackgroundColor:v30];

    [(CHHorizontalScrollingAchievementsTableViewCell *)height addSubview:height->_topDivider];
    v31 = +[UIColor clearColor];
    [(CHHorizontalScrollingAchievementsTableViewCell *)height setBackgroundColor:v31];

    [(CHHorizontalScrollingAchievementsTableViewCell *)height setSelectionStyle:0];
  }

  return height;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 124.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CHHorizontalScrollingAchievementsTableViewCell;
  [(CHHorizontalScrollingAchievementsTableViewCell *)&v23 layoutSubviews];
  contentView = [(CHHorizontalScrollingAchievementsTableViewCell *)self contentView];
  [contentView bounds];

  contentView2 = [(CHHorizontalScrollingAchievementsTableViewCell *)self contentView];
  [contentView2 bounds];
  v6 = v5;

  titleLabel = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [titleLabel sizeToFit];

  titleLabel2 = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [titleLabel2 frame];
  v10 = v9;
  titleLabel3 = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [titleLabel3 frame];
  v22 = v12;

  FIUIFlipFrameRightToLeftIfNeeded();
  titleLabel4 = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [titleLabel4 setFrame:{16.0, 5.0, v10, v22}];

  v24.origin.x = 16.0;
  v24.origin.y = 5.0;
  v24.size.width = v10;
  v24.size.height = v22;
  v14 = CGRectGetMaxY(v24) + 6.0;
  achievementsView = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  [achievementsView setFrame:{0.0, v14, v6, 70.0}];

  bottom = UIEdgeInsetsZero.bottom;
  achievementsView2 = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  [achievementsView2 setScrollViewContentInset:{UIEdgeInsetsZero.top, 16.0 + 2.0, bottom, 16.0 + 2.0}];

  if (qword_1008F9AD8 != -1)
  {
    sub_10069CA7C();
  }

  v18 = *&qword_1008F9AD0;
  v19 = [(CHHorizontalScrollingAchievementsTableViewCell *)self topDivider:0x4030000000000000];
  [v19 setFrame:{16.0, 0.0, v6, v18}];

  topDivider = [(CHHorizontalScrollingAchievementsTableViewCell *)self topDivider];
  contentView3 = [(CHHorizontalScrollingAchievementsTableViewCell *)self contentView];
  [contentView3 bounds];
  FIUIFlipViewRightToLeftIfNeeded();
}

- (void)setAchievements:(id)achievements
{
  achievementsCopy = achievements;
  achievementsView = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  [achievementsView setAchievements:achievementsCopy];

  [(CHHorizontalScrollingAchievementsTableViewCell *)self setNeedsLayout];
}

- (BOOL)hasVisibleAchievements
{
  achievementsView = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  hasVisibleAchievements = [achievementsView hasVisibleAchievements];

  return hasVisibleAchievements;
}

- (void)achievementsView:(id)view didTapAchievement:(id)achievement cell:(id)cell
{
  cellCopy = cell;
  achievementCopy = achievement;
  [cellCopy badgeFrame];
  [cellCopy convertRect:self toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  +[AAUIBadgeView badgeAspectRatio];
  v18 = (v16 * v17 - v16) * -0.5;
  v19 = v16 / v17;
  v20 = v12 + v18;
  delegate = [(CHHorizontalScrollingAchievementsTableViewCell *)self delegate];
  [delegate achievementsCell:self didTapAchievement:achievementCopy subCell:cellCopy frameInCHHorizontalScrollingAchievementsTableViewCellCoordinates:{v10, v20, v14, v19}];
}

- (CHHorizontalScrollingAchievementsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end