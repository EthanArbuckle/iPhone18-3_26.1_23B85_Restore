@interface OfflineMapDeviceStateRowView
- (OfflineMapDeviceStateRowView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_updateContent;
- (void)setLabelText:(id)a3;
- (void)setTrailingAccessoryView:(id)a3;
- (void)setValueText:(id)a3;
@end

@implementation OfflineMapDeviceStateRowView

- (void)_updateContent
{
  v3 = [(OfflineMapDeviceStateRowView *)self labelText];
  [(UILabel *)self->_titleLabel setText:v3];

  v4 = [(OfflineMapDeviceStateRowView *)self valueText];
  [(UILabel *)self->_valueLabel setText:v4];
}

- (void)setTrailingAccessoryView:(id)a3
{
  v5 = a3;
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView != v5)
  {
    [(UIView *)trailingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_trailingAccessoryView, a3);
    if (self->_trailingAccessoryView)
    {
      [(OfflineMapDeviceStateRowView *)self addSubview:?];
      v19 = [(OfflineMapDeviceStateRowView *)self trailingAnchor];
      v18 = [(UIView *)self->_trailingAccessoryView trailingAnchor];
      v17 = [v19 constraintEqualToAnchor:v18 constant:kMUPlacePlatterPadding];
      v20[0] = v17;
      v16 = [(UIView *)self->_trailingAccessoryView leadingAnchor];
      v7 = [(UILabel *)self->_titleLabel trailingAnchor];
      v8 = [v16 constraintEqualToSystemSpacingAfterAnchor:v7 multiplier:1.0];
      v20[1] = v8;
      v9 = [(UIView *)self->_trailingAccessoryView leadingAnchor];
      v10 = [(UILabel *)self->_valueLabel trailingAnchor];
      v11 = [v9 constraintEqualToSystemSpacingAfterAnchor:v10 multiplier:1.0];
      v20[2] = v11;
      v12 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
      v13 = [(OfflineMapDeviceStateRowView *)self centerYAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v20[3] = v14;
      v15 = [NSArray arrayWithObjects:v20 count:4];
      [NSLayoutConstraint activateConstraints:v15];
    }
  }
}

- (void)setValueText:(id)a3
{
  if (self->_valueText != a3)
  {
    v4 = [a3 copy];
    valueText = self->_valueText;
    self->_valueText = v4;

    [(OfflineMapDeviceStateRowView *)self _updateContent];
  }
}

- (void)setLabelText:(id)a3
{
  if (self->_labelText != a3)
  {
    v4 = [a3 copy];
    labelText = self->_labelText;
    self->_labelText = v4;

    [(OfflineMapDeviceStateRowView *)self _updateContent];
  }
}

- (void)_commonInit
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightMedium];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"RowLabel"];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OfflineMapDeviceStateRowView *)self addSubview:self->_titleLabel];
  v7 = objc_alloc_init(UILabel);
  valueLabel = self->_valueLabel;
  self->_valueLabel = v7;

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_valueLabel setFont:v9];

  v10 = +[UIColor labelColor];
  [(UILabel *)self->_valueLabel setTextColor:v10];

  [(UILabel *)self->_valueLabel setAccessibilityIdentifier:@"RowValue"];
  [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OfflineMapDeviceStateRowView *)self addSubview:self->_valueLabel];
  v34 = [(UILabel *)self->_titleLabel leadingAnchor];
  v33 = [(OfflineMapDeviceStateRowView *)self leadingAnchor];
  v11 = kMUPlacePlatterPadding;
  v32 = [v34 constraintEqualToAnchor:v33 constant:kMUPlacePlatterPadding];
  v35[0] = v32;
  v31 = [(UILabel *)self->_titleLabel topAnchor];
  v30 = [(OfflineMapDeviceStateRowView *)self topAnchor];
  v12 = kMUPlacePlatterCompactVerticalPadding;
  v29 = [v31 constraintEqualToAnchor:v30 constant:kMUPlacePlatterCompactVerticalPadding];
  v35[1] = v29;
  v28 = [(UILabel *)self->_titleLabel trailingAnchor];
  v27 = [(OfflineMapDeviceStateRowView *)self trailingAnchor];
  v26 = [v28 constraintLessThanOrEqualToAnchor:v27 constant:-v11];
  v35[2] = v26;
  v25 = [(UILabel *)self->_valueLabel leadingAnchor];
  v24 = [(OfflineMapDeviceStateRowView *)self leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:v11];
  v35[3] = v23;
  v13 = [(UILabel *)self->_valueLabel topAnchor];
  v14 = [(UILabel *)self->_titleLabel bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:2.0];
  v35[4] = v15;
  v16 = [(UILabel *)self->_valueLabel trailingAnchor];
  v17 = [(OfflineMapDeviceStateRowView *)self trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17 constant:-v11];
  v35[5] = v18;
  v19 = [(UILabel *)self->_valueLabel bottomAnchor];
  v20 = [(OfflineMapDeviceStateRowView *)self bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-v12];
  v35[6] = v21;
  v22 = [NSArray arrayWithObjects:v35 count:7];
  [NSLayoutConstraint activateConstraints:v22];
}

- (OfflineMapDeviceStateRowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = OfflineMapDeviceStateRowView;
  v3 = [(OfflineMapDeviceStateRowView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = v3;
  if (v3)
  {
    [(OfflineMapDeviceStateRowView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

@end