@interface CHAchievementsSectionHeaderView
+ (CGSize)preferredSizeForSectionName:(id)a3;
+ (id)headerFont;
- (CHAchievementsSectionHeaderView)initWithFrame:(CGRect)a3;
- (void)configureWithSectionName:(id)a3;
- (void)setHidesKeyLine:(BOOL)a3;
- (void)setupLabelFont;
@end

@implementation CHAchievementsSectionHeaderView

- (CHAchievementsSectionHeaderView)initWithFrame:(CGRect)a3
{
  v32.receiver = self;
  v32.super_class = CHAchievementsSectionHeaderView;
  v3 = [(CHAchievementsSectionHeaderView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    keyLineView = v3->_keyLineView;
    v3->_keyLineView = v4;

    v6 = +[UIColor separatorColor];
    [(UIView *)v3->_keyLineView setBackgroundColor:v6];

    [(UIView *)v3->_keyLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CHAchievementsSectionHeaderView *)v3 addSubview:v3->_keyLineView];
    v7 = [(UIView *)v3->_keyLineView topAnchor];
    v8 = [(CHAchievementsSectionHeaderView *)v3 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];
    [v9 setActive:1];

    v10 = [(UIView *)v3->_keyLineView widthAnchor];
    v11 = [(CHAchievementsSectionHeaderView *)v3 widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [(UIView *)v3->_keyLineView heightAnchor];
    if (qword_1008F99C8 != -1)
    {
      sub_10069C100();
    }

    v14 = [v13 constraintEqualToConstant:*&qword_1008F99C0];
    [v14 setActive:1];

    v15 = [(UIView *)v3->_keyLineView leadingAnchor];
    v16 = [(CHAchievementsSectionHeaderView *)v3 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:16.0];
    keyLineLeadingConstraint = v3->_keyLineLeadingConstraint;
    v3->_keyLineLeadingConstraint = v17;

    [(NSLayoutConstraint *)v3->_keyLineLeadingConstraint setActive:1];
    v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v3->_label;
    v3->_label = v19;

    v21 = +[UIColor labelColor];
    [(UILabel *)v3->_label setTextColor:v21];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    [(UILabel *)v3->_label setLineBreakMode:0];
    [(CHAchievementsSectionHeaderView *)v3 addSubview:v3->_label];
    [(CHAchievementsSectionHeaderView *)v3 setupLabelFont];
    v22 = [(UILabel *)v3->_label leadingAnchor];
    v23 = [(CHAchievementsSectionHeaderView *)v3 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:16.0];
    labelLeadingConstraint = v3->_labelLeadingConstraint;
    v3->_labelLeadingConstraint = v24;

    [(NSLayoutConstraint *)v3->_labelLeadingConstraint setActive:1];
    v26 = [(UILabel *)v3->_label widthAnchor];
    v27 = +[UIScreen mainScreen];
    [v27 bounds];
    v28 = [v26 constraintEqualToConstant:CGRectGetWidth(v33) - 16.0];
    labelTrailingConstraint = v3->_labelTrailingConstraint;
    v3->_labelTrailingConstraint = v28;

    [(NSLayoutConstraint *)v3->_labelTrailingConstraint setActive:1];
    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v3 selector:"setupLabelFont" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (void)setHidesKeyLine:(BOOL)a3
{
  v3 = a3;
  self->_hidesKeyLine = a3;
  v4 = [(CHAchievementsSectionHeaderView *)self keyLineView];
  [v4 setHidden:v3];
}

- (void)setupLabelFont
{
  v14 = +[CHAchievementsSectionHeaderView _headerConfiguration];
  [v14 directionalLayoutMargins];
  [(CHAchievementsSectionHeaderView *)self setDirectionalLayoutMargins:?];
  v3 = [v14 textProperties];
  v4 = [v3 font];
  v5 = [(CHAchievementsSectionHeaderView *)self label];
  [v5 setFont:v4];

  v6 = [(CHAchievementsSectionHeaderView *)self labelBaselineConstraint];
  [v6 setActive:0];

  v7 = [(CHAchievementsSectionHeaderView *)self label];
  v8 = [v7 firstBaselineAnchor];
  v9 = [(CHAchievementsSectionHeaderView *)self topAnchor];
  v10 = [(CHAchievementsSectionHeaderView *)self label];
  v11 = [v10 font];
  [v11 _scaledValueForValue:30.0];
  v12 = [v8 constraintEqualToAnchor:v9 constant:?];
  [(CHAchievementsSectionHeaderView *)self setLabelBaselineConstraint:v12];

  v13 = [(CHAchievementsSectionHeaderView *)self labelBaselineConstraint];
  [v13 setActive:1];
}

+ (CGSize)preferredSizeForSectionName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UILabel);
  v5 = +[CHAchievementsSectionHeaderView headerFont];
  [v4 setFont:v5];

  [v4 setNumberOfLines:0];
  [v4 setLineBreakMode:0];
  [v4 setText:v3];

  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v7 = CGRectGetWidth(v13) - 16.0;

  [v4 systemLayoutSizeFittingSize:{v7, 1.79769313e308}];
  v9 = v8 + 27.5;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)headerFont
{
  v2 = +[CHAchievementsSectionHeaderView _headerConfiguration];
  v3 = [v2 textProperties];
  v4 = [v3 font];

  return v4;
}

- (void)configureWithSectionName:(id)a3
{
  v4 = a3;
  v5 = [(CHAchievementsSectionHeaderView *)self label];
  [v5 setText:v4];
}

@end