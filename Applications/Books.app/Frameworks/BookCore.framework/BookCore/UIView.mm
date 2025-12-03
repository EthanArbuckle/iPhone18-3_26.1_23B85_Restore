@interface UIView
+ (void)bc_animateWithDelay:(double)delay springAnimation:(id)animation options:(unint64_t)options animations:(id)animations completion:(id)completion;
- (BOOL)im_isCompactHeight;
- (BOOL)im_isCompactWidth;
- (BOOL)im_isPartialScreen;
- (BOOL)im_isStyleDark;
- (BOOL)isViewSizeFullScreenInWindow:(id)window ignoreInWindowCheck:(BOOL)check;
- (CGRect)adjustRectCenter:(CGRect)center fromView:(id)view;
- (CGRect)imaxFrameFromBounds:(CGRect)bounds;
- (CGRect)imaxFrameToBounds:(CGRect)bounds;
- (NSArray)bc_constraintsToFillSuperview;
- (NSArray)bc_constraintsToFitInSuperviewCentered;
- (UIColor)debugingBorderColor;
- (double)imaxScreenScale;
- (id)bc_ancestorOfClass:(Class)class;
- (id)findFirstResponder;
- (id)im_snapshotAfterScreenUpdates:(BOOL)updates;
- (id)im_snapshotInContext;
- (id)subviewOfClass:(Class)class;
- (void)attachPopUpAnimation;
- (void)bc_applyCornerRadius:(double)radius;
- (void)bc_applyCornerRadiusFromView:(id)view;
- (void)debugHighlightView;
- (void)debugHighlightViewBlue;
- (void)debugHighlightViewWithColor:(id)color width:(double)width;
- (void)printResponderChain;
- (void)setDebugingBorderColor:(id)color;
- (void)setRoundedCorners:(int64_t)corners radius:(double)radius;
@end

@implementation UIView

- (CGRect)imaxFrameFromBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  window = [(UIView *)self window];
  [(UIView *)self convertRect:window toView:x, y, width, height];
  [window convertRect:0 toWindow:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)imaxFrameToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  window = [(UIView *)self window];
  [window convertRect:0 fromWindow:{x, y, width, height}];
  [(UIView *)self convertRect:window fromView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)imaxScreenScale
{
  window = [(UIView *)self window];
  screen = [window screen];
  [screen scale];
  v5 = v4;

  return v5;
}

- (void)debugHighlightView
{
  v3 = +[UIColor redColor];
  [(UIView *)self debugHighlightViewWithColor:v3 width:2.0];
}

- (void)debugHighlightViewBlue
{
  v3 = +[UIColor blueColor];
  [(UIView *)self debugHighlightViewWithColor:v3 width:2.0];
}

- (void)debugHighlightViewWithColor:(id)color width:(double)width
{
  colorCopy = color;
  colorCopy2 = color;
  cGColor = [colorCopy2 CGColor];
  layer = [(UIView *)self layer];
  [layer setBorderColor:cGColor];

  layer2 = [(UIView *)self layer];
  [layer2 setBorderWidth:width];

  layer3 = [(UIView *)self layer];
  [layer3 setCornerRadius:4.0];

  v16 = [colorCopy2 colorWithAlphaComponent:0.3];

  v13 = v16;
  cGColor2 = [v16 CGColor];
  layer4 = [(UIView *)self layer];
  [layer4 setBackgroundColor:cGColor2];
}

- (id)im_snapshotInContext
{
  [(UIView *)self bounds];
  if (v3 <= 0.0 || (v5 = v4, v4 <= 0.0))
  {
    v19 = BCIMLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      selfCopy = "[UIView(IMAdditions) im_snapshotInContext]";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Views/UIView+IMAdditions.m";
      v26 = 1024;
      v27 = 117;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v7 = BCIMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "@Snapshotting a CGSizeZero view: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  else
  {
    v6 = v3;
    v7 = +[UIGraphicsImageRendererFormat preferredFormat];
    [v7 scale];
    v9 = v8;
    v10 = +[UIScreen mainScreen];
    [v10 bounds];
    v12 = CGSizeScaleToScreen(v11);
    v14 = v13;

    if (v12 < v6 || v14 < v5)
    {
      CGSizeScaleThatFitsInCGSize();
      v9 = v16;
    }

    [v7 setScale:v9];
    v17 = [[UIGraphicsImageRenderer alloc] initWithSize:v7 format:{v6, v5}];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_79228;
    v21[3] = &unk_2CB040;
    v21[4] = self;
    v18 = [v17 imageWithActions:v21];
  }

  return v18;
}

- (id)im_snapshotAfterScreenUpdates:(BOOL)updates
{
  [(UIView *)self bounds];
  if (v5 <= 0.0 || (v7 = v6, v6 <= 0.0))
  {
    v12 = BCIMLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      selfCopy = "[UIView(IMAdditions) im_snapshotAfterScreenUpdates:]";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Views/UIView+IMAdditions.m";
      v20 = 1024;
      v21 = 143;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "@Snapshotting a CGSizeZero view: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v8 = v5;
    v9 = +[UIGraphicsImageRendererFormat preferredFormat];
    v10 = [[UIGraphicsImageRenderer alloc] initWithSize:v9 format:{v8, v7}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_794A0;
    v14[3] = &unk_2CB068;
    v14[4] = self;
    updatesCopy = updates;
    v11 = [v10 imageWithActions:v14];
  }

  return v11;
}

- (id)subviewOfClass:(Class)class
{
  [(UIView *)self subviews];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) subviewOfClass:{class, v18}];
        if (v16)
        {
          v10 = v16;
          goto LABEL_21;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_21:

LABEL_22:

  return v10;
}

- (id)bc_ancestorOfClass:(Class)class
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = superview;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      superview2 = [v4 superview];

      v4 = superview2;
      if (!superview2)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)findFirstResponder
{
  if ([(UIView *)self isFirstResponder])
  {
    selfCopy = self;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [(UIView *)self subviews];
    v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          findFirstResponder = [*(*(&v11 + 1) + 8 * i) findFirstResponder];
          if (findFirstResponder)
          {
            selfCopy = findFirstResponder;

            goto LABEL_13;
          }
        }

        v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (void)printResponderChain
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
    v4 = 1;
    do
    {
      v5 = [v3 description];
      v6 = [v5 cStringUsingEncoding:30];

      printf("%lu. %s\n", v4++, v6);
      nextResponder = [v3 nextResponder];

      v3 = nextResponder;
    }

    while (nextResponder);
  }
}

- (void)setRoundedCorners:(int64_t)corners radius:(double)radius
{
  cornersCopy = corners;
  [(UIView *)self bounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxX = CGRectGetMaxX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidY = CGRectGetMidY(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxY = CGRectGetMaxY(v31);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, MinX, MidY);
  if (cornersCopy)
  {
    radiusCopy = radius;
  }

  else
  {
    radiusCopy = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MinX, MinY, MidX, MinY, radiusCopy);
  if ((cornersCopy & 2) != 0)
  {
    radiusCopy2 = radius;
  }

  else
  {
    radiusCopy2 = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MidY, radiusCopy2);
  if ((cornersCopy & 8) != 0)
  {
    radiusCopy3 = radius;
  }

  else
  {
    radiusCopy3 = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, MidX, MaxY, radiusCopy3);
  if ((cornersCopy & 4) != 0)
  {
    radiusCopy4 = radius;
  }

  else
  {
    radiusCopy4 = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MinX, MaxY, MinX, MidY, radiusCopy4);
  CGPathCloseSubpath(Mutable);
  v24 = objc_alloc_init(CAShapeLayer);
  [v24 setPath:Mutable];
  layer = [(UIView *)self layer];
  [layer setMask:0];

  layer2 = [(UIView *)self layer];
  [layer2 setMask:v24];

  CFRelease(Mutable);
}

- (void)attachPopUpAnimation
{
  v3 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  memset(&v22, 0, sizeof(v22));
  CATransform3DMakeScale(&v22, 0.5, 0.5, 1.0);
  memset(&v21, 0, sizeof(v21));
  CATransform3DMakeScale(&v21, 1.2, 1.2, 1.0);
  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeScale(&v20, 0.9, 0.9, 1.0);
  memset(&v19, 0, sizeof(v19));
  CATransform3DMakeScale(&v19, 1.0, 1.0, 1.0);
  v18 = v22;
  v4 = [NSValue valueWithCATransform3D:&v18];
  v18 = v21;
  v5 = [NSValue valueWithCATransform3D:&v18];
  v18 = v20;
  v6 = [NSValue valueWithCATransform3D:&v18];
  v18 = v19;
  v7 = [NSValue valueWithCATransform3D:&v18];
  v8 = [NSArray arrayWithObjects:v4, v5, v6, v7, 0];

  [v3 setValues:v8];
  v9 = [NSNumber numberWithFloat:0.0];
  LODWORD(v10) = 0.5;
  v11 = [NSNumber numberWithFloat:v10];
  LODWORD(v12) = 1063675494;
  v13 = [NSNumber numberWithFloat:v12];
  LODWORD(v14) = 1.0;
  v15 = [NSNumber numberWithFloat:v14];
  v16 = [NSArray arrayWithObjects:v9, v11, v13, v15, 0];

  [v3 setKeyTimes:v16];
  [v3 setFillMode:kCAFillModeForwards];
  [v3 setRemovedOnCompletion:0];
  [v3 setDuration:0.2];
  layer = [(UIView *)self layer];
  [layer addAnimation:v3 forKey:@"popup"];
}

- (UIColor)debugingBorderColor
{
  layer = [(UIView *)self layer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [layer borderColor]);

  return v3;
}

- (void)setDebugingBorderColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  layer = [(UIView *)self layer];
  [layer setBorderColor:cGColor];

  if (color)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  layer2 = [(UIView *)self layer];
  [layer2 setBorderWidth:v8];
}

- (BOOL)isViewSizeFullScreenInWindow:(id)window ignoreInWindowCheck:(BOOL)check
{
  windowCopy = window;
  [(UIView *)self bounds];
  v10 = v9;
  v12 = v11;
  if (windowCopy)
  {
    v13 = v7;
    v14 = v8;
    window = [(UIView *)self window];

    if (window)
    {
      [(UIView *)self convertRect:windowCopy toView:v13, v14, v10, v12];
      [windowCopy convertRect:0 toWindow:?];
      v10 = v16;
      v12 = v17;
    }

    screen = [windowCopy screen];
  }

  else
  {
    screen = +[UIScreen mainScreen];
  }

  v19 = screen;
  [screen bounds];
  v21 = v20;
  v23 = v22;

  v24 = v12 == v23 && v10 == v21;
  if (v24 || check)
  {
    if (v24)
    {
      v26 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    window2 = [(UIView *)self window];

    if (window2)
    {
      v26 = 0;
      goto LABEL_18;
    }
  }

  v26 = v10 == v23 && v12 == v21;
LABEL_18:

  return v26;
}

- (BOOL)im_isCompactWidth
{
  [(UIView *)self traitCollection];

  traitCollection = [(UIView *)self traitCollection];
  v4 = [traitCollection horizontalSizeClass] == &dword_0 + 1;

  return v4;
}

- (BOOL)im_isCompactHeight
{
  [(UIView *)self traitCollection];

  traitCollection = [(UIView *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] == &dword_0 + 1;

  return v4;
}

- (BOOL)im_isPartialScreen
{
  window = [(UIView *)self window];
  if (!window)
  {
    window = +[UIWindow _applicationKeyWindow];
    if (!window)
    {
      return 0;
    }
  }

  v3 = window;
  screen = [window screen];
  [screen bounds];
  v6 = v5;
  v8 = v7;

  screen2 = [v3 screen];
  [screen2 bounds];
  v11 = v10;

  screen3 = [v3 screen];
  [screen3 bounds];
  v14 = v13;

  [v3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  screen4 = [v3 screen];
  [screen4 bounds];
  if (vabdd_f64(v16, v27) >= 0.00999999978 || vabdd_f64(v18, v24) >= 0.00999999978 || vabdd_f64(v20, v25) >= 0.00999999978 || vabdd_f64(v22, v26) >= 0.00999999978)
  {
    [v3 bounds];
    v28 = vabdd_f64(v32, v6) >= 0.00999999978 || vabdd_f64(v29, v8) >= 0.00999999978 || vabdd_f64(v30, v11) >= 0.00999999978 || vabdd_f64(v31, v14) >= 0.00999999978;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (NSArray)bc_constraintsToFillSuperview
{
  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  superview = [(UIView *)self superview];
  topAnchor = [(UIView *)self topAnchor];
  topAnchor2 = [superview topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[0] = v15;
  bottomAnchor = [(UIView *)self bottomAnchor];
  bottomAnchor2 = [superview bottomAnchor];
  v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[1] = v6;
  leadingAnchor = [(UIView *)self leadingAnchor];
  leadingAnchor2 = [superview leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[2] = v9;
  trailingAnchor = [(UIView *)self trailingAnchor];
  trailingAnchor2 = [superview trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[3] = v12;
  v14 = [NSArray arrayWithObjects:v18 count:4];

  return v14;
}

- (NSArray)bc_constraintsToFitInSuperviewCentered
{
  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  superview = [(UIView *)self superview];
  topAnchor = [(UIView *)self topAnchor];
  topAnchor2 = [superview topAnchor];
  v29 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
  v39[0] = v29;
  bottomAnchor = [(UIView *)self bottomAnchor];
  bottomAnchor2 = [superview bottomAnchor];
  v6 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v39[1] = v6;
  leadingAnchor = [(UIView *)self leadingAnchor];
  leadingAnchor2 = [superview leadingAnchor];
  v9 = [leadingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor2];
  v39[2] = v9;
  trailingAnchor = [(UIView *)self trailingAnchor];
  v32 = superview;
  trailingAnchor2 = [superview trailingAnchor];
  v12 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v39[3] = v12;
  v28 = [NSArray arrayWithObjects:v39 count:4];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v28;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v13);
        }

        LODWORD(v15) = 1147207680;
        [*(*(&v33 + 1) + 8 * i) setPriority:v15];
      }

      v16 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v16);
  }

  centerXAnchor = [(UIView *)self centerXAnchor];
  centerXAnchor2 = [v32 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v37[0] = v21;
  centerYAnchor = [(UIView *)self centerYAnchor];
  centerYAnchor2 = [v32 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v37[1] = v24;
  v25 = [NSArray arrayWithObjects:v37 count:2];
  v26 = [v13 arrayByAddingObjectsFromArray:v25];

  return v26;
}

- (CGRect)adjustRectCenter:(CGRect)center fromView:(id)view
{
  height = center.size.height;
  width = center.size.width;
  y = center.origin.y;
  x = center.origin.x;
  viewCopy = view;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidY = CGRectGetMidY(v22);
  [(UIView *)self convertPoint:viewCopy fromView:MidX, MidY];
  v13 = v12;
  v15 = v14;

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  return CGRectOffset(*&v16, v13 - MidX, v15 - MidY);
}

- (BOOL)im_isStyleDark
{
  traitCollection = [(UIView *)self traitCollection];
  bc_userInterfaceStyleDark = [traitCollection bc_userInterfaceStyleDark];

  return bc_userInterfaceStyleDark;
}

+ (void)bc_animateWithDelay:(double)delay springAnimation:(id)animation options:(unint64_t)options animations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  animationsCopy = animations;
  animationCopy = animation;
  v16 = objc_alloc_init(_BCCustomAnimationCurveFactory);
  [(_BCCustomAnimationCurveFactory *)v16 setSpringAnimation:animationCopy];
  [animationCopy settlingDuration];
  v15 = v14;

  [UIView _animateWithDuration:options | 0x60000 delay:v16 options:animationsCopy factory:completionCopy animations:v15 completion:delay];
}

- (void)bc_applyCornerRadius:(double)radius
{
  v5 = sub_18AFC0(&qword_3411E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  selfCopy = self;
  if (_UISolariumEnabled())
  {
    sub_1EECC4();
    v8 = sub_1EECD4();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    sub_1EF2D4();
  }

  else
  {
    [(UIView *)selfCopy _setContinuousCornerRadius:radius];
    v9 = selfCopy;
  }
}

- (void)bc_applyCornerRadiusFromView:(id)view
{
  v5 = sub_18AFC0(&qword_3411E8);
  __chkstk_darwin(v5 - 8);
  viewCopy = view;
  selfCopy = self;
  if (_UISolariumEnabled())
  {
    sub_1EF2C4();
    sub_1EF2D4();
  }

  else
  {
    [viewCopy _continuousCornerRadius];
    [(UIView *)selfCopy _setContinuousCornerRadius:?];
  }
}

@end