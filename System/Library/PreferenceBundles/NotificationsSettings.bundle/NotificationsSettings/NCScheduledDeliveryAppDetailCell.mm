@interface NCScheduledDeliveryAppDetailCell
- (double)_availableWidthForCountBar;
- (double)_widthForCountBarView;
- (id)_parentViewForCountBar;
- (void)_configureCountBarDotViewIfNecessary;
- (void)_configureCountBarViewIfNecessary;
- (void)_configureCountLabelIfNecessary;
- (void)_layoutCountBarDotView;
- (void)_layoutCountBarView;
- (void)_layoutCountLabel;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation NCScheduledDeliveryAppDetailCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = NCScheduledDeliveryAppDetailCell;
  specifierCopy = specifier;
  [(NCScheduledDeliveryAppDetailCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"SCHEDULED_DELIVERY_APP_COUNT_KEY", v8.receiver, v8.super_class}];
  self->_count = [v5 unsignedIntegerValue];

  v6 = [specifierCopy propertyForKey:@"SCHEDULED_DELIVERY_MAX_COUNT_KEY"];

  self->_maxCount = [v6 unsignedIntegerValue];
  detailTextLabel = [(NCScheduledDeliveryAppDetailCell *)self detailTextLabel];
  [detailTextLabel setText:@" "];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCScheduledDeliveryAppDetailCell;
  [(NCScheduledDeliveryAppDetailCell *)&v3 layoutSubviews];
  [(NCScheduledDeliveryAppDetailCell *)self _configureCountBarViewIfNecessary];
  [(NCScheduledDeliveryAppDetailCell *)self _configureCountBarDotViewIfNecessary];
  [(NCScheduledDeliveryAppDetailCell *)self _configureCountLabelIfNecessary];
  [(NCScheduledDeliveryAppDetailCell *)self _layoutCountLabel];
  [(NCScheduledDeliveryAppDetailCell *)self _layoutCountBarView];
  [(NCScheduledDeliveryAppDetailCell *)self _layoutCountBarDotView];
}

- (void)_configureCountBarViewIfNecessary
{
  if (!self->_countBarView)
  {
    v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    countBarView = self->_countBarView;
    self->_countBarView = v3;

    v5 = self->_countBarView;
    v6 = +[UIColor systemGray3Color];
    [(UIView *)v5 setBackgroundColor:v6];

    [(UIView *)self->_countBarView _setContinuousCornerRadius:2.0];
    _parentViewForCountBar = [(NCScheduledDeliveryAppDetailCell *)self _parentViewForCountBar];
    [_parentViewForCountBar addSubview:self->_countBarView];
  }
}

- (void)_configureCountBarDotViewIfNecessary
{
  if (!self->_countBarDotView)
  {
    v3 = objc_alloc_init(UIView);
    countBarDotView = self->_countBarDotView;
    self->_countBarDotView = v3;

    v5 = self->_countBarDotView;
    v6 = +[UIColor systemRedColor];
    [(UIView *)v5 setBackgroundColor:v6];

    layer = [(UIView *)self->_countBarDotView layer];
    [layer setCornerRadius:4.5];

    _parentViewForCountBar = [(NCScheduledDeliveryAppDetailCell *)self _parentViewForCountBar];
    [_parentViewForCountBar addSubview:self->_countBarDotView];
  }
}

- (void)_configureCountLabelIfNecessary
{
  if (!self->_countLabel)
  {
    v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    countLabel = self->_countLabel;
    self->_countLabel = v3;

    v5 = self->_countLabel;
    v6 = +[UIColor secondaryLabelColor];
    [(UILabel *)v5 setTextColor:v6];

    v7 = self->_countLabel;
    v8 = [NSNumber numberWithUnsignedInteger:self->_count];
    v9 = [NSNumberFormatter localizedStringFromNumber:v8 numberStyle:0];
    [(UILabel *)v7 setText:v9];

    v10 = self->_countLabel;
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v10 setFont:v11];

    _parentViewForCountBar = [(NCScheduledDeliveryAppDetailCell *)self _parentViewForCountBar];
    [_parentViewForCountBar addSubview:self->_countLabel];
  }
}

- (void)_layoutCountLabel
{
  countLabel = self->_countLabel;
  if (countLabel)
  {
    [(UILabel *)countLabel frame];
    rect = v4;
    v6 = v5;
    titleLabel = [(NCScheduledDeliveryAppDetailCell *)self titleLabel];
    [titleLabel frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = self->_countLabel;
    [(NCScheduledDeliveryAppDetailCell *)self bounds];
    [(UILabel *)v16 sizeThatFits:v17, v18];
    v20 = v19;
    v22 = v21;
    [(NCScheduledDeliveryAppDetailCell *)self _widthForCountBarView];
    _shouldReverseLayoutDirection = [(NCScheduledDeliveryAppDetailCell *)self _shouldReverseLayoutDirection];
    v24 = v9;
    v25 = v11;
    v26 = v13;
    v27 = v15;
    if (_shouldReverseLayoutDirection)
    {
      CGRectGetMaxX(*&v24);
      v31.origin.x = rect;
      v31.origin.y = v6;
      v31.size.width = v20;
      v31.size.height = v22;
      CGRectGetWidth(v31);
    }

    else
    {
      CGRectGetMinX(*&v24);
    }

    v32.origin.x = v9;
    v32.origin.y = v11;
    v32.size.width = v13;
    v32.size.height = v15;
    CGRectGetMaxY(v32);
    UIRectIntegralWithScale();
    v28 = self->_countLabel;

    [(UILabel *)v28 setFrame:?];
  }
}

- (void)_layoutCountBarView
{
  countBarView = self->_countBarView;
  if (countBarView)
  {
    [(UIView *)countBarView frame];
    titleLabel = [(NCScheduledDeliveryAppDetailCell *)self titleLabel];
    [titleLabel frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(NCScheduledDeliveryAppDetailCell *)self _widthForCountBarView];
    _shouldReverseLayoutDirection = [(NCScheduledDeliveryAppDetailCell *)self _shouldReverseLayoutDirection];
    v14 = v6;
    v15 = v8;
    v16 = v10;
    v17 = v12;
    if (_shouldReverseLayoutDirection)
    {
      MaxX = CGRectGetMaxX(*&v14);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v14);
    }

    [(UILabel *)self->_countLabel frame];
    UIRectCenteredYInRect();
    UIRectIntegralWithScale();
    v19 = self->_countBarView;

    [(UIView *)v19 setFrame:?];
  }
}

- (void)_layoutCountBarDotView
{
  countBarDotView = self->_countBarDotView;
  if (countBarDotView)
  {
    [(UIView *)countBarDotView frame];
    [(UIView *)self->_countBarView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    _shouldReverseLayoutDirection = [(NCScheduledDeliveryAppDetailCell *)self _shouldReverseLayoutDirection];
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
    if (_shouldReverseLayoutDirection)
    {
      CGRectGetMinX(*&v13);
    }

    else
    {
      CGRectGetMaxX(*&v13);
    }

    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    CGRectGetMinY(v19);
    UIRectIntegralWithScale();
    v17 = self->_countBarDotView;

    [(UIView *)v17 setFrame:?];
  }
}

- (double)_widthForCountBarView
{
  if (!self->_maxCount)
  {
    return 0.0;
  }

  [(NCScheduledDeliveryAppDetailCell *)self _availableWidthForCountBar];
  return v3 * self->_count / self->_maxCount;
}

- (double)_availableWidthForCountBar
{
  if (([(NCScheduledDeliveryAppDetailCell *)self _shouldReverseLayoutDirection]& 1) != 0)
  {
    titleLabel = [(NCScheduledDeliveryAppDetailCell *)self titleLabel];
    [titleLabel frame];
    MaxX = CGRectGetMaxX(v8);
    [(NCScheduledDeliveryAppDetailCell *)self control];
  }

  else
  {
    titleLabel = [(NCScheduledDeliveryAppDetailCell *)self control];
    [titleLabel frame];
    MaxX = CGRectGetMinX(v9);
    [(NCScheduledDeliveryAppDetailCell *)self titleLabel];
  }
  v5 = ;
  [v5 frame];
  v6 = MaxX - CGRectGetMinX(v10);

  return v6 + -65.0;
}

- (id)_parentViewForCountBar
{
  titleLabel = [(NCScheduledDeliveryAppDetailCell *)self titleLabel];
  superview = [titleLabel superview];

  return superview;
}

@end