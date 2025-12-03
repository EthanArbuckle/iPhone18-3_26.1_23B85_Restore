@interface PHCarPlayGenericTableViewCell
+ (NSString)reuseIdentifier;
- (PHCarPlayGenericTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setHidesChevronWhenUnhighlighted:(BOOL)unhighlighted;
- (void)setShowsChevron:(BOOL)chevron;
@end

@implementation PHCarPlayGenericTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = NSStringFromClass(self);
  v3 = [NSString stringWithFormat:@"%@ReuseIdentifier", v2];

  return v3;
}

- (PHCarPlayGenericTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PHCarPlayGenericTableViewCell;
  v4 = [(PHCarPlayGenericTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    contentView = [(PHCarPlayGenericTableViewCell *)v4 contentView];
    [contentView setBackgroundColor:v5];

    [(PHCarPlayGenericTableViewCell *)v4 setAutoresizesSubviews:1];
    [(PHCarPlayGenericTableViewCell *)v4 setAccessibilityIdentifier:@"PHCarPlayTableCell"];
  }

  return v4;
}

- (void)setShowsChevron:(BOOL)chevron
{
  if (self->_showsChevron != chevron)
  {
    if (chevron)
    {
      v5 = [UIImageView alloc];
      v6 = [UIImage phCarPlayImageNamed:@"carplay-forward-chevron"];
      v7 = [v5 initWithImage:v6];
      chevronImageView = self->_chevronImageView;
      self->_chevronImageView = v7;

      [(UIImageView *)self->_chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(PHCarPlayGenericTableViewCell *)self contentView];
      [contentView addSubview:self->_chevronImageView];

      contentView2 = [(PHCarPlayGenericTableViewCell *)self contentView];
      v11 = self->_chevronImageView;
      contentView3 = [(PHCarPlayGenericTableViewCell *)self contentView];
      v13 = [NSLayoutConstraint constraintWithItem:v11 attribute:2 relatedBy:0 toItem:contentView3 attribute:2 multiplier:1.0 constant:-22.0];
      [contentView2 addConstraint:v13];

      contentView4 = [(PHCarPlayGenericTableViewCell *)self contentView];
      v15 = self->_chevronImageView;
      contentView5 = [(PHCarPlayGenericTableViewCell *)self contentView];
      v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:10 relatedBy:0 toItem:contentView5 attribute:10 multiplier:1.0 constant:0.0];
      [contentView4 addConstraint:v17];
    }

    else
    {
      [(UIImageView *)self->_chevronImageView removeFromSuperview];
    }
  }

  self->_showsChevron = chevron;
}

- (void)setHidesChevronWhenUnhighlighted:(BOOL)unhighlighted
{
  if ([(PHCarPlayGenericTableViewCell *)self showsChevron])
  {
    chevronImageView = [(PHCarPlayGenericTableViewCell *)self chevronImageView];
    v6 = [UIImage phCarPlayImageNamed:@"carplay-forward-chevron"];
    [chevronImageView setHighlightedImage:v6];

    chevronImageView2 = [(PHCarPlayGenericTableViewCell *)self chevronImageView];
    v8 = [UIImage phCarPlayImageNamed:@"carplay-forward-chevron"];
    v9 = +[UIColor blackColor];
    v10 = [v8 _flatImageWithColor:v9];
    [chevronImageView2 setImage:v10];

    self->_hidesChevronWhenUnhighlighted = unhighlighted;
  }
}

@end