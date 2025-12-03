@interface CRLiOSPencilTrayColorWell
- (CRLiOSPencilTrayColorWell)initWithCoder:(id)coder;
- (CRLiOSPencilTrayColorWell)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)p_colorBulletOutlineColor;
- (id)p_titleForColorPicker;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)colorPickerViewControllerDidFinish:(id)finish;
- (void)layoutSubviews;
- (void)p_commonInit;
- (void)p_installBackgroundView;
- (void)p_presentColorPicker:(id)picker withCompletion:(id)completion;
- (void)p_updateColorBulletView;
- (void)p_updateColorPickerIfNeeded;
- (void)p_updateStrokeHoleMask;
- (void)setForStrokeColor:(BOOL)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelectedColor:(id)color;
- (void)toggleColorPickerPresentation;
@end

@implementation CRLiOSPencilTrayColorWell

- (CRLiOSPencilTrayColorWell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CRLiOSPencilTrayColorWell;
  v3 = [(CRLiOSPencilTrayColorWell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSPencilTrayColorWell *)v3 p_commonInit];
  }

  return v4;
}

- (CRLiOSPencilTrayColorWell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLiOSPencilTrayColorWell;
  v3 = [(CRLiOSPencilTrayColorWell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSPencilTrayColorWell *)v3 p_commonInit];
  }

  return v4;
}

- (void)p_commonInit
{
  v3 = +[UIColor clearColor];
  [(CRLiOSPencilTrayColorWell *)self setBackgroundColor:v3];

  [(CRLiOSPencilTrayColorWell *)self p_installBackgroundView];
  [(CRLiOSPencilTrayColorWell *)self p_updateColorBulletView];
  [(CRLiOSPencilTrayColorWell *)self p_updateStrokeHoleMask];
  [(CRLiOSPencilTrayColorWell *)self addTarget:self action:"p_presentColorPicker:" forControlEvents:64];
  [(CRLiOSPencilTrayColorWell *)self setShowsLargeContentViewer:1];
  v4 = objc_alloc_init(UILargeContentViewerInteraction);
  [(CRLiOSPencilTrayColorWell *)self addInteraction:v4];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Show More Colors" value:0 table:0];
  [(CRLiOSPencilTrayColorWell *)self setLargeContentTitle:v6];

  v7 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [(CRLiOSPencilTrayColorWell *)self setPointerInteraction:v7];

  pointerInteraction = [(CRLiOSPencilTrayColorWell *)self pointerInteraction];
  [(CRLiOSPencilTrayColorWell *)self addInteraction:pointerInteraction];

  [(CRLiOSPencilTrayColorWell *)self setHitTestInsets:-12.0, -12.0, -12.0, -12.0];
  v11 = objc_opt_class();
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = [(CRLiOSPencilTrayColorWell *)self registerForTraitChanges:v9 withTarget:self action:"setNeedsLayout"];
}

- (void)p_installBackgroundView
{
  if (self->_rainbowBackgroundView)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C15C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C170();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C20C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell p_installBackgroundView]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:77 isFatal:0 description:"expected nil value for '%{public}s'", "_rainbowBackgroundView"];
  }

  v6 = [UIImage imageNamed:@"CRLiOSPencilTray/ColorWell"];
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C234();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C25C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C2F8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell p_installBackgroundView]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:79 isFatal:0 description:"invalid nil value for '%{public}s'", "rainbowBackgroundImage"];
  }

  v10 = [[UIImageView alloc] initWithImage:v6];
  rainbowBackgroundView = self->_rainbowBackgroundView;
  self->_rainbowBackgroundView = v10;

  [(CRLiOSPencilTrayColorWell *)self addSubview:self->_rainbowBackgroundView];
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  if (self->_selectedColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_selectedColor, color);
    [(CRLiOSPencilTrayColorWell *)self p_updateColorBulletView];
    [(CRLiOSPencilTrayColorWell *)self p_updateColorPickerIfNeeded];
    colorCopy = v6;
  }
}

- (void)setForStrokeColor:(BOOL)color
{
  if (self->_isForStrokeColor != color)
  {
    self->_isForStrokeColor = color;
    [(CRLiOSPencilTrayColorWell *)self p_updateStrokeHoleMask];

    [(CRLiOSPencilTrayColorWell *)self p_updateColorPickerIfNeeded];
  }
}

- (void)toggleColorPickerPresentation
{
  window = [(CRLiOSPencilTrayColorWell *)self window];
  rootViewController = [window rootViewController];

  if (!rootViewController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C320();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C334();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C3D0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell toggleColorPickerPresentation]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:106 isFatal:0 description:"invalid nil value for '%{public}s'", "rootVC"];
  }

  presentedViewController = [rootViewController presentedViewController];
  if (presentedViewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131C3F8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131C420();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131C4B0();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell toggleColorPickerPresentation]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:110 isFatal:0 description:"PencilKit should handle dismissing other presented view controllers before we get here."];
    }

    [rootViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [(CRLiOSPencilTrayColorWell *)self p_presentColorPicker:0];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CRLiOSPencilTrayColorWell;
  v5 = [(CRLiOSPencilTrayColorWell *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 && [(CRLiOSPencilTrayColorWell *)v5 isDescendantOfView:self])
  {
    selfCopy = self;

    v6 = selfCopy;
  }

  return v6;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = CRLiOSPencilTrayColorWell;
  [(CRLiOSPencilTrayColorWell *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (highlightedCopy)
  {
    v5 = 0.5;
  }

  [(CRLiOSPencilTrayColorWell *)self setAlpha:v5];
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = CRLiOSPencilTrayColorWell;
  [(CRLiOSPencilTrayColorWell *)&v34 layoutSubviews];
  [(CRLiOSPencilTrayColorWell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_rainbowBackgroundView setFrame:?];
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  v11 = CGRectGetWidth(v35) * 0.5;
  layer = [(UIView *)self->_rainbowBackgroundView layer];
  [layer setCornerRadius:v11];

  layer2 = [(CRLiOSPencilTrayColorWell *)self layer];
  [layer2 setCornerRadius:v11];

  if (self->_colorBulletView)
  {
    v36.origin.x = v4;
    v36.origin.y = v6;
    v36.size.width = v8;
    v36.size.height = v10;
    v14 = round(CGRectGetWidth(v36) * 0.13);
    v37.origin.x = v4;
    v37.origin.y = v6;
    v37.size.width = v8;
    v37.size.height = v10;
    v15 = round(CGRectGetHeight(v37) * 0.13);
    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    v39 = CGRectInset(v38, v14, v15);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    [(UIView *)self->_colorBulletView setFrame:?];
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v20 = CGRectGetWidth(v40) * 0.5;
    layer3 = [(UIView *)self->_colorBulletView layer];
    [layer3 setCornerRadius:v20];

    layer4 = [(UIView *)self->_colorBulletView layer];
    [layer4 setBorderWidth:0.5];

    p_colorBulletOutlineColor = [(CRLiOSPencilTrayColorWell *)self p_colorBulletOutlineColor];
    cGColor = [p_colorBulletOutlineColor CGColor];
    layer5 = [(UIView *)self->_colorBulletView layer];
    [layer5 setBorderColor:cGColor];
  }

  strokeHoleMask = self->_strokeHoleMask;
  if (strokeHoleMask)
  {
    [(CAShapeLayer *)strokeHoleMask setFrame:v4, v6, v8, v10];
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    v27 = round(CGRectGetWidth(v41) * 0.29);
    v42.origin.x = v4;
    v42.origin.y = v6;
    v42.size.width = v8;
    v42.size.height = v10;
    v28 = round(CGRectGetHeight(v42) * 0.29);
    v43.origin.x = v4;
    v43.origin.y = v6;
    v43.size.width = v8;
    v43.size.height = v10;
    v44 = CGRectInset(v43, v27, v28);
    v29 = v44.origin.x;
    v30 = v44.origin.y;
    v31 = v44.size.width;
    v32 = v44.size.height;
    Mutable = CGPathCreateMutable();
    v45.origin.x = v4;
    v45.origin.y = v6;
    v45.size.width = v8;
    v45.size.height = v10;
    CGPathAddRect(Mutable, 0, v45);
    v46.origin.x = v29;
    v46.origin.y = v30;
    v46.size.width = v31;
    v46.size.height = v32;
    CGPathAddEllipseInRect(Mutable, 0, v46);
    [(CAShapeLayer *)self->_strokeHoleMask setPath:Mutable];
    CGPathRelease(Mutable);
  }
}

- (id)p_colorBulletOutlineColor
{
  traitCollection = [(CRLiOSPencilTrayColorWell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v4 = +[UIColor whiteColor];
    v5 = v4;
    v6 = 0.16;
  }

  else
  {
    v4 = +[UIColor blackColor];
    v5 = v4;
    v6 = 0.08;
  }

  v7 = [v4 colorWithAlphaComponent:v6];

  return v7;
}

- (void)p_updateColorBulletView
{
  selectedColor = [(CRLiOSPencilTrayColorWell *)self selectedColor];

  colorBulletView = self->_colorBulletView;
  if (selectedColor && !colorBulletView)
  {
    v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v6 = self->_colorBulletView;
    self->_colorBulletView = v5;

    [(CRLiOSPencilTrayColorWell *)self addSubview:self->_colorBulletView];
LABEL_10:
    selectedColor2 = [(CRLiOSPencilTrayColorWell *)self selectedColor];
    v9 = [selectedColor2 colorWithAlphaComponent:1.0];
    [(UIView *)self->_colorBulletView setBackgroundColor:v9];

    [(CRLiOSPencilTrayColorWell *)self setNeedsLayout];
    return;
  }

  if (selectedColor || !colorBulletView)
  {
    if (!selectedColor)
    {
      return;
    }

    goto LABEL_10;
  }

  [(UIView *)colorBulletView removeFromSuperview];
  v7 = self->_colorBulletView;
  self->_colorBulletView = 0;
}

- (void)p_updateStrokeHoleMask
{
  isForStrokeColor = [(CRLiOSPencilTrayColorWell *)self isForStrokeColor];
  v4 = isForStrokeColor;
  strokeHoleMask = self->_strokeHoleMask;
  if (isForStrokeColor && !strokeHoleMask)
  {
    v6 = objc_alloc_init(CAShapeLayer);
    v7 = self->_strokeHoleMask;
    self->_strokeHoleMask = v6;

    v8 = +[UIColor blackColor];
    -[CAShapeLayer setFillColor:](self->_strokeHoleMask, "setFillColor:", [v8 CGColor]);

    [(CAShapeLayer *)self->_strokeHoleMask setFillRule:kCAFillRuleEvenOdd];
    v9 = self->_strokeHoleMask;
    layer = [(CRLiOSPencilTrayColorWell *)self layer];
    [layer setMask:v9];
LABEL_9:

    goto LABEL_10;
  }

  if (strokeHoleMask)
  {
    v11 = isForStrokeColor;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    layer2 = [(CRLiOSPencilTrayColorWell *)self layer];
    [layer2 setMask:0];

    layer = self->_strokeHoleMask;
    self->_strokeHoleMask = 0;
    goto LABEL_9;
  }

LABEL_10:
  if (v4)
  {

    [(CRLiOSPencilTrayColorWell *)self setNeedsLayout];
  }
}

- (void)p_presentColorPicker:(id)picker withCompletion:(id)completion
{
  completionCopy = completion;
  window = [(CRLiOSPencilTrayColorWell *)self window];
  rootViewController = [window rootViewController];

  if (!rootViewController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C4D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C4EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C588();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell p_presentColorPicker:withCompletion:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:250 isFatal:0 description:"invalid nil value for '%{public}s'", "rootVC"];
  }

  presentedViewController = [rootViewController presentedViewController];
  if (!presentedViewController)
  {
    if (!self->_colorPicker)
    {
      v12 = objc_alloc_init(UIColorPickerViewController);
      colorPicker = self->_colorPicker;
      self->_colorPicker = v12;

      [(UIColorPickerViewController *)self->_colorPicker setDelegate:self];
      [(UIColorPickerViewController *)self->_colorPicker setSupportsAlpha:1];
      [(UIColorPickerViewController *)self->_colorPicker setModalPresentationStyle:7];
    }

    [(CRLiOSPencilTrayColorWell *)self p_updateColorPickerIfNeeded];
    popoverPresentationController = [(UIColorPickerViewController *)self->_colorPicker popoverPresentationController];
    [popoverPresentationController setSourceView:self];

    window2 = [(CRLiOSPencilTrayColorWell *)self window];
    rootViewController2 = [window2 rootViewController];
    [rootViewController2 presentViewController:self->_colorPicker animated:1 completion:completionCopy];
  }
}

- (void)p_updateColorPickerIfNeeded
{
  colorPicker = self->_colorPicker;
  if (colorPicker)
  {
    [(UIColorPickerViewController *)colorPicker crl_ifVisuallyDifferentSetSelectedColor:self->_selectedColor];
    v4 = self->_colorPicker;
    p_titleForColorPicker = [(CRLiOSPencilTrayColorWell *)self p_titleForColorPicker];
    [(UIColorPickerViewController *)v4 setTitle:p_titleForColorPicker];
  }
}

- (id)p_titleForColorPicker
{
  isForStrokeColor = self->_isForStrokeColor;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (isForStrokeColor)
  {
    v5 = @"Stroke Color";
  }

  else
  {
    v5 = @"Fill Color";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:0];

  return v6;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  v5 = [UITargetedPreview alloc];
  view = [interactionCopy view];
  v7 = [v5 initWithView:view];

  v8 = [UIPointerHighlightEffect effectWithPreview:v7];
  view2 = [interactionCopy view];

  [view2 bounds];
  v10 = [UIBezierPath bezierPathWithOvalInRect:?];
  v11 = [UIPointerShape shapeWithPath:v10];

  v12 = [UIPointerStyle styleWithEffect:v8 shape:v11];

  return v12;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [region rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CRLiOSPencilTrayColorWell *)self hitTestInsets];
  v15 = v14;
  [(CRLiOSPencilTrayColorWell *)self hitTestInsets];
  v17 = v16;
  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  v21 = CGRectInset(v20, v15, v17);

  return [UIPointerRegion regionWithRect:0 identifier:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  colorCopy = color;
  if (self->_colorPicker != controller)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C5B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C5C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C680();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell colorPickerViewController:didSelectColor:continuously:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:310 isFatal:0 description:"expected equality between %{public}s and %{public}s", "viewController", "_colorPicker"];
  }

  selectedColor = self->_selectedColor;
  self->_selectedColor = colorCopy;

  self->_isUpdatingContinuously = continuously;
  [(CRLiOSPencilTrayColorWell *)self p_updateColorBulletView];
  [(CRLiOSPencilTrayColorWell *)self sendActionsForControlEvents:4096];
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  if (self->_colorPicker != finishCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C6A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C6BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C778();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell colorPickerViewControllerDidFinish:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:322 isFatal:0 description:"expected equality between %{public}s and %{public}s", "viewController", "_colorPicker"];
  }

  if (self->_isUpdatingContinuously)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131C7A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131C7C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131C858();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSPencilTrayColorWell colorPickerViewControllerDidFinish:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSPencilTrayColorWell.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:325 isFatal:0 description:"Color picker should not tell us it finished before telling us about the final color."];

    self->_isUpdatingContinuously = 0;
    [(CRLiOSPencilTrayColorWell *)self sendActionsForControlEvents:4096];
  }
}

@end