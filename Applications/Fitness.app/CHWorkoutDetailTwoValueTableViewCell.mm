@interface CHWorkoutDetailTwoValueTableViewCell
- (CHWorkoutDetailTwoValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_constrainViews;
- (void)configureWithTitle1:(id)title1 value1:(id)value1;
- (void)configureWithTitle2:(id)title2 value2:(id)value2;
- (void)expandForExtraTallTextIfNecessary:(id)necessary;
- (void)prepareForReuse;
- (void)removeLeadingPadding;
@end

@implementation CHWorkoutDetailTwoValueTableViewCell

- (void)expandForExtraTallTextIfNecessary:(id)necessary
{
  attrString = necessary;
  v4 = +[NSLocale currentLocale];
  v5 = [NSLocale localeWithLocaleIdentifier:@"ur"];
  languageCode = [v5 languageCode];
  languageCode2 = [v4 languageCode];
  v8 = [languageCode isEqualToString:languageCode2];

  if (v8)
  {
    v9 = CTLineCreateWithAttributedString(attrString);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v9, 8uLL);
    height = BoundsWithOptions.size.height;
    CFRelease(v9);
    [(NSLayoutConstraint *)self->_value1Baseline constant];
    if (height > v11)
    {
      [(NSLayoutConstraint *)self->_value1Baseline setConstant:height];
    }
  }
}

- (CHWorkoutDetailTwoValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31.receiver = self;
  v31.super_class = CHWorkoutDetailTwoValueTableViewCell;
  v4 = [(CHWorkoutDetailTwoValueTableViewCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    [(CHWorkoutDetailTwoValueTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(UILabel);
    titleLabel1 = v4->_titleLabel1;
    v4->_titleLabel1 = v6;

    v8 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_titleLabel1 setFont:v8];

    v9 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel1 setTextColor:v9];

    [(UILabel *)v4->_titleLabel1 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CHWorkoutDetailTwoValueTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel1];

    v11 = objc_alloc_init(UILabel);
    titleLabel2 = v4->_titleLabel2;
    v4->_titleLabel2 = v11;

    v13 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_titleLabel2 setFont:v13];

    v14 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel2 setTextColor:v14];

    [(UILabel *)v4->_titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(CHWorkoutDetailTwoValueTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_titleLabel2];

    v16 = objc_alloc_init(UILabel);
    valueLabel1 = v4->_valueLabel1;
    v4->_valueLabel1 = v16;

    v18 = [UIFont fu_mediumSausageFontOfSize:30.0];
    [(UILabel *)v4->_valueLabel1 setFont:v18];

    v19 = +[UIColor labelColor];
    [(UILabel *)v4->_valueLabel1 setTextColor:v19];

    [(UILabel *)v4->_valueLabel1 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_valueLabel1 setNumberOfLines:0];
    contentView3 = [(CHWorkoutDetailTwoValueTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_valueLabel1];

    v21 = objc_alloc_init(UILabel);
    valueLabel2 = v4->_valueLabel2;
    v4->_valueLabel2 = v21;

    v23 = [UIFont fu_mediumSausageFontOfSize:30.0];
    [(UILabel *)v4->_valueLabel2 setFont:v23];

    v24 = +[UIColor labelColor];
    [(UILabel *)v4->_valueLabel2 setTextColor:v24];

    [(UILabel *)v4->_valueLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_valueLabel2 setNumberOfLines:0];
    contentView4 = [(CHWorkoutDetailTwoValueTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_valueLabel2];

    v26 = objc_alloc_init(UIView);
    separatorView = v4->_separatorView;
    v4->_separatorView = v26;

    [(UIView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = +[UIColor separatorColor];
    [(UIView *)v4->_separatorView setBackgroundColor:v28];

    contentView5 = [(CHWorkoutDetailTwoValueTableViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_separatorView];

    [(CHWorkoutDetailTwoValueTableViewCell *)v4 _constrainViews];
  }

  return v4;
}

- (void)configureWithTitle1:(id)title1 value1:(id)value1
{
  titleLabel1 = self->_titleLabel1;
  value1Copy = value1;
  [(UILabel *)titleLabel1 setText:title1];
  [(UILabel *)self->_valueLabel1 setAttributedText:value1Copy];
  [(CHWorkoutDetailTwoValueTableViewCell *)self expandForExtraTallTextIfNecessary:value1Copy];
}

- (void)configureWithTitle2:(id)title2 value2:(id)value2
{
  titleLabel2 = self->_titleLabel2;
  value2Copy = value2;
  [(UILabel *)titleLabel2 setText:title2];
  [(UILabel *)self->_valueLabel2 setAttributedText:value2Copy];
  [(CHWorkoutDetailTwoValueTableViewCell *)self expandForExtraTallTextIfNecessary:value2Copy];
}

- (void)removeLeadingPadding
{
  [(NSLayoutConstraint *)self->_title1Leading setActive:0];
  [(NSLayoutConstraint *)self->_separatorLeading setActive:0];
  [(NSLayoutConstraint *)self->_separatorTrailing setActive:0];
  [(NSLayoutConstraint *)self->_title1NoLeading setActive:1];
  [(NSLayoutConstraint *)self->_separatorNoLeading setActive:1];
  separatorNoTrailing = self->_separatorNoTrailing;

  [(NSLayoutConstraint *)separatorNoTrailing setActive:1];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CHWorkoutDetailTwoValueTableViewCell;
  [(CHWorkoutDetailTwoValueTableViewCell *)&v3 prepareForReuse];
  [(UILabel *)self->_titleLabel1 setText:0];
  [(UILabel *)self->_valueLabel1 setAttributedText:0];
  [(UILabel *)self->_titleLabel2 setText:0];
  [(UILabel *)self->_valueLabel2 setAttributedText:0];
  [(NSLayoutConstraint *)self->_value1Baseline setConstant:30.0];
}

- (void)_constrainViews
{
  if (!self->_didAddConstraints)
  {
    titleLabel1 = self->_titleLabel1;
    contentView = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v57 = [NSLayoutConstraint constraintWithItem:titleLabel1 attribute:11 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:28.0];

    v5 = self->_titleLabel1;
    contentView2 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v7 = [NSLayoutConstraint constraintWithItem:v5 attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:sub_1000B7B88()];
    title1Leading = self->_title1Leading;
    self->_title1Leading = v7;

    v9 = self->_titleLabel1;
    contentView3 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:5 relatedBy:0 toItem:contentView3 attribute:5 multiplier:1.0 constant:0.0];
    title1NoLeading = self->_title1NoLeading;
    self->_title1NoLeading = v11;

    contentView4 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v14 = self->_title1Leading;
    v62[0] = v57;
    v62[1] = v14;
    v15 = [NSArray arrayWithObjects:v62 count:2];
    [contentView4 addConstraints:v15];

    v16 = +[UIScreen mainScreen];
    [v16 bounds];
    v18 = v17 * 0.5;

    v56 = [NSLayoutConstraint constraintWithItem:self->_titleLabel2 attribute:11 relatedBy:0 toItem:self->_titleLabel1 attribute:11 multiplier:1.0 constant:0.0];
    titleLabel2 = self->_titleLabel2;
    contentView5 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v55 = [NSLayoutConstraint constraintWithItem:titleLabel2 attribute:5 relatedBy:0 toItem:contentView5 attribute:5 multiplier:1.0 constant:v18];

    contentView6 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v61[0] = v56;
    v61[1] = v55;
    v22 = [NSArray arrayWithObjects:v61 count:2];
    [contentView6 addConstraints:v22];

    v23 = [NSLayoutConstraint constraintWithItem:self->_valueLabel1 attribute:11 relatedBy:0 toItem:self->_titleLabel1 attribute:11 multiplier:1.0 constant:30.0];
    value1Baseline = self->_value1Baseline;
    self->_value1Baseline = v23;

    v54 = [NSLayoutConstraint constraintWithItem:self->_valueLabel1 attribute:5 relatedBy:0 toItem:self->_titleLabel1 attribute:5 multiplier:1.0 constant:0.0];
    valueLabel1 = self->_valueLabel1;
    contentView7 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v27 = [NSLayoutConstraint constraintWithItem:valueLabel1 attribute:11 relatedBy:0 toItem:contentView7 attribute:4 multiplier:1.0 constant:-16.0];

    contentView8 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v60[0] = self->_value1Baseline;
    v60[1] = v54;
    v60[2] = v27;
    v29 = [NSArray arrayWithObjects:v60 count:3];
    [contentView8 addConstraints:v29];

    v30 = [NSLayoutConstraint constraintWithItem:self->_valueLabel2 attribute:11 relatedBy:0 toItem:self->_valueLabel1 attribute:11 multiplier:1.0 constant:0.0];
    v31 = [NSLayoutConstraint constraintWithItem:self->_valueLabel2 attribute:5 relatedBy:0 toItem:self->_titleLabel2 attribute:5 multiplier:1.0 constant:0.0];
    contentView9 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v59[0] = v30;
    v59[1] = v31;
    v33 = [NSArray arrayWithObjects:v59 count:2];
    [contentView9 addConstraints:v33];

    separatorView = self->_separatorView;
    contentView10 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v36 = [NSLayoutConstraint constraintWithItem:separatorView attribute:5 relatedBy:0 toItem:contentView10 attribute:5 multiplier:1.0 constant:0.0];
    separatorNoLeading = self->_separatorNoLeading;
    self->_separatorNoLeading = v36;

    v38 = self->_separatorView;
    contentView11 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v40 = [NSLayoutConstraint constraintWithItem:v38 attribute:6 relatedBy:0 toItem:contentView11 attribute:6 multiplier:1.0 constant:-sub_1000B7B88()];
    separatorTrailing = self->_separatorTrailing;
    self->_separatorTrailing = v40;

    v42 = self->_separatorView;
    contentView12 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v44 = sub_1000B7F00(v42, contentView12, 0, 0.0);

    v45 = [v44 objectAtIndexedSubscript:0];
    separatorLeading = self->_separatorLeading;
    self->_separatorLeading = v45;

    v47 = [v44 objectAtIndexedSubscript:2];
    separatorNoTrailing = self->_separatorNoTrailing;
    self->_separatorNoTrailing = v47;

    contentView13 = [(CHWorkoutDetailTwoValueTableViewCell *)self contentView];
    v58[0] = self->_separatorLeading;
    v50 = [v44 objectAtIndexedSubscript:1];
    v51 = self->_separatorTrailing;
    v58[1] = v50;
    v58[2] = v51;
    v52 = [v44 objectAtIndexedSubscript:3];
    v58[3] = v52;
    v53 = [NSArray arrayWithObjects:v58 count:4];
    [contentView13 addConstraints:v53];

    self->_didAddConstraints = 1;
  }
}

@end