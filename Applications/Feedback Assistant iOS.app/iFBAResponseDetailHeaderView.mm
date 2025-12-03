@interface iFBAResponseDetailHeaderView
- (UILabel)closedLabel;
- (UILabel)titleLabel;
- (iFBAResponseDetailHeaderView)initWithCoder:(id)coder;
- (iFBAResponseDetailHeaderView)initWithContentItem:(id)item;
- (void)awakeFromNib;
- (void)layoutSubviews;
- (void)updateWithItem:(id)item;
@end

@implementation iFBAResponseDetailHeaderView

- (iFBAResponseDetailHeaderView)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = iFBAResponseDetailHeaderView;
  v3 = [(iFBAResponseDetailHeaderView *)&v11 initWithCoder:coder];
  if (v3)
  {
    v4 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
    v5 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v12[0] = v4;
    v6 = +[UIColor systemBackgroundColor];
    v12[1] = v5;
    v13[0] = v6;
    v7 = +[UIColor secondarySystemBackgroundColor];
    v13[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

    v9 = [UIColor _dynamicColorWithColorsByTraitCollection:v8];
    [(iFBAResponseDetailHeaderView *)v3 setBackgroundColor:v9];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = iFBAResponseDetailHeaderView;
  [(iFBAResponseDetailHeaderView *)&v6 layoutSubviews];
  titleLabel = [(iFBAResponseDetailHeaderView *)self titleLabel];
  [titleLabel frame];
  Width = CGRectGetWidth(v7);
  titleLabel2 = [(iFBAResponseDetailHeaderView *)self titleLabel];
  [titleLabel2 setPreferredMaxLayoutWidth:Width];
}

- (void)awakeFromNib
{
  v9.receiver = self;
  v9.super_class = iFBAResponseDetailHeaderView;
  [(iFBAResponseDetailHeaderView *)&v9 awakeFromNib];
  v3 = +[UIColor labelColor];
  titleLabel = [(iFBAResponseDetailHeaderView *)self titleLabel];
  [titleLabel setTextColor:v3];

  v5 = [UIFont boldSystemFontOfSize:20.0];
  v6 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
  v7 = [v6 scaledFontForFont:v5];
  titleLabel2 = [(iFBAResponseDetailHeaderView *)self titleLabel];
  [titleLabel2 setFont:v7];
}

- (iFBAResponseDetailHeaderView)initWithContentItem:(id)item
{
  itemCopy = item;
  v5 = +[NSBundle mainBundle];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 loadNibNamed:v7 owner:self options:0];
  v9 = [v8 objectAtIndex:0];

  if (v9)
  {
    [(iFBAResponseDetailHeaderView *)v9 updateWithItem:itemCopy];
  }

  return v9;
}

- (void)updateWithItem:(id)item
{
  itemCopy = item;
  [(iFBAResponseDetailHeaderView *)self setRepresentedItem:itemCopy];
  if (itemCopy)
  {
    displayTitle = [itemCopy displayTitle];
    titleLabel = [(iFBAResponseDetailHeaderView *)self titleLabel];
    [titleLabel setText:displayTitle];

    if ([itemCopy isClosedFeedback])
    {
      stackView = [(iFBAResponseDetailHeaderView *)self stackView];
      closedLabel = [(iFBAResponseDetailHeaderView *)self closedLabel];
      [stackView insertArrangedSubview:closedLabel atIndex:1];

      stackView2 = +[NSBundle mainBundle];
      closedLabel4 = [stackView2 localizedStringForKey:@"CLOSED_FEEDBACK_STATE" value:&stru_1000E2210 table:FBKCommonStrings];
      closedLabel2 = [(iFBAResponseDetailHeaderView *)self closedLabel];
      [closedLabel2 setText:closedLabel4];
    }

    else
    {
      closedLabel3 = [(iFBAResponseDetailHeaderView *)self closedLabel];
      [closedLabel3 setText:&stru_1000E2210];

      stackView2 = [(iFBAResponseDetailHeaderView *)self stackView];
      closedLabel4 = [(iFBAResponseDetailHeaderView *)self closedLabel];
      [stackView2 removeArrangedSubview:closedLabel4];
    }
  }

  else
  {
    titleLabel2 = [(iFBAResponseDetailHeaderView *)self titleLabel];
    [titleLabel2 setText:&stru_1000E2210];

    closedLabel5 = [(iFBAResponseDetailHeaderView *)self closedLabel];
    [closedLabel5 setText:&stru_1000E2210];

    stackView2 = [(iFBAResponseDetailHeaderView *)self closedLabel];
    [stackView2 setText:&stru_1000E2210];
  }

  [(iFBAResponseDetailHeaderView *)self setNeedsLayout];
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)closedLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_closedLabel);

  return WeakRetained;
}

@end