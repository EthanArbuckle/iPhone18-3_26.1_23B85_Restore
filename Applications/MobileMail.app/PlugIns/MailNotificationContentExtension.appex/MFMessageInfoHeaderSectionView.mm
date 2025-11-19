@interface MFMessageInfoHeaderSectionView
- (MFMessageInfoHeaderSectionView)initWithFrame:(CGRect)a3;
@end

@implementation MFMessageInfoHeaderSectionView

- (MFMessageInfoHeaderSectionView)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = MFMessageInfoHeaderSectionView;
  v3 = [(MFMessageInfoHeaderSectionView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MFMessageInfoHeaderSectionView *)v3 defaultContentConfiguration];
    if (_os_feature_enabled_impl())
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    }

    else
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    }
    v6 = ;
    v7 = [v5 textProperties];
    [v7 setFont:v6];

    [(MFMessageInfoHeaderSectionView *)v4 setContentConfiguration:v5];
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
    v13 = [(MFMessageInfoHeaderSectionView *)v4 contentView];
    [v13 addSubview:v4->_seeAllButton];

    v14 = [(UILabel *)v4->_seeAllButton trailingAnchor];
    v15 = [(MFMessageInfoHeaderSectionView *)v4 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-15.0];
    v23[0] = v16;
    v17 = [(UILabel *)v4->_seeAllButton centerYAnchor];
    v18 = [(MFMessageInfoHeaderSectionView *)v4 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v23[1] = v19;
    v20 = [NSArray arrayWithObjects:v23 count:2];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v4;
}

@end