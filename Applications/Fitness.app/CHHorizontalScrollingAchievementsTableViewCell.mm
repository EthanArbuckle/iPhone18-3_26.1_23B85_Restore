@interface CHHorizontalScrollingAchievementsTableViewCell
- (BOOL)hasVisibleAchievements;
- (CGSize)sizeThatFits:(CGSize)result;
- (CHHorizontalScrollingAchievementsTableViewCell)initWithFrame:(CGRect)a3 badgeImageFactory:(id)a4 locProvider:(id)a5;
- (CHHorizontalScrollingAchievementsTableViewCellDelegate)delegate;
- (void)achievementsView:(id)a3 didTapAchievement:(id)a4 cell:(id)a5;
- (void)layoutSubviews;
- (void)setAchievements:(id)a3;
@end

@implementation CHHorizontalScrollingAchievementsTableViewCell

- (CHHorizontalScrollingAchievementsTableViewCell)initWithFrame:(CGRect)a3 badgeImageFactory:(id)a4 locProvider:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v33.receiver = self;
  v33.super_class = CHHorizontalScrollingAchievementsTableViewCell;
  v13 = [(CHHorizontalScrollingAchievementsTableViewCell *)&v33 initWithFrame:x, y, width, height];
  if (v13)
  {
    v14 = objc_alloc_init(UILabel);
    titleLabel = v13->_titleLabel;
    v13->_titleLabel = v14;

    v16 = v13->_titleLabel;
    v17 = [UIFont systemFontOfSize:22.0];
    [(UILabel *)v16 setFont:v17];

    v18 = v13->_titleLabel;
    v19 = +[UIColor grayColor];
    [(UILabel *)v18 setTextColor:v19];

    v20 = v13->_titleLabel;
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"AWARDS" value:&stru_1008680E8 table:@"Localizable"];
    [(UILabel *)v20 setText:v22];

    v23 = [(CHHorizontalScrollingAchievementsTableViewCell *)v13 contentView];
    [v23 addSubview:v13->_titleLabel];

    v24 = [[CHHorizontalScrollingAchievementsView alloc] initWithFrame:v11 badgeImageFactory:v12 locProvider:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    achievementsView = v13->_achievementsView;
    v13->_achievementsView = v24;

    [(CHHorizontalScrollingAchievementsView *)v13->_achievementsView setDelegate:v13];
    v26 = [(CHHorizontalScrollingAchievementsTableViewCell *)v13 contentView];
    [v26 addSubview:v13->_achievementsView];

    v27 = objc_alloc_init(UIView);
    topDivider = v13->_topDivider;
    v13->_topDivider = v27;

    v29 = v13->_topDivider;
    v30 = [UIColor colorWithWhite:0.300000012 alpha:1.0];
    [(UIView *)v29 setBackgroundColor:v30];

    [(CHHorizontalScrollingAchievementsTableViewCell *)v13 addSubview:v13->_topDivider];
    v31 = +[UIColor clearColor];
    [(CHHorizontalScrollingAchievementsTableViewCell *)v13 setBackgroundColor:v31];

    [(CHHorizontalScrollingAchievementsTableViewCell *)v13 setSelectionStyle:0];
  }

  return v13;
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
  v3 = [(CHHorizontalScrollingAchievementsTableViewCell *)self contentView];
  [v3 bounds];

  v4 = [(CHHorizontalScrollingAchievementsTableViewCell *)self contentView];
  [v4 bounds];
  v6 = v5;

  v7 = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [v7 sizeToFit];

  v8 = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [v8 frame];
  v10 = v9;
  v11 = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [v11 frame];
  v22 = v12;

  FIUIFlipFrameRightToLeftIfNeeded();
  v13 = [(CHHorizontalScrollingAchievementsTableViewCell *)self titleLabel];
  [v13 setFrame:{16.0, 5.0, v10, v22}];

  v24.origin.x = 16.0;
  v24.origin.y = 5.0;
  v24.size.width = v10;
  v24.size.height = v22;
  v14 = CGRectGetMaxY(v24) + 6.0;
  v15 = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  [v15 setFrame:{0.0, v14, v6, 70.0}];

  bottom = UIEdgeInsetsZero.bottom;
  v17 = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  [v17 setScrollViewContentInset:{UIEdgeInsetsZero.top, 16.0 + 2.0, bottom, 16.0 + 2.0}];

  if (qword_1008F9AD8 != -1)
  {
    sub_10069CA7C();
  }

  v18 = *&qword_1008F9AD0;
  v19 = [(CHHorizontalScrollingAchievementsTableViewCell *)self topDivider:0x4030000000000000];
  [v19 setFrame:{16.0, 0.0, v6, v18}];

  v20 = [(CHHorizontalScrollingAchievementsTableViewCell *)self topDivider];
  v21 = [(CHHorizontalScrollingAchievementsTableViewCell *)self contentView];
  [v21 bounds];
  FIUIFlipViewRightToLeftIfNeeded();
}

- (void)setAchievements:(id)a3
{
  v4 = a3;
  v5 = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  [v5 setAchievements:v4];

  [(CHHorizontalScrollingAchievementsTableViewCell *)self setNeedsLayout];
}

- (BOOL)hasVisibleAchievements
{
  v2 = [(CHHorizontalScrollingAchievementsTableViewCell *)self achievementsView];
  v3 = [v2 hasVisibleAchievements];

  return v3;
}

- (void)achievementsView:(id)a3 didTapAchievement:(id)a4 cell:(id)a5
{
  v7 = a5;
  v8 = a4;
  [v7 badgeFrame];
  [v7 convertRect:self toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  +[AAUIBadgeView badgeAspectRatio];
  v18 = (v16 * v17 - v16) * -0.5;
  v19 = v16 / v17;
  v20 = v12 + v18;
  v21 = [(CHHorizontalScrollingAchievementsTableViewCell *)self delegate];
  [v21 achievementsCell:self didTapAchievement:v8 subCell:v7 frameInCHHorizontalScrollingAchievementsTableViewCellCoordinates:{v10, v20, v14, v19}];
}

- (CHHorizontalScrollingAchievementsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end