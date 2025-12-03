@interface HWHandwritingItemColectionViewCell
+ (id)_jitterPositionAnimation;
+ (id)_jitterTransformAnimation;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (HWHandwritingItemColectionViewCell)initWithCoder:(id)coder;
- (HWHandwritingItemColectionViewCell)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_commonInit;
- (void)_updateCoronaColors;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setJitter:(BOOL)jitter;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HWHandwritingItemColectionViewCell

- (HWHandwritingItemColectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HWHandwritingItemColectionViewCell;
  v3 = [(HWHandwritingItemColectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HWHandwritingItemColectionViewCell *)v3 _commonInit];
  }

  return v4;
}

- (HWHandwritingItemColectionViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HWHandwritingItemColectionViewCell;
  v3 = [(HWHandwritingItemColectionViewCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HWHandwritingItemColectionViewCell *)v3 _commonInit];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HWHandwritingItemColectionViewCell;
  changeCopy = change;
  [(HWHandwritingItemColectionViewCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(HWHandwritingItemColectionViewCell *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(HWHandwritingItemColectionViewCell *)self _updateCoronaColors];
  }
}

- (void)_updateCoronaColors
{
  v3 = +[UIColor favoritesPickerItemBorderColor];
  cGColor = [v3 CGColor];
  borderView = [(HWHandwritingItemColectionViewCell *)self borderView];
  layer = [borderView layer];
  [layer setBorderColor:cGColor];

  v11 = [UIColor colorWithRed:0.290196078 green:0.325490196 blue:0.376470588 alpha:0.24];
  v7 = v11;
  cGColor2 = [v11 CGColor];
  deleteButton = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer2 = [deleteButton layer];
  [layer2 setBorderColor:cGColor2];
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
  borderView = [(HWHandwritingItemColectionViewCell *)self borderView];
  [borderView setBackgroundColor:v8];

  v10 = +[UIColor favoritesPickerItemBorderColor];
  cGColor = [v10 CGColor];
  borderView2 = [(HWHandwritingItemColectionViewCell *)self borderView];
  layer = [borderView2 layer];
  [layer setBorderColor:cGColor];

  v14 = +[UIScreen mainScreen];
  [v14 scale];
  v16 = 1.0 / v15;
  borderView3 = [(HWHandwritingItemColectionViewCell *)self borderView];
  layer2 = [borderView3 layer];
  [layer2 setBorderWidth:v16];

  borderView4 = [(HWHandwritingItemColectionViewCell *)self borderView];
  layer3 = [borderView4 layer];
  [layer3 setCornerRadius:5.0];

  borderView5 = [(HWHandwritingItemColectionViewCell *)self borderView];
  [borderView5 setHidden:0];

  v22 = [[UIImageView alloc] initWithImage:0];
  [(HWHandwritingItemColectionViewCell *)self setImageView:v22];

  imageView = [(HWHandwritingItemColectionViewCell *)self imageView];
  [imageView setContentMode:4];

  v24 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(HWHandwritingItemColectionViewCell *)self setHighlightOverlayView:v24];

  v25 = +[UIColor blackColor];
  highlightOverlayView = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [highlightOverlayView setBackgroundColor:v25];

  highlightOverlayView2 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  layer4 = [highlightOverlayView2 layer];
  LODWORD(v29) = 1041865114;
  [layer4 setOpacity:v29];

  highlightOverlayView3 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  layer5 = [highlightOverlayView3 layer];
  [layer5 setCornerRadius:5.0];

  highlightOverlayView4 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [highlightOverlayView4 setHidden:1];

  height = [[HWButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(HWHandwritingItemColectionViewCell *)self setDeleteButton:height];

  v34 = +[NSBundle hw_handwritingPluginBundle];
  v35 = [v34 localizedStringForKey:@"Delete" value:&stru_28B70 table:@"HWFavoritesPickerView"];
  deleteButton = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton setAccessibilityLabel:v35];

  deleteButton2 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton2 setHidden:1];

  v38 = [UIColor colorWithWhite:1.0 alpha:0.95];
  deleteButton3 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton3 setBackgroundColor:v38];

  v40 = [UIColor colorWithRed:0.360784314 green:0.392156863 blue:0.439215686 alpha:1.0];
  deleteButton4 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton4 setTintColor:v40];

  deleteButton5 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer6 = [deleteButton5 layer];
  [layer6 setShadowRadius:5.0];

  deleteButton6 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer7 = [deleteButton6 layer];
  [layer7 setShadowOffset:{0.0, 4.0}];

  deleteButton7 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer8 = [deleteButton7 layer];
  LODWORD(v48) = 1039516303;
  [layer8 setShadowOpacity:v48];

  v49 = +[UIColor blackColor];
  cGColor2 = [v49 CGColor];
  deleteButton8 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer9 = [deleteButton8 layer];
  [layer9 setShadowColor:cGColor2];

  deleteButton9 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer10 = [deleteButton9 layer];
  [layer10 setCornerRadius:11.0];

  v55 = [UIColor colorWithRed:0.290196078 green:0.325490196 blue:0.376470588 alpha:0.24];
  cGColor3 = [v55 CGColor];
  deleteButton10 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer11 = [deleteButton10 layer];
  [layer11 setBorderColor:cGColor3];

  v59 = +[UIScreen mainScreen];
  [v59 scale];
  v61 = 1.0 / v60;
  deleteButton11 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  layer12 = [deleteButton11 layer];
  [layer12 setBorderWidth:v61];

  deleteButton12 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton12 setAlpha:1.0];

  v65 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:9.0];
  v72 = [UIImage systemImageNamed:@"xmark" withConfiguration:v65];

  deleteButton13 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton13 setImage:v72 forState:0];

  deleteButton14 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton14 sizeToFit];

  borderView6 = [(HWHandwritingItemColectionViewCell *)self borderView];
  [(HWHandwritingItemColectionViewCell *)self addSubview:borderView6];

  imageView2 = [(HWHandwritingItemColectionViewCell *)self imageView];
  [(HWHandwritingItemColectionViewCell *)self addSubview:imageView2];

  highlightOverlayView5 = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [(HWHandwritingItemColectionViewCell *)self addSubview:highlightOverlayView5];

  deleteButton15 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [(HWHandwritingItemColectionViewCell *)self addSubview:deleteButton15];
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
  imageView = [(HWHandwritingItemColectionViewCell *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];

  [(HWHandwritingItemColectionViewCell *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  borderView = [(HWHandwritingItemColectionViewCell *)self borderView];
  [borderView setFrame:{v13, v15, v17, v19}];

  [(HWHandwritingItemColectionViewCell *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  highlightOverlayView = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [highlightOverlayView setFrame:{v22, v24, v26, v28}];

  deleteButton = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton bounds];
  v32 = v31;
  v34 = v33;

  v38.size.width = 22.0;
  v38.size.height = 22.0;
  v38.origin.x = v32;
  v38.origin.y = v34;
  v35 = -(CGRectGetHeight(v38) * 0.5 + -3.0);
  deleteButton2 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton2 setFrame:{v35, v35, 22.0, 22.0}];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = HWHandwritingItemColectionViewCell;
  if ([(HWHandwritingItemColectionViewCell *)&v16 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else if ([(HWHandwritingItemColectionViewCell *)self editing])
  {
    deleteButton = [(HWHandwritingItemColectionViewCell *)self deleteButton];
    [deleteButton convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    deleteButton2 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
    v8 = [deleteButton2 pointInside:eventCopy withEvent:{v11, v13}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  deleteButton = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  deleteButton2 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton2 convertPoint:self fromView:{x, y}];
  v10 = [deleteButton hitTest:eventCopy withEvent:?];

  if (!v10)
  {
    v12.receiver = self;
    v12.super_class = HWHandwritingItemColectionViewCell;
    v10 = [(HWHandwritingItemColectionViewCell *)&v12 hitTest:eventCopy withEvent:x, y];
  }

  return v10;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HWHandwritingItemColectionViewCell;
  [(HWHandwritingItemColectionViewCell *)&v5 prepareForReuse];
  imageView = [(HWHandwritingItemColectionViewCell *)self imageView];
  [imageView setImage:0];

  highlightOverlayView = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [highlightOverlayView setHidden:1];

  [(HWHandwritingItemColectionViewCell *)self setUuidString:0];
  [(HWHandwritingItemColectionViewCell *)self setJitter:0];
  [(HWHandwritingItemColectionViewCell *)self setEditing:0];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = HWHandwritingItemColectionViewCell;
  [(HWHandwritingItemColectionViewCell *)&v6 setSelected:?];
  highlightOverlayView = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [highlightOverlayView setHidden:!selectedCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v12.receiver = self;
  v12.super_class = HWHandwritingItemColectionViewCell;
  [(HWHandwritingItemColectionViewCell *)&v12 setHighlighted:?];
  highlightOverlayView = [(HWHandwritingItemColectionViewCell *)self highlightOverlayView];
  [highlightOverlayView setHidden:!highlightedCopy];

  if (!highlightedCopy)
  {
    [UIColor colorWithRed:0.360784314 green:0.392156863 blue:0.439215686 alpha:1.0];
  }

  else
  {
    [UIColor colorWithWhite:0.0 alpha:1.0];
  }
  v6 = ;
  deleteButton = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton setTintColor:v6];

  if (highlightedCopy)
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
  deleteButton2 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
  [deleteButton2 setBackgroundColor:v10];
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    editingCopy = editing;
    self->_editing = editing;
    [(UIButton *)self->_deleteButton setHidden:!editing];
    v6 = 0.0;
    if (editingCopy)
    {
      v6 = 1.0;
    }

    [(UIButton *)self->_deleteButton setAlpha:v6];

    [(HWHandwritingItemColectionViewCell *)self setJitter:editingCopy];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    editingCopy = editing;
    self->_editing = editing;
    if (animated)
    {
      deleteButton = [(HWHandwritingItemColectionViewCell *)self deleteButton];
      [deleteButton setHidden:0];

      deleteButton2 = [(HWHandwritingItemColectionViewCell *)self deleteButton];
      [deleteButton2 setAlpha:(editingCopy ^ 1)];

      v12 = self->_deleteButton;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_DDE4;
      v20[3] = &unk_288E8;
      v20[4] = self;
      v21 = editingCopy;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_DE3C;
      v17 = &unk_28910;
      v18 = v12;
      v19 = editingCopy;
      v13 = v12;
      [UIView animateWithDuration:0x10000 delay:v20 options:&v14 animations:0.18 completion:0.0];
    }

    else
    {
      [(UIButton *)self->_deleteButton setHidden:!editing];
    }

    [(HWHandwritingItemColectionViewCell *)self setJitter:editingCopy, v14, v15, v16, v17];
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

- (void)setJitter:(BOOL)jitter
{
  if (self->_jitter != jitter)
  {
    self->_jitter = jitter;
    layer = [(HWHandwritingItemColectionViewCell *)self layer];
    if (self->_jitter)
    {
      [(HWHandwritingItemColectionViewCell *)self setHighlighted:0];
      _jitterPositionAnimation = [objc_opt_class() _jitterPositionAnimation];
      [layer addAnimation:_jitterPositionAnimation forKey:@"HWIconPosition"];

      _jitterTransformAnimation = [objc_opt_class() _jitterTransformAnimation];
      [layer addAnimation:_jitterTransformAnimation forKey:@"HWIconTransform"];
    }

    else
    {
      [layer removeAnimationForKey:@"HWIconPosition"];
      [layer removeAnimationForKey:@"HWIconTransform"];
    }
  }
}

@end