@interface CARSettingsCollectionViewHeader
- (CARSettingsCollectionViewHeader)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)sectionInsets;
- (void)setSectionInsets:(UIEdgeInsets)insets;
- (void)setTitle:(id)title;
@end

@implementation CARSettingsCollectionViewHeader

- (CARSettingsCollectionViewHeader)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = CARSettingsCollectionViewHeader;
  v3 = [(CARSettingsCollectionViewHeader *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightBold];
    [(UILabel *)v3->_titleLabel setFont:v6];

    v7 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v7];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CARSettingsCollectionViewHeader *)v3 addSubview:v3->_titleLabel];
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [(CARSettingsCollectionViewHeader *)v3 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    leadingConstraint = v3->_leadingConstraint;
    v3->_leadingConstraint = v10;

    v21[0] = v3->_leadingConstraint;
    trailingAnchor = [(CARSettingsCollectionViewHeader *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v21[1] = v14;
    bottomAnchor = [(CARSettingsCollectionViewHeader *)v3 bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:6.0];
    v21[2] = v17;
    v18 = [NSArray arrayWithObjects:v21 count:3];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(CARSettingsCollectionViewHeader *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)setSectionInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  v6 = [(CARSettingsCollectionViewHeader *)self traitCollection:insets.top];
  if ([v6 layoutDirection] != 1)
  {
    right = left;
  }

  leadingConstraint = [(CARSettingsCollectionViewHeader *)self leadingConstraint];
  [leadingConstraint setConstant:right];
}

- (UIEdgeInsets)sectionInsets
{
  top = self->_sectionInsets.top;
  left = self->_sectionInsets.left;
  bottom = self->_sectionInsets.bottom;
  right = self->_sectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end