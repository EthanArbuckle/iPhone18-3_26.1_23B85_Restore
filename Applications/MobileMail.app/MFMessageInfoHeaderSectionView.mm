@interface MFMessageInfoHeaderSectionView
- (MFMessageInfoHeaderSectionView)initWithFrame:(CGRect)frame;
@end

@implementation MFMessageInfoHeaderSectionView

- (MFMessageInfoHeaderSectionView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = MFMessageInfoHeaderSectionView;
  v3 = [(MFMessageInfoHeaderSectionView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    defaultContentConfiguration = [(MFMessageInfoHeaderSectionView *)v3 defaultContentConfiguration];
    if (_os_feature_enabled_impl())
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    }

    else
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    }
    v6 = ;
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setFont:v6];

    [(MFMessageInfoHeaderSectionView *)v4 setContentConfiguration:defaultContentConfiguration];
    v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    seeAllButton = v4->_seeAllButton;
    v4->_seeAllButton = v8;

    v10 = _EFLocalizedString();
    [(UILabel *)v4->_seeAllButton setText:v10];

    v11 = +[UIColor systemBlueColor];
    [(UILabel *)v4->_seeAllButton setTextColor:v11];

    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(UILabel *)v4->_seeAllButton setFont:v12];

    [(UILabel *)v4->_seeAllButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_seeAllButton setUserInteractionEnabled:1];
    contentView = [(MFMessageInfoHeaderSectionView *)v4 contentView];
    [contentView addSubview:v4->_seeAllButton];

    trailingAnchor = [(UILabel *)v4->_seeAllButton trailingAnchor];
    trailingAnchor2 = [(MFMessageInfoHeaderSectionView *)v4 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
    v23[0] = v16;
    centerYAnchor = [(UILabel *)v4->_seeAllButton centerYAnchor];
    centerYAnchor2 = [(MFMessageInfoHeaderSectionView *)v4 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v23[1] = v19;
    v20 = [NSArray arrayWithObjects:v23 count:2];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v4;
}

@end