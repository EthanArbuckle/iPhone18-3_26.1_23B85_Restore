@interface CARSettingsCollectionViewHeader
- (CARSettingsCollectionViewHeader)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)sectionInsets;
- (void)setSectionInsets:(UIEdgeInsets)a3;
- (void)setTitle:(id)a3;
@end

@implementation CARSettingsCollectionViewHeader

- (CARSettingsCollectionViewHeader)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = CARSettingsCollectionViewHeader;
  v3 = [(CARSettingsCollectionViewHeader *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v9 = [(CARSettingsCollectionViewHeader *)v3 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:0.0];
    leadingConstraint = v3->_leadingConstraint;
    v3->_leadingConstraint = v10;

    v21[0] = v3->_leadingConstraint;
    v12 = [(CARSettingsCollectionViewHeader *)v3 trailingAnchor];
    v13 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v21[1] = v14;
    v15 = [(CARSettingsCollectionViewHeader *)v3 bottomAnchor];
    v16 = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:6.0];
    v21[2] = v17;
    v18 = [NSArray arrayWithObjects:v21 count:3];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsCollectionViewHeader *)self titleLabel];
  [v5 setText:v4];
}

- (void)setSectionInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  v6 = [(CARSettingsCollectionViewHeader *)self traitCollection:a3.top];
  if ([v6 layoutDirection] != 1)
  {
    right = left;
  }

  v7 = [(CARSettingsCollectionViewHeader *)self leadingConstraint];
  [v7 setConstant:right];
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