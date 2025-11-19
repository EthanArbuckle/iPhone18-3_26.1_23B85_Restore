@interface AlertDeliveryLocationView
+ (double)preferredHeightInWidth:(double)a3;
- (AlertDeliveryLocationView)initWithFrame:(CGRect)a3;
- (CGRect)_usedRect;
- (id)_alertDeliveryLocationImageForType:(unint64_t)a3;
- (id)_typeImageViewTintColorSelected:(BOOL)a3;
- (void)_animateStateChange;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setType:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForUserInterfaceStyleChange;
@end

@implementation AlertDeliveryLocationView

- (AlertDeliveryLocationView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = AlertDeliveryLocationView;
  v3 = [(AlertDeliveryLocationView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(UIImageView);
  typeImageView = v3->_typeImageView;
  v3->_typeImageView = v4;

  v6 = v3->_typeImageView;
  v7 = [(AlertDeliveryLocationView *)v3 _typeImageViewTintColorSelected:0];
  [(UIImageView *)v6 setTintColor:v7];

  v8 = [UIImageView alloc];
  v9 = [UIImage systemImageNamed:@"circle"];
  v10 = [v8 initWithImage:v9];
  uncheckedView = v3->_uncheckedView;
  v3->_uncheckedView = v10;

  [(UIImageView *)v3->_uncheckedView setContentMode:4];
  [(UIImageView *)v3->_uncheckedView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v12 = v3->_uncheckedView;
  v13 = +[UIColor tertiaryLabelColor];
  [(UIImageView *)v12 setTintColor:v13];

  v14 = v3->_uncheckedView;
  v15 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:3];
  [(UIImageView *)v14 setPreferredSymbolConfiguration:v15];

  v16 = [UIImageView alloc];
  v17 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  v18 = [v16 initWithImage:v17];
  checkedView = v3->_checkedView;
  v3->_checkedView = v18;

  [(UIImageView *)v3->_checkedView setContentMode:4];
  [(UIImageView *)v3->_checkedView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v20 = v3->_checkedView;
  v21 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:3];
  [(UIImageView *)v20 setPreferredSymbolConfiguration:v21];

  v22 = objc_alloc_init(UILabel);
  typeLabel = v3->_typeLabel;
  v3->_typeLabel = v22;

  [(UILabel *)v3->_typeLabel setNumberOfLines:0];
  [(UILabel *)v3->_typeLabel setTextAlignment:1];
  v24 = v3->_typeLabel;
  v25 = +[AlertDeliveryLocationView preferredFont];
  [(UILabel *)v24 setFont:v25];

  [(AlertDeliveryLocationView *)v3 addSubview:v3->_typeImageView];
  [(AlertDeliveryLocationView *)v3 addSubview:v3->_uncheckedView];
  [(AlertDeliveryLocationView *)v3 addSubview:v3->_checkedView];
  [(AlertDeliveryLocationView *)v3 addSubview:v3->_typeLabel];
  return v3;
}

- (id)_alertDeliveryLocationImageForType:(unint64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_4D888[a3];
  }

  v6 = NCDeviceTypePrefix();
  v7 = [NSString stringWithFormat:@"%@-%@", v6, v5];

  v8 = +[UIScreen mainScreen];
  v9 = [v8 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == &dword_0 + 1)
  {
    v11 = +[BSPlatform sharedInstance];
    v12 = [v11 homeButtonType];

    if (v12 != &dword_0 + 2)
    {
      v13 = [NSString stringWithFormat:@"%@-legacy", v7];

      v7 = v13;
    }

    v14 = [(AlertDeliveryLocationView *)self traitCollection];
    v15 = [v14 userInterfaceStyle];

    if (v15 == &dword_0 + 2)
    {
      v16 = [NSString stringWithFormat:@"%@-dark", v7];

      v7 = v16;
    }
  }

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [UIImage imageNamed:v7 inBundle:v17];
  v19 = v18;
  if (!a3)
  {
    v20 = NCDeviceImageWithDefaultSystemClock(v18);

    v19 = v20;
  }

  v21 = [v19 imageWithRenderingMode:2];

  return v21;
}

- (void)layoutSubviews
{
  v3 = [(AlertDeliveryLocationView *)self highlighted];
  v4 = 0.5056;
  if (!v3)
  {
    v4 = 1.0;
  }

  [(AlertDeliveryLocationView *)self setAlpha:v4];
  [(AlertDeliveryLocationView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(UIImageView *)self->_typeImageView image];
  [v9 size];

  UIRectCenteredXInRect();
  v11 = v10;
  v13 = v12;
  v42 = v15;
  v43 = v14;
  [(UIImageView *)self->_typeImageView setFrame:?];
  [(UILabel *)self->_typeLabel sizeThatFits:v6, 1.79769313e308];
  v16 = v8;
  UIRectCenteredXInRect();
  [(UILabel *)self->_typeLabel setFrame:?];
  v17 = [(UILabel *)self->_typeLabel font];
  [v17 _scaledValueForValue:18.0];
  v19 = v18;

  v46.origin.x = v11;
  v46.origin.y = v13;
  v46.size.height = v42;
  v46.size.width = v43;
  [(UILabel *)self->_typeLabel _setFirstLineBaselineFrameOriginY:v19 + CGRectGetMaxY(v46)];
  v20 = [(UILabel *)self->_typeLabel font];
  [v20 _scaledValueForValue:14.0];

  [(UIImageView *)self->_checkedView intrinsicContentSize];
  if (v21 >= v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  [(UILabel *)self->_typeLabel frame];
  CGRectGetMaxY(v47);
  UIRectCenteredXInRect();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (![(AlertDeliveryLocationView *)self _isTemplateViewForSizing])
  {
    v32 = v16 - v23;
    v48.origin.x = v25;
    v48.origin.y = v27;
    v48.size.width = v29;
    v48.size.height = v31;
    MinY = CGRectGetMinY(v48);
    v49.origin.x = v25;
    v49.origin.y = v32;
    v49.size.width = v23;
    v49.size.height = v23;
    if (MinY < CGRectGetMinY(v49))
    {
      v27 = v32;
      v29 = v23;
      v31 = v23;
    }
  }

  memset(&v45, 0, sizeof(v45));
  if ([(AlertDeliveryLocationView *)self selected])
  {
    v34 = *&CGAffineTransformIdentity.c;
    *&v45.a = *&CGAffineTransformIdentity.a;
    *&v45.c = v34;
    *&v45.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    CGAffineTransformMakeScale(&v45, 0.01, 0.01);
  }

  checkedView = self->_checkedView;
  v36 = *&CGAffineTransformIdentity.c;
  *&v44.a = *&CGAffineTransformIdentity.a;
  *&v44.c = v36;
  *&v44.tx = *&CGAffineTransformIdentity.tx;
  [(UIImageView *)checkedView setTransform:&v44];
  [(UIImageView *)self->_checkedView setFrame:v25, v27, v29, v31];
  v37 = self->_checkedView;
  v44 = v45;
  [(UIImageView *)v37 setTransform:&v44];
  [(UIImageView *)self->_uncheckedView setFrame:v25, v27, v29, v31];
  [(UIImageView *)self->_checkedView _setCornerRadius:v23 * 0.5];
  [(UIImageView *)self->_uncheckedView _setCornerRadius:v23 * 0.5];
  v38 = self->_checkedView;
  if ([(AlertDeliveryLocationView *)self selected])
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  [(UIImageView *)v38 setAlpha:v39];
  uncheckedView = self->_uncheckedView;
  if ([(AlertDeliveryLocationView *)self selected])
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  [(UIImageView *)uncheckedView setAlpha:v41];
}

- (void)setType:(unint64_t)a3
{
  self->_type = a3;
  if (a3 > 2)
  {
    v8 = 0;
  }

  else
  {
    v5 = off_4D8A0[a3];
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v6 localizedStringForKey:v5 value:&stru_4E3F0 table:@"NotificationsSettings"];
  }

  [(UILabel *)self->_typeLabel setText:v8];
  v7 = [(AlertDeliveryLocationView *)self _alertDeliveryLocationImageForType:a3];
  [(UIImageView *)self->_typeImageView setImage:v7];
  [(AlertDeliveryLocationView *)self setNeedsLayout];
}

- (void)updateForUserInterfaceStyleChange
{
  v3 = [(AlertDeliveryLocationView *)self _alertDeliveryLocationImageForType:self->_type];
  [(UIImageView *)self->_typeImageView setImage:v3];
  [(AlertDeliveryLocationView *)self setNeedsLayout];
}

- (void)_animateStateChange
{
  [(AlertDeliveryLocationView *)self setNeedsLayout];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1C788;
  v3[3] = &unk_4D388;
  v3[4] = self;
  [UIView _animateUsingDefaultTimingWithOptions:2054 animations:v3 completion:0];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(AlertDeliveryLocationView *)self selected]!= a3)
  {
    self->_selected = v5;
    typeImageView = self->_typeImageView;
    v8 = [(AlertDeliveryLocationView *)self _typeImageViewTintColorSelected:v5];
    [(UIImageView *)typeImageView setTintColor:v8];

    if (v4)
    {

      [(AlertDeliveryLocationView *)self _animateStateChange];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if ([(AlertDeliveryLocationView *)self highlighted]!= a3)
  {
    self->_highlighted = a3;

    [(AlertDeliveryLocationView *)self setNeedsLayout];
  }
}

- (CGRect)_usedRect
{
  [(UIImageView *)self->_typeImageView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_typeLabel frame];
  v45.origin.x = v11;
  v45.origin.y = v12;
  v45.size.width = v13;
  v45.size.height = v14;
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  v41 = CGRectUnion(v40, v45);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  [(UIImageView *)self->_checkedView frame];
  v46.origin.x = v19;
  v46.origin.y = v20;
  v46.size.width = v21;
  v46.size.height = v22;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v43 = CGRectUnion(v42, v46);
  v23 = v43.origin.x;
  v24 = v43.origin.y;
  v25 = v43.size.width;
  v26 = v43.size.height;
  [(UIImageView *)self->_uncheckedView frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;

  return CGRectUnion(*&v35, *&v28);
}

+ (double)preferredHeightInWidth:(double)a3
{
  v3 = 0;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  do
  {
    v8 = [[AlertDeliveryLocationView alloc] initWithFrame:0.0, 0.0, a3, 1000.0];
    [(AlertDeliveryLocationView *)v8 _setIsTemplateViewForSizing:1];
    [(AlertDeliveryLocationView *)v8 setType:v3];
    [(AlertDeliveryLocationView *)v8 layoutIfNeeded];
    [(AlertDeliveryLocationView *)v8 _usedRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    if (CGRectIsNull(v19))
    {
      height = v16;
    }

    else
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v22.origin.x = v10;
      v22.origin.y = v12;
      v22.size.width = v14;
      v22.size.height = v16;
      v21 = CGRectUnion(v20, v22);
      v10 = v21.origin.x;
      v12 = v21.origin.y;
      v14 = v21.size.width;
      height = v21.size.height;
    }

    ++v3;
    x = v10;
    y = v12;
    width = v14;
  }

  while (v3 != 3);
  return height;
}

- (id)_typeImageViewTintColorSelected:(BOOL)a3
{
  if (a3)
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor grayColor];
  }
  v3 = ;

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = AlertDeliveryLocationView;
  v4 = a3;
  [(AlertDeliveryLocationView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(AlertDeliveryLocationView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(AlertDeliveryLocationView *)self updateForUserInterfaceStyleChange];
  }
}

@end