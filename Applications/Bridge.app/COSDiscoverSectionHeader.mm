@interface COSDiscoverSectionHeader
+ (id)titleLabelFont;
- (COSDiscoverSectionHeader)initWithFrame:(CGRect)frame;
- (void)setSectionTitle:(id)title;
@end

@implementation COSDiscoverSectionHeader

- (COSDiscoverSectionHeader)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = COSDiscoverSectionHeader;
  v3 = [(COSDiscoverSectionHeader *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = v3->_titleLabel;
    titleLabelFont = [objc_opt_class() titleLabelFont];
    [(UILabel *)v6 setFont:titleLabelFont];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v8 = +[UIColor whiteColor];
    [(UILabel *)v3->_titleLabel setTextColor:v8];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(COSDiscoverSectionHeader *)v3 addSubview:v3->_titleLabel];
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [(COSDiscoverSectionHeader *)v3 topAnchor];
    [objc_opt_class() topMargin];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v24[0] = v20;
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [(COSDiscoverSectionHeader *)v3 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v24[1] = v10;
    trailingAnchor = [(COSDiscoverSectionHeader *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
    v24[2] = v13;
    bottomAnchor = [(COSDiscoverSectionHeader *)v3 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v3->_titleLabel bottomAnchor];
    [objc_opt_class() bottomMargin];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
    v24[3] = v16;
    v17 = [NSArray arrayWithObjects:v24 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }

  return v3;
}

+ (id)titleLabelFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:2 options:0];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)setSectionTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(COSDiscoverSectionHeader *)self layoutSubviews];
}

@end