@interface OfflineMapDeviceStateRowView
- (OfflineMapDeviceStateRowView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_updateContent;
- (void)setLabelText:(id)text;
- (void)setTrailingAccessoryView:(id)view;
- (void)setValueText:(id)text;
@end

@implementation OfflineMapDeviceStateRowView

- (void)_updateContent
{
  labelText = [(OfflineMapDeviceStateRowView *)self labelText];
  [(UILabel *)self->_titleLabel setText:labelText];

  valueText = [(OfflineMapDeviceStateRowView *)self valueText];
  [(UILabel *)self->_valueLabel setText:valueText];
}

- (void)setTrailingAccessoryView:(id)view
{
  viewCopy = view;
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView != viewCopy)
  {
    [(UIView *)trailingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_trailingAccessoryView, view);
    if (self->_trailingAccessoryView)
    {
      [(OfflineMapDeviceStateRowView *)self addSubview:?];
      trailingAnchor = [(OfflineMapDeviceStateRowView *)self trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_trailingAccessoryView trailingAnchor];
      v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:kMUPlacePlatterPadding];
      v20[0] = v17;
      leadingAnchor = [(UIView *)self->_trailingAccessoryView leadingAnchor];
      trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
      v8 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
      v20[1] = v8;
      leadingAnchor2 = [(UIView *)self->_trailingAccessoryView leadingAnchor];
      trailingAnchor4 = [(UILabel *)self->_valueLabel trailingAnchor];
      v11 = [leadingAnchor2 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
      v20[2] = v11;
      centerYAnchor = [(UIView *)self->_trailingAccessoryView centerYAnchor];
      centerYAnchor2 = [(OfflineMapDeviceStateRowView *)self centerYAnchor];
      v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v20[3] = v14;
      v15 = [NSArray arrayWithObjects:v20 count:4];
      [NSLayoutConstraint activateConstraints:v15];
    }
  }
}

- (void)setValueText:(id)text
{
  if (self->_valueText != text)
  {
    v4 = [text copy];
    valueText = self->_valueText;
    self->_valueText = v4;

    [(OfflineMapDeviceStateRowView *)self _updateContent];
  }
}

- (void)setLabelText:(id)text
{
  if (self->_labelText != text)
  {
    v4 = [text copy];
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
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(OfflineMapDeviceStateRowView *)self leadingAnchor];
  v11 = kMUPlacePlatterPadding;
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:kMUPlacePlatterPadding];
  v35[0] = v32;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(OfflineMapDeviceStateRowView *)self topAnchor];
  v12 = kMUPlacePlatterCompactVerticalPadding;
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:kMUPlacePlatterCompactVerticalPadding];
  v35[1] = v29;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(OfflineMapDeviceStateRowView *)self trailingAnchor];
  v26 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-v11];
  v35[2] = v26;
  leadingAnchor3 = [(UILabel *)self->_valueLabel leadingAnchor];
  leadingAnchor4 = [(OfflineMapDeviceStateRowView *)self leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v11];
  v35[3] = v23;
  topAnchor3 = [(UILabel *)self->_valueLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v15 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  v35[4] = v15;
  trailingAnchor3 = [(UILabel *)self->_valueLabel trailingAnchor];
  trailingAnchor4 = [(OfflineMapDeviceStateRowView *)self trailingAnchor];
  v18 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-v11];
  v35[5] = v18;
  bottomAnchor2 = [(UILabel *)self->_valueLabel bottomAnchor];
  bottomAnchor3 = [(OfflineMapDeviceStateRowView *)self bottomAnchor];
  v21 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v12];
  v35[6] = v21;
  v22 = [NSArray arrayWithObjects:v35 count:7];
  [NSLayoutConstraint activateConstraints:v22];
}

- (OfflineMapDeviceStateRowView)initWithFrame:(CGRect)frame
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