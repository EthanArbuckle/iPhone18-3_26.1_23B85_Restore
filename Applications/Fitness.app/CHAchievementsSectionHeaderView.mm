@interface CHAchievementsSectionHeaderView
+ (CGSize)preferredSizeForSectionName:(id)name;
+ (id)headerFont;
- (CHAchievementsSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)configureWithSectionName:(id)name;
- (void)setHidesKeyLine:(BOOL)line;
- (void)setupLabelFont;
@end

@implementation CHAchievementsSectionHeaderView

- (CHAchievementsSectionHeaderView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = CHAchievementsSectionHeaderView;
  v3 = [(CHAchievementsSectionHeaderView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    keyLineView = v3->_keyLineView;
    v3->_keyLineView = v4;

    v6 = +[UIColor separatorColor];
    [(UIView *)v3->_keyLineView setBackgroundColor:v6];

    [(UIView *)v3->_keyLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CHAchievementsSectionHeaderView *)v3 addSubview:v3->_keyLineView];
    topAnchor = [(UIView *)v3->_keyLineView topAnchor];
    topAnchor2 = [(CHAchievementsSectionHeaderView *)v3 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [v9 setActive:1];

    widthAnchor = [(UIView *)v3->_keyLineView widthAnchor];
    widthAnchor2 = [(CHAchievementsSectionHeaderView *)v3 widthAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v12 setActive:1];

    heightAnchor = [(UIView *)v3->_keyLineView heightAnchor];
    if (qword_1008F99C8 != -1)
    {
      sub_10069C100();
    }

    v14 = [heightAnchor constraintEqualToConstant:*&qword_1008F99C0];
    [v14 setActive:1];

    leadingAnchor = [(UIView *)v3->_keyLineView leadingAnchor];
    leadingAnchor2 = [(CHAchievementsSectionHeaderView *)v3 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
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
    leadingAnchor3 = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor4 = [(CHAchievementsSectionHeaderView *)v3 leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    labelLeadingConstraint = v3->_labelLeadingConstraint;
    v3->_labelLeadingConstraint = v24;

    [(NSLayoutConstraint *)v3->_labelLeadingConstraint setActive:1];
    widthAnchor3 = [(UILabel *)v3->_label widthAnchor];
    v27 = +[UIScreen mainScreen];
    [v27 bounds];
    v28 = [widthAnchor3 constraintEqualToConstant:CGRectGetWidth(v33) - 16.0];
    labelTrailingConstraint = v3->_labelTrailingConstraint;
    v3->_labelTrailingConstraint = v28;

    [(NSLayoutConstraint *)v3->_labelTrailingConstraint setActive:1];
    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v3 selector:"setupLabelFont" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (void)setHidesKeyLine:(BOOL)line
{
  lineCopy = line;
  self->_hidesKeyLine = line;
  keyLineView = [(CHAchievementsSectionHeaderView *)self keyLineView];
  [keyLineView setHidden:lineCopy];
}

- (void)setupLabelFont
{
  v14 = +[CHAchievementsSectionHeaderView _headerConfiguration];
  [v14 directionalLayoutMargins];
  [(CHAchievementsSectionHeaderView *)self setDirectionalLayoutMargins:?];
  textProperties = [v14 textProperties];
  font = [textProperties font];
  label = [(CHAchievementsSectionHeaderView *)self label];
  [label setFont:font];

  labelBaselineConstraint = [(CHAchievementsSectionHeaderView *)self labelBaselineConstraint];
  [labelBaselineConstraint setActive:0];

  label2 = [(CHAchievementsSectionHeaderView *)self label];
  firstBaselineAnchor = [label2 firstBaselineAnchor];
  topAnchor = [(CHAchievementsSectionHeaderView *)self topAnchor];
  label3 = [(CHAchievementsSectionHeaderView *)self label];
  font2 = [label3 font];
  [font2 _scaledValueForValue:30.0];
  v12 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(CHAchievementsSectionHeaderView *)self setLabelBaselineConstraint:v12];

  labelBaselineConstraint2 = [(CHAchievementsSectionHeaderView *)self labelBaselineConstraint];
  [labelBaselineConstraint2 setActive:1];
}

+ (CGSize)preferredSizeForSectionName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(UILabel);
  v5 = +[CHAchievementsSectionHeaderView headerFont];
  [v4 setFont:v5];

  [v4 setNumberOfLines:0];
  [v4 setLineBreakMode:0];
  [v4 setText:nameCopy];

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
  textProperties = [v2 textProperties];
  font = [textProperties font];

  return font;
}

- (void)configureWithSectionName:(id)name
{
  nameCopy = name;
  label = [(CHAchievementsSectionHeaderView *)self label];
  [label setText:nameCopy];
}

@end