@interface HWHandwritingItemColectionViewCell
+ (id)_jitterPositionAnimation;
+ (id)_jitterTransformAnimation;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (HWHandwritingItemColectionViewCell)initWithCoder:(id)a3;
- (HWHandwritingItemColectionViewCell)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_commonInit;
- (void)_updateCoronaColors;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setJitter:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HWHandwritingItemColectionViewCell

- (HWHandwritingItemColectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HWHandwritingItemColectionViewCell;
  v3 = [(HWHandwritingItemColectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HWHandwritingItemColectionViewCell *)v3 _commonInit];
  }

  return v4;
}

- (HWHandwritingItemColectionViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HWHandwritingItemColectionViewCell;
  v3 = [(HWHandwritingItemColectionViewCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HWHandwritingItemColectionViewCell *)v3 _commonInit];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HWHandwritingItemColectionViewCell;
  v4 = a3;
  [(HWHandwritingItemColectionViewCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(HWHandwritingItemColectionViewCell *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(HWHandwritingItemColectionViewCell *)self _updateCoronaColors];
  }
}

- (void)_updateCoronaColors
{
  v3 = +[UIColor favoritesPickerItemBorderColor];
  v4 = [v3 CGColor];
  v5 = [(HWHandwritingItemColectionViewCell *)self borderView];
  v6 = [v5 layer];
  [v6 setBorderColor:v4];

  v11 = [UIColor colorWithRed:0.290196078 green:0.325490196 blue:0.376470588 alpha:0.24];
  v7 = v11;
  v8 = [v11 CGColor];
  v9 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v10 = [v9 layer];
  [v10 setBorderColor:v8];
}

- (void)_commonInit
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(HWHandwritingItemColectionViewCell *)self setBorderView:v7];

  v8 = +[UIColor favoritesPickerItemBackgroundColor];
  v9 = [(HWHandwritingItemColectionViewCell *)self borderView];
  [v9 setBackgroundColor:v8];

  v10 = +[UIColor favoritesPickerItemBorderColor];
  v11 = [v10 CGColor];
  v12 = [(HWHandwritingItemColectionViewCell *)self borderView];
  v13 = [v12 layer];
  [v13 setBorderColor:v11];

  v14 = +[UIScreen mainScreen];
  [v14 scale];
  v16 = 1.0 / v15;
  v17 = [(HWHandwritingItemColectionViewCell *)self borderView];
  v18 = [v17 layer];
  [v18 setBorderWidth:v16];

  v19 = [(HWHandwritingItemColectionViewCell *)self borderView];
  v20 = [v19 layer];
  [v20 setCornerRadius:5.0];

  v21 = [(HWHandwritingItemColectionViewCell *)self borderView];
  [v21 setHidden:0];

  v22 = [[UIImageView alloc] initWithImage:0];
  [(HWHandwritingItemColectionViewCell *)self setImageView:v22];

  v23 = [(HWHandwritingItemColectionViewCell *)self imageView];
  [v23 setContentMode:4];

  v24 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(HWHandwritingItemColectionViewCell *)self setHighlightOverlayView:v24];

  v25 = +[UIColor blackColor];
  v26 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [v26 setBackgroundColor:v25];

  v27 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  v28 = [v27 layer];
  LODWORD(v29) = 1041865114;
  [v28 setOpacity:v29];

  v30 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  v31 = [v30 layer];
  [v31 setCornerRadius:5.0];

  v32 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [v32 setHidden:1];

  v33 = [[HWButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(HWHandwritingItemColectionViewCell *)self setDeleteButton:v33];

  v34 = +[NSBundle hw_handwritingPluginBundle];
  v35 = [v34 localizedStringForKey:@"Delete" value:&stru_28B70 table:@"HWFavoritesPickerView"];
  v36 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v36 setAccessibilityLabel:v35];

  v37 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v37 setHidden:1];

  v38 = [UIColor colorWithWhite:1.0 alpha:0.95];
  v39 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v39 setBackgroundColor:v38];

  v40 = [UIColor colorWithRed:0.360784314 green:0.392156863 blue:0.439215686 alpha:1.0];
  v41 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v41 setTintColor:v40];

  v42 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v43 = [v42 layer];
  [v43 setShadowRadius:5.0];

  v44 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v45 = [v44 layer];
  [v45 setShadowOffset:{0.0, 4.0}];

  v46 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v47 = [v46 layer];
  LODWORD(v48) = 1039516303;
  [v47 setShadowOpacity:v48];

  v49 = +[UIColor blackColor];
  v50 = [v49 CGColor];
  v51 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v52 = [v51 layer];
  [v52 setShadowColor:v50];

  v53 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v54 = [v53 layer];
  [v54 setCornerRadius:11.0];

  v55 = [UIColor colorWithRed:0.290196078 green:0.325490196 blue:0.376470588 alpha:0.24];
  v56 = [v55 CGColor];
  v57 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v58 = [v57 layer];
  [v58 setBorderColor:v56];

  v59 = +[UIScreen mainScreen];
  [v59 scale];
  v61 = 1.0 / v60;
  v62 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v63 = [v62 layer];
  [v63 setBorderWidth:v61];

  v64 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v64 setAlpha:1.0];

  v65 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:9.0];
  v72 = [UIImage systemImageNamed:@"xmark" withConfiguration:v65];

  v66 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v66 setImage:v72 forState:0];

  v67 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v67 sizeToFit];

  v68 = [(HWHandwritingItemColectionViewCell *)self borderView];
  [(HWHandwritingItemColectionViewCell *)self addSubview:v68];

  v69 = [(HWHandwritingItemColectionViewCell *)self imageView];
  [(HWHandwritingItemColectionViewCell *)self addSubview:v69];

  v70 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [(HWHandwritingItemColectionViewCell *)self addSubview:v70];

  v71 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [(HWHandwritingItemColectionViewCell *)self addSubview:v71];
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = HWHandwritingItemColectionViewCell;
  [(HWHandwritingItemColectionViewCell *)&v37 layoutSubviews];
  [(HWHandwritingItemColectionViewCell *)self bounds];
  v4 = v3 + *algn_322F8;
  v6 = *&qword_322F0 + v5;
  v8 = v7 - (*algn_322F8 + *(&xmmword_32300 + 1));
  v10 = v9 - (*&qword_322F0 + *&xmmword_32300);
  v11 = [(HWHandwritingItemColectionViewCell *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(HWHandwritingItemColectionViewCell *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(HWHandwritingItemColectionViewCell *)self borderView];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(HWHandwritingItemColectionViewCell *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [v29 setFrame:{v22, v24, v26, v28}];

  v30 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v30 bounds];
  v32 = v31;
  v34 = v33;

  v38.size.width = 22.0;
  v38.size.height = 22.0;
  v38.origin.x = v32;
  v38.origin.y = v34;
  v35 = -(CGRectGetHeight(v38) * 0.5 + -3.0);
  v36 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v36 setFrame:{v35, v35, 22.0, 22.0}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HWHandwritingItemColectionViewCell;
  if ([(HWHandwritingItemColectionViewCell *)&v16 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else if ([(HWHandwritingItemColectionViewCell *)self editing])
  {
    v9 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
    [v9 convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
    v8 = [v14 pointInside:v7 withEvent:{v11, v13}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  v9 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v9 convertPoint:self fromView:{x, y}];
  v10 = [v8 hitTest:v7 withEvent:?];

  if (!v10)
  {
    v12.receiver = self;
    v12.super_class = HWHandwritingItemColectionViewCell;
    v10 = [(HWHandwritingItemColectionViewCell *)&v12 hitTest:v7 withEvent:x, y];
  }

  return v10;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HWHandwritingItemColectionViewCell;
  [(HWHandwritingItemColectionViewCell *)&v5 prepareForReuse];
  v3 = [(HWHandwritingItemColectionViewCell *)self imageView];
  [v3 setImage:0];

  v4 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [v4 setHidden:1];

  [(HWHandwritingItemColectionViewCell *)self setUuidString:0];
  [(HWHandwritingItemColectionViewCell *)self setJitter:0];
  [(HWHandwritingItemColectionViewCell *)self setEditing:0];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = HWHandwritingItemColectionViewCell;
  [(HWHandwritingItemColectionViewCell *)&v6 setSelected:?];
  v5 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [v5 setHidden:!v3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = HWHandwritingItemColectionViewCell;
  [(HWHandwritingItemColectionViewCell *)&v12 setHighlighted:?];
  v5 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [v5 setHidden:!v3];

  if (!v3)
  {
    [UIColor colorWithRed:0.360784314 green:0.392156863 blue:0.439215686 alpha:1.0];
  }

  else
  {
    [UIColor colorWithWhite:0.0 alpha:1.0];
  }
  v6 = ;
  v7 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v7 setTintColor:v6];

  if (v3)
  {
    v8 = 0.7;
    v9 = 1.0;
  }

  else
  {
    v9 = 0.95;
    v8 = 1.0;
  }

  v10 = [UIColor colorWithWhite:v8 alpha:v9];
  v11 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [v11 setBackgroundColor:v10];
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    v4 = a3;
    self->_editing = a3;
    [(UIButton *)self->_deleteButton setHidden:!a3];
    v6 = 0.0;
    if (v4)
    {
      v6 = 1.0;
    }

    [(UIButton *)self->_deleteButton setAlpha:v6];

    [(HWHandwritingItemColectionViewCell *)self setJitter:v4];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    v8 = a3;
    self->_editing = a3;
    if (a4)
    {
      v10 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
      [v10 setHidden:0];

      v11 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
      [v11 setAlpha:(v8 ^ 1)];

      v12 = self->_deleteButton;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_DDE4;
      v20[3] = &unk_288E8;
      v20[4] = self;
      v21 = v8;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_DE3C;
      v17 = &unk_28910;
      v18 = v12;
      v19 = v8;
      v13 = v12;
      [UIView animateWithDuration:0x10000 delay:v20 options:&v14 animations:0.18 completion:0.0];
    }

    else
    {
      [(UIButton *)self->_deleteButton setHidden:!a3];
    }

    [(HWHandwritingItemColectionViewCell *)self setJitter:v8, v14, v15, v16, v17];
  }
}

+ (id)_jitterPositionAnimation
{
  v2 = +[CAKeyframeAnimation animation];
  [v2 setKeyPath:@"position"];
  [v2 setDuration:0.25];
  [v2 setAdditive:1];
  LODWORD(v3) = 2139095039;
  [v2 setRepeatCount:v3];
  [v2 setRemovedOnCompletion:0];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = arc4random();
  v6 = floorf(((((v5 % 0x3E8) / 1000.0) + ((v5 % 0x3E8) / 1000.0)) * 0.25) + -0.25);
  v7 = arc4random();
  v8 = [NSValue valueWithCGPoint:v6, floorf(((((v7 % 0x3E8) / 1000.0) + ((v7 % 0x3E8) / 1000.0)) * 0.25) + -0.25)];
  [v4 addObject:v8];
  v9 = arc4random();
  v10 = floorf(((((v9 % 0x3E8) / 1000.0) + ((v9 % 0x3E8) / 1000.0)) * 0.25) + -0.25);
  v11 = arc4random();
  v12 = [NSValue valueWithCGPoint:v10, floorf(((((v11 % 0x3E8) / 1000.0) + ((v11 % 0x3E8) / 1000.0)) * 0.25) + -0.25)];
  [v4 addObject:v12];

  v13 = arc4random();
  v14 = floorf(((((v13 % 0x3E8) / 1000.0) + ((v13 % 0x3E8) / 1000.0)) * 0.25) + -0.25);
  v15 = arc4random();
  v16 = [NSValue valueWithCGPoint:v14, floorf(((((v15 % 0x3E8) / 1000.0) + ((v15 % 0x3E8) / 1000.0)) * 0.25) + -0.25)];
  [v4 addObject:v16];

  v17 = arc4random();
  v18 = floorf(((((v17 % 0x3E8) / 1000.0) + ((v17 % 0x3E8) / 1000.0)) * 0.25) + -0.25);
  v19 = arc4random();
  v20 = [NSValue valueWithCGPoint:v18, floorf(((((v19 % 0x3E8) / 1000.0) + ((v19 % 0x3E8) / 1000.0)) * 0.25) + -0.25)];
  [v4 addObject:v20];

  [v4 addObject:v8];
  [v2 setBeginTime:(ceilf((arc4random() % 0x3E8 + 1) * 0.2) * 0.05)];
  [v2 setValues:v4];

  return v2;
}

+ (id)_jitterTransformAnimation
{
  v2 = +[CAKeyframeAnimation animation];
  [v2 setKeyPath:@"transform"];
  [v2 setDuration:0.25];
  v3 = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
  [v2 setValueFunction:v3];

  [v2 setAdditive:1];
  LODWORD(v4) = 2139095039;
  [v2 setRepeatCount:v4];
  [v2 setRemovedOnCompletion:0];
  v5 = objc_alloc_init(NSMutableArray);
  LODWORD(v6) = -1122998213;
  v7 = [NSNumber numberWithFloat:v6];
  [v5 addObject:v7];

  LODWORD(v8) = 1024485435;
  v9 = [NSNumber numberWithFloat:v8];
  [v5 addObject:v9];

  LODWORD(v10) = -1122998213;
  v11 = [NSNumber numberWithFloat:v10];
  [v5 addObject:v11];

  [v2 setBeginTime:(ceilf((arc4random() % 0x3E8 + 1) * 0.2) * 0.05)];
  [v2 setValues:v5];

  return v2;
}

- (void)setJitter:(BOOL)a3
{
  if (self->_jitter != a3)
  {
    self->_jitter = a3;
    v6 = [(HWHandwritingItemColectionViewCell *)self layer];
    if (self->_jitter)
    {
      [(HWHandwritingItemColectionViewCell *)self setHighlighted:0];
      v4 = [objc_opt_class() _jitterPositionAnimation];
      [v6 addAnimation:v4 forKey:@"HWIconPosition"];

      v5 = [objc_opt_class() _jitterTransformAnimation];
      [v6 addAnimation:v5 forKey:@"HWIconTransform"];
    }

    else
    {
      [v6 removeAnimationForKey:@"HWIconPosition"];
      [v6 removeAnimationForKey:@"HWIconTransform"];
    }
  }
}

@end