@interface FCUICustomModeViewCell
- (FCUICustomModeViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FCUICustomModeViewCell

- (FCUICustomModeViewCell)initWithFrame:(CGRect)frame
{
  v64.receiver = self;
  v64.super_class = FCUICustomModeViewCell;
  v3 = [(FCUICustomModeViewCell *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    selectionView = v3->_selectionView;
    v3->_selectionView = v8;

    [(UIView *)v3->_selectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)v3->_selectionView layer];
    v11 = +[UIColor systemBlueColor];
    [layer setBorderColor:{objc_msgSend(v11, "CGColor")}];

    layer2 = [(UIView *)v3->_selectionView layer];
    [layer2 setBorderWidth:2.0];

    contentView = [(FCUICustomModeViewCell *)v3 contentView];
    [contentView addSubview:v3->_selectionView];

    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageBackgroundView = v3->_imageBackgroundView;
    v3->_imageBackgroundView = v14;

    [(UIView *)v3->_imageBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = v3->_imageBackgroundView;
    v17 = +[UIColor systemGray5Color];
    [(UIView *)v16 setBackgroundColor:v17];

    contentView2 = [(FCUICustomModeViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_imageBackgroundView];

    v19 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v3->_imageView;
    v3->_imageView = v19;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:4];
    contentView3 = [(FCUICustomModeViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_imageView];

    v22 = objc_alloc_init(NSMutableArray);
    leadingAnchor = [(UIView *)v3->_selectionView leadingAnchor];
    contentView4 = [(FCUICustomModeViewCell *)v3 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    [v22 addObject:v26];

    topAnchor = [(UIView *)v3->_selectionView topAnchor];
    contentView5 = [(FCUICustomModeViewCell *)v3 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    [v22 addObject:v30];

    contentView6 = [(FCUICustomModeViewCell *)v3 contentView];
    trailingAnchor = [contentView6 trailingAnchor];
    trailingAnchor2 = [(UIView *)v3->_selectionView trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
    [v22 addObject:v34];

    contentView7 = [(FCUICustomModeViewCell *)v3 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    bottomAnchor2 = [(UIView *)v3->_selectionView bottomAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
    [v22 addObject:v38];

    leadingAnchor3 = [(UIView *)v3->_imageBackgroundView leadingAnchor];
    contentView8 = [(FCUICustomModeViewCell *)v3 contentView];
    leadingAnchor4 = [contentView8 leadingAnchor];
    v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    [v22 addObject:v42];

    topAnchor3 = [(UIView *)v3->_imageBackgroundView topAnchor];
    contentView9 = [(FCUICustomModeViewCell *)v3 contentView];
    topAnchor4 = [contentView9 topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
    [v22 addObject:v46];

    contentView10 = [(FCUICustomModeViewCell *)v3 contentView];
    trailingAnchor3 = [contentView10 trailingAnchor];
    trailingAnchor4 = [(UIView *)v3->_imageBackgroundView trailingAnchor];
    v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
    [v22 addObject:v50];

    contentView11 = [(FCUICustomModeViewCell *)v3 contentView];
    bottomAnchor3 = [contentView11 bottomAnchor];
    bottomAnchor4 = [(UIView *)v3->_imageBackgroundView bottomAnchor];
    v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:8.0];
    [v22 addObject:v54];

    centerXAnchor = [(UIImageView *)v3->_imageView centerXAnchor];
    contentView12 = [(FCUICustomModeViewCell *)v3 contentView];
    centerXAnchor2 = [contentView12 centerXAnchor];
    v58 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v22 addObject:v58];

    centerYAnchor = [(UIImageView *)v3->_imageView centerYAnchor];
    contentView13 = [(FCUICustomModeViewCell *)v3 contentView];
    centerYAnchor2 = [contentView13 centerYAnchor];
    v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v22 addObject:v62];

    [NSLayoutConstraint activateConstraints:v22];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = FCUICustomModeViewCell;
  [(FCUICustomModeViewCell *)&v11 layoutSubviews];
  traitCollection = [(FCUICustomModeViewCell *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == &dword_0 + 2)
  {
    +[UIColor systemGrayColor];
  }

  else
  {
    +[UIColor systemGrayTintColor];
  }
  v4 = ;

  [(UIView *)self->_selectionView setAlpha:[(FCUICustomModeViewCell *)self isSelected]];
  imageView = self->_imageView;
  if (([(FCUICustomModeViewCell *)self isSelected]& 1) != 0)
  {
    v6 = +[UIColor systemBlueColor];
    [(UIImageView *)imageView setTintColor:v6];
  }

  else
  {
    [(UIImageView *)imageView setTintColor:v4];
  }

  selectionView = self->_selectionView;
  [(UIView *)selectionView frame];
  [(UIView *)selectionView _setCornerRadius:v8 * 0.5];
  imageBackgroundView = self->_imageBackgroundView;
  [(UIView *)imageBackgroundView frame];
  [(UIView *)imageBackgroundView _setCornerRadius:v10 * 0.5];
}

@end