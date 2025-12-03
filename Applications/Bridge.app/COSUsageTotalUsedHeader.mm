@interface COSUsageTotalUsedHeader
- (COSUsageTotalUsedHeader)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)recalcHeight;
- (void)setAvailable:(id)available;
- (void)setName:(id)name;
- (void)setUsed:(id)used;
@end

@implementation COSUsageTotalUsedHeader

- (COSUsageTotalUsedHeader)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = COSUsageTotalUsedHeader;
  v3 = [(COSUsageTotalUsedHeader *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    usedLabel = v3->_usedLabel;
    v3->_usedLabel = v8;

    v10 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_usedLabel setFont:v10];

    v11 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_usedLabel setTextColor:v11];

    [(UILabel *)v3->_usedLabel setTextAlignment:2];
    v12 = +[UIColor clearColor];
    [(UILabel *)v3->_usedLabel setBackgroundColor:v12];

    [(COSUsageTotalUsedHeader *)v3 addSubview:v3->_usedLabel];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    availableLabel = v3->_availableLabel;
    v3->_availableLabel = v13;

    v15 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_availableLabel setFont:v15];

    v16 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_availableLabel setTextColor:v16];

    v17 = +[UIColor clearColor];
    [(UILabel *)v3->_availableLabel setBackgroundColor:v17];

    [(COSUsageTotalUsedHeader *)v3 addSubview:v3->_availableLabel];
    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v18;

    v20 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_titleLabel setFont:v20];

    v21 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_titleLabel setTextColor:v21];

    v22 = +[UIColor clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:v22];

    [(COSUsageTotalUsedHeader *)v3 addSubview:v3->_titleLabel];
  }

  return v3;
}

- (void)recalcHeight
{
  [(UILabel *)self->_titleLabel frame];
  v4 = v3;
  [(UILabel *)self->_availableLabel frame];
  v6 = v5;
  [(UILabel *)self->_usedLabel frame];
  if (v6 >= v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = v4 + v8 + 11.0 + 11.0;
  v10 = sub_10002EC70();
  v11 = 15.0;
  if (v10)
  {
    v11 = 24.0;
  }

  self->_height = v11 + v9;
}

- (void)setName:(id)name
{
  [(UILabel *)self->_titleLabel setText:name];
  [(UILabel *)self->_titleLabel sizeToFit];

  [(COSUsageTotalUsedHeader *)self recalcHeight];
}

- (void)setAvailable:(id)available
{
  [(UILabel *)self->_availableLabel setText:available];
  [(UILabel *)self->_availableLabel sizeToFit];

  [(COSUsageTotalUsedHeader *)self recalcHeight];
}

- (void)setUsed:(id)used
{
  [(UILabel *)self->_usedLabel setText:used];
  [(UILabel *)self->_usedLabel sizeToFit];

  [(COSUsageTotalUsedHeader *)self recalcHeight];
}

- (void)layoutSubviews
{
  [(COSUsageTotalUsedHeader *)self bounds];
  v4 = v3;
  superview = [(COSUsageTotalUsedHeader *)self superview];
  [superview _backgroundInset];
  v7 = v6;

  v8 = 15.0;
  v9 = v7 + 15.0;
  v10 = v4 + v9 * -2.0;
  [(UILabel *)self->_titleLabel frame];
  v12 = v11;
  v14 = v13;
  if (sub_10002EC70())
  {
    v8 = 24.0;
  }

  if (v10 < v12)
  {
    v12 = v4 + v9 * -2.0;
  }

  v15 = v4 - v9;
  if ([(COSUsageTotalUsedHeader *)self _shouldReverseLayoutDirection])
  {
    v16 = v15 - v12;
  }

  else
  {
    v16 = v9;
  }

  [(UILabel *)self->_titleLabel setFrame:v16, v8, v12, v14];
  [(UILabel *)self->_availableLabel frame];
  v18 = v17;
  v29 = v19;
  v31.origin.x = v16;
  v31.origin.y = v8;
  v31.size.width = v12;
  v31.size.height = v14;
  MaxY = CGRectGetMaxY(v31);
  [(UILabel *)self->_usedLabel frame];
  v23 = v22;
  if (v18 + v21 + 6.0 <= v10)
  {
    v25 = v21;
    v24 = v18;
  }

  else
  {
    v24 = floor((v10 + -6.0) * (v18 / (v18 + v21)));
    v25 = v10 + -6.0 - v24;
    if (v24 <= v18)
    {
      if (v25 > v21)
      {
        v24 = v24 + v25 - v21;
      }
    }

    else
    {
      v25 = v25 + v24 - v18;
    }
  }

  v26 = v15 - v21;
  v27 = MaxY + 11.0;
  [(UILabel *)self->_availableLabel setFrame:v9, v27, v24, v29];
  usedLabel = self->_usedLabel;

  [(UILabel *)usedLabel setFrame:v26, v27, v25, v23];
}

@end