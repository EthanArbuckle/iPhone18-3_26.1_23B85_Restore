@interface AllRefinementsHeaderView
+ (id)reuseIdentifier;
- (AllRefinementsHeaderView)initWithFrame:(CGRect)frame;
- (void)addSubviews;
- (void)prepareForReuse;
- (void)setTitle:(id)title;
- (void)updateFont;
@end

@implementation AllRefinementsHeaderView

- (void)updateFont
{
  traitCollection = [(AllRefinementsHeaderView *)self traitCollection];
  v3 = [UIFont system17SemiboldCompatibleWithTraitCollection:traitCollection];
  label = [(AllRefinementsHeaderView *)self label];
  [label setFont:v3];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  label = [(AllRefinementsHeaderView *)self label];
  [label setText:titleCopy];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AllRefinementsHeaderView;
  [(AllRefinementsHeaderView *)&v4 prepareForReuse];
  label = [(AllRefinementsHeaderView *)self label];
  [label setText:0];
}

- (void)addSubviews
{
  v3 = objc_alloc_init(UILabel);
  label = self->_label;
  self->_label = v3;

  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_label setNumberOfLines:1];
  [(UILabel *)self->_label setAccessibilityIdentifier:@"AllRefinementsHeaderLabel"];
  v5 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_label setTextColor:v5];

  [(AllRefinementsHeaderView *)self updateFont];
  [(AllRefinementsHeaderView *)self addSubview:self->_label];
  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  leadingAnchor2 = [(AllRefinementsHeaderView *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[0] = v16;
  trailingAnchor = [(UILabel *)self->_label trailingAnchor];
  trailingAnchor2 = [(AllRefinementsHeaderView *)self trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v8;
  topAnchor = [(UILabel *)self->_label topAnchor];
  topAnchor2 = [(AllRefinementsHeaderView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v19[2] = v11;
  bottomAnchor = [(UILabel *)self->_label bottomAnchor];
  bottomAnchor2 = [(AllRefinementsHeaderView *)self bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[3] = v14;
  v15 = [NSArray arrayWithObjects:v19 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (AllRefinementsHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AllRefinementsHeaderView;
  v3 = [(AllRefinementsHeaderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(AllRefinementsHeaderView *)v3 setBackgroundColor:v4];

    [(AllRefinementsHeaderView *)v3 addSubviews];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(AllRefinementsHeaderView *)v3 setAccessibilityIdentifier:@"AllRefinementsHeaderView"];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end