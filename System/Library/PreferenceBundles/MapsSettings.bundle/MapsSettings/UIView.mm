@interface UIView
+ (BOOL)_maps_shouldAdoptImplicitAnimationParameters;
+ (void)_maps_animateForAndromeda:(BOOL)a3 animations:(id)a4 completion:(id)a5;
- (BOOL)_maps_isVisible;
- (CGAffineTransform)_maps_transformScaledToLeadingAtScale:(SEL)a3;
- (CGAffineTransform)_maps_transformScaledToTopAndLeadingAtScale:(SEL)a3;
- (CGAffineTransform)_maps_transformScaledToTopAndTrailingAtScale:(SEL)a3;
- (CGAffineTransform)_maps_transformScaledToTopAtScale:(SEL)a3;
- (CGRect)_maps_centeringFrameForView:(id)a3 fit:(BOOL)a4 constrain:(BOOL)a5 inRect:(CGRect)a6;
- (CGRect)_maps_centeringFrameForView:(id)a3 inRect:(CGRect)a4 options:(int64_t)a5;
- (CGRect)_maps_centeringFrameForView:(id)a3 size:(CGSize)a4 inRect:(CGRect)a5;
- (CGSize)_maps_compressedSizeForWidth:(double)a3 withBlock:(id)a4;
- (MapsTheme)theme;
- (NSString)sceneIdentifierForLogging;
- (double)_maps_maxConstraintConstantForAxis:(int64_t)a3;
- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofLayoutGuide:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6;
- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofView:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6;
- (id)_maps_constraintsForCenteringInView:(id)a3;
- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4 priorities:(id)a5;
- (id)_maps_constraintsForCenteringInView:(id)a3 priorities:(id)a4;
- (id)_maps_flexibleConstraintsForLayoutGuide:(id)a3 insideEdges:(unint64_t)a4 withFillingPriority:(float)a5;
- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)a3 withFillingPriority:(float)a4;
- (void)_maps_alignTopToView:(id)a3;
- (void)_maps_initializeWithAutolayoutCompressedSize;
- (void)_maps_recursivelySetAllowsGroupOpacity:(BOOL)a3;
- (void)_maps_setAllContentHuggingAndCompressionResistancePriorities:(float)a3;
@end

@implementation UIView

- (MapsTheme)theme
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4)
  {
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 userInterfaceStyle] != &dword_0 + 1;

    v7 = +[MapsTheme sharedTheme];
    [v7 setMapsThemeStyle:v6];
  }

  return +[MapsTheme sharedTheme];
}

- (void)_maps_recursivelySetAllowsGroupOpacity:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self layer];
  [v5 setAllowsGroupOpacity:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(UIView *)self subviews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) _maps_recursivelySetAllowsGroupOpacity:v3];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_maps_initializeWithAutolayoutCompressedSize
{
  y = CGRectZero.origin.y;
  [(UIView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(UIView *)self setBounds:CGRectZero.origin.x, y, v4, v5];

  [(UIView *)self layoutIfNeeded];
}

- (CGRect)_maps_centeringFrameForView:(id)a3 fit:(BOOL)a4 constrain:(BOOL)a5 inRect:(CGRect)a6
{
  if (a5)
  {
    [(UIView *)self _maps_centeringFrameForView:a3 inRect:a4 | 4 options:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  }

  else
  {
    [(UIView *)self _maps_centeringFrameForView:a3 inRect:a4 options:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_maps_centeringFrameForView:(id)a3 inRect:(CGRect)a4 options:(int64_t)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = v11;
  if ((v5 & 8) != 0)
  {
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 layoutMargins];
    v46.origin.x = v14 + v21;
    v46.origin.y = v16 + v22;
    v46.size.width = v18 - (v21 + v23);
    v46.size.height = v20 - (v22 + v24);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v44 = CGRectIntersection(v43, v46);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
  }

  if ((v5 & 2) != 0)
  {
    [v12 systemLayoutSizeFittingSize:{width, height}];
  }

  else if (v5)
  {
    [v12 sizeThatFits:{width, height}];
  }

  else
  {
    [v12 frame];
    v26 = v25;
    v28 = v27;
  }

  v29 = (v5 & 4) == 0;
  if (v28 >= height && (v5 & 4) != 0)
  {
    v28 = height;
  }

  if (v26 < width)
  {
    v29 = 1;
  }

  if (!v29)
  {
    v26 = width;
  }

  [(UIView *)self _maps_centeringFrameForView:v12 size:v26 inRect:v28, x, y, width, height];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = v32;
  v40 = v34;
  v41 = v36;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)_maps_centeringFrameForView:(id)a3 size:(CGSize)a4 inRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.height;
  v10 = a4.width;
  v11 = (a5.size.width - a4.width) * 0.5 + CGRectGetMinX(a5);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = (height - v9) * 0.5 + CGRectGetMinY(v17);
  v13 = v11;
  v14 = v10;
  v15 = v9;

  return CGRectIntegral(*&v13);
}

- (CGSize)_maps_compressedSizeForWidth:(double)a3 withBlock:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a2);
  }

  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(UIView *)self systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:v4, v5];
  v9 = a3;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (BOOL)_maps_shouldAdoptImplicitAnimationParameters
{
  v2 = +[UIView _isInAnimationBlock];
  if (v2)
  {

    LOBYTE(v2) = +[UIView areAnimationsEnabled];
  }

  return v2;
}

- (BOOL)_maps_isVisible
{
  if ([(UIView *)self isHidden])
  {
    return 0;
  }

  v4 = [(UIView *)self window];
  v3 = v4 != 0;

  return v3;
}

- (void)_maps_alignTopToView:(id)a3
{
  v4 = a3;
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v4 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21.origin.x = v12;
  v21.origin.y = v14;
  v21.size.width = v16;
  v21.size.height = v18;
  MinY = CGRectGetMinY(v21);

  [(UIView *)self setFrame:v6, MinY, v8, v10];
}

- (id)_maps_constraintsForCenteringInView:(id)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1148846080;
  return [(UIView *)self _maps_constraintsForCenteringInView:a3 edgeInsets:0.0 priorities:0.0, 0.0, 0.0, v3, v4, v5, v6];
}

- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1148846080;
  return [(UIView *)self _maps_constraintsForCenteringInView:a3 edgeInsets:a4.top priorities:a4.left, a4.bottom, a4.right, v4, v5, v6, v7];
}

- (id)_maps_constraintsForCenteringInView:(id)a3 priorities:(id)a4
{
  *&v7 = a4.var3;
  *&v6 = a4.var2;
  *&v5 = a4.var1;
  *&v4 = a4.var0;
  return [(UIView *)self _maps_constraintsForCenteringInView:a3 edgeInsets:0.0 priorities:0.0, 0.0, 0.0, v4, v5, v6, v7];
}

- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4 priorities:(id)a5
{
  var3 = a5.var3;
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v14 = a3;
  v32 = [(UIView *)self topAnchor];
  v31 = [v14 topAnchor];
  *&v15 = var0;
  v30 = [v32 constraintEqualToAnchor:v31 constant:top priority:v15];
  v33[0] = v30;
  v16 = [(UIView *)self leftAnchor];
  v17 = [v14 leftAnchor];
  *&v18 = var2;
  v19 = [v16 constraintEqualToAnchor:v17 constant:left priority:v18];
  v33[1] = v19;
  v20 = [v14 bottomAnchor];
  v21 = [(UIView *)self bottomAnchor];
  *&v22 = var1;
  v23 = [v20 constraintEqualToAnchor:v21 constant:bottom priority:v22];
  v33[2] = v23;
  v24 = [v14 rightAnchor];

  v25 = [(UIView *)self rightAnchor];
  *&v26 = var3;
  v27 = [v24 constraintEqualToAnchor:v25 constant:right priority:v26];
  v33[3] = v27;
  v28 = [NSArray arrayWithObjects:v33 count:4];

  return v28;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofView:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v12 = a3;
  v14 = a4;
  if (!v14)
  {
    v27 = 0;
    goto LABEL_17;
  }

  if (v12)
  {
    v28 = [(UIView *)self topAnchor];
    v34 = [v14 topAnchor];
    v35 = v28;
    *&v29 = a6;
    v15 = [v28 constraintEqualToAnchor:top constant:v29 priority:?];
    if ((v12 & 2) != 0)
    {
LABEL_4:
      v16 = [(UIView *)self leadingAnchor];
      v32 = [v14 leadingAnchor];
      v33 = v16;
      *&v17 = a6;
      v18 = [v16 constraintEqualToAnchor:left constant:v17 priority:?];
      if ((v12 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v18 = 0;
  if ((v12 & 4) != 0)
  {
LABEL_5:
    v19 = [v14 bottomAnchor];
    v6 = [(UIView *)self bottomAnchor];
    v31 = v19;
    *&v20 = a6;
    v21 = [v19 constraintEqualToAnchor:v6 constant:bottom priority:v20];
    if ((v12 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v15 leading:v18 bottom:v21 trailing:0];
    if ((v12 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v22 = [v14 trailingAnchor];
  v23 = [(UIView *)self trailingAnchor];
  *&v24 = a6;
  [v22 constraintEqualToAnchor:v23 constant:right priority:v24];
  v26 = v25 = v15;
  v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v25 leading:v18 bottom:v21 trailing:v26];

  v15 = v25;
  if ((v12 & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((v12 & 2) == 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v12)
  {
LABEL_16:
  }

LABEL_17:

  return v27;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofLayoutGuide:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v12 = a3;
  v14 = a4;
  if (!v14)
  {
    v27 = 0;
    goto LABEL_17;
  }

  if (v12)
  {
    v28 = [(UIView *)self topAnchor];
    v34 = [v14 topAnchor];
    v35 = v28;
    *&v29 = a6;
    v15 = [v28 constraintEqualToAnchor:top constant:v29 priority:?];
    if ((v12 & 2) != 0)
    {
LABEL_4:
      v16 = [(UIView *)self leadingAnchor];
      v32 = [v14 leadingAnchor];
      v33 = v16;
      *&v17 = a6;
      v18 = [v16 constraintEqualToAnchor:left constant:v17 priority:?];
      if ((v12 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v18 = 0;
  if ((v12 & 4) != 0)
  {
LABEL_5:
    v19 = [v14 bottomAnchor];
    v6 = [(UIView *)self bottomAnchor];
    v31 = v19;
    *&v20 = a6;
    v21 = [v19 constraintEqualToAnchor:v6 constant:bottom priority:v20];
    if ((v12 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v15 leading:v18 bottom:v21 trailing:0];
    if ((v12 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v22 = [v14 trailingAnchor];
  v23 = [(UIView *)self trailingAnchor];
  *&v24 = a6;
  [v22 constraintEqualToAnchor:v23 constant:right priority:v24];
  v26 = v25 = v15;
  v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v25 leading:v18 bottom:v21 trailing:v26];

  v15 = v25;
  if ((v12 & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((v12 & 2) == 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v12)
  {
LABEL_16:
  }

LABEL_17:

  return v27;
}

- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)a3 withFillingPriority:(float)a4
{
  v7 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v7];
  *&v8 = a4;
  v9 = [(UIView *)self _maps_flexibleConstraintsForLayoutGuide:v7 insideEdges:a3 withFillingPriority:v8];
  [NSLayoutConstraint activateConstraints:v9];

  return v7;
}

- (id)_maps_flexibleConstraintsForLayoutGuide:(id)a3 insideEdges:(unint64_t)a4 withFillingPriority:(float)a5
{
  v8 = a3;
  v9 = objc_alloc_init(NSMutableArray);
  LODWORD(v10) = 1148829696;
  if (a5 <= 999.0)
  {
    *&v10 = a5;
  }

  v11 = [v8 _maps_constraintsEqualToEdges:a4 ofView:self priority:v10];
  v12 = [v11 allConstraints];
  [v9 addObjectsFromArray:v12];

  if (a4)
  {
    v18 = [v8 topAnchor];
    v19 = [(UIView *)self topAnchor];
    v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];
    [v9 addObject:v20];

    if ((a4 & 2) == 0)
    {
LABEL_5:
      if ((a4 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_5;
  }

  v21 = [v8 leadingAnchor];
  v22 = [(UIView *)self leadingAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
  [v9 addObject:v23];

  if ((a4 & 4) == 0)
  {
LABEL_6:
    if ((a4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v24 = [(UIView *)self bottomAnchor];
  v25 = [v8 bottomAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];
  [v9 addObject:v26];

  if ((a4 & 8) != 0)
  {
LABEL_7:
    v13 = [(UIView *)self trailingAnchor];
    v14 = [v8 trailingAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
    [v9 addObject:v15];
  }

LABEL_8:
  v16 = [v9 copy];

  return v16;
}

- (CGAffineTransform)_maps_transformScaledToLeadingAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v12 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v12;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 userInterfaceLayoutDirection];

    v10 = v7 - v7 * a4;
    CGAffineTransformMakeScale(&v13, a4, a4);
    if (v9 == &dword_0 + 1)
    {
      v11 = 0.5;
    }

    else
    {
      v11 = -0.5;
    }

    return CGAffineTransformTranslate(retstr, &v13, v10 * v11 / a4, 0.0);
  }

  return self;
}

- (CGAffineTransform)_maps_transformScaledToTopAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v8 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v8;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    CGAffineTransformMakeScale(&v9, a4, a4);
    return CGAffineTransformTranslate(retstr, &v9, 0.0, (v7 - v7 * a4) * -0.5 / a4);
  }

  return self;
}

- (CGAffineTransform)_maps_transformScaledToTopAndLeadingAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v14 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v14;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    v9 = v8;
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    v12 = v7 - v7 * a4;
    CGAffineTransformMakeScale(&v15, a4, a4);
    if (v11 == &dword_0 + 1)
    {
      v13 = v12 * 0.5;
    }

    else
    {
      v13 = v12 * -0.5;
    }

    return CGAffineTransformTranslate(retstr, &v15, v13 / a4, (v9 - v9 * a4) * -0.5 / a4);
  }

  return self;
}

- (CGAffineTransform)_maps_transformScaledToTopAndTrailingAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v14 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v14;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    v9 = v8;
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    v12 = v7 - v7 * a4;
    CGAffineTransformMakeScale(&v15, a4, a4);
    if (v11 == &dword_0 + 1)
    {
      v13 = v12 * -0.5;
    }

    else
    {
      v13 = v12 * 0.5;
    }

    return CGAffineTransformTranslate(retstr, &v15, v13 / a4, (v9 - v9 * a4) * -0.5 / a4);
  }

  return self;
}

- (double)_maps_maxConstraintConstantForAxis:(int64_t)a3
{
  v5 = [(UIView *)self window];
  if (v5)
  {
    [(UIView *)self window];
  }

  else
  {
    +[UIScreen mainScreen];
  }
  v6 = ;
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if (a3 == 1)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

- (void)_maps_setAllContentHuggingAndCompressionResistancePriorities:(float)a3
{
  [(UIView *)self setContentHuggingPriority:0 forAxis:?];
  *&v5 = a3;
  [(UIView *)self setContentHuggingPriority:1 forAxis:v5];
  *&v6 = a3;
  [(UIView *)self setContentCompressionResistancePriority:0 forAxis:v6];
  *&v7 = a3;

  [(UIView *)self setContentCompressionResistancePriority:1 forAxis:v7];
}

+ (void)_maps_animateForAndromeda:(BOOL)a3 animations:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!a3 && !+[UIView areAnimationsEnabled])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:a1];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_142E4;
  v12[3] = &unk_7FC08;
  v15 = a3;
  v13 = v9;
  v14 = a1;
  v11 = v9;
  [UIView animateWithDuration:0x10000 delay:v8 options:v12 animations:0.25 completion:0.0];
}

- (NSString)sceneIdentifierForLogging
{
  v2 = [(UIView *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 delegate];

  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___SceneIdentifierProviding])
  {
    v5 = [v4 sceneIdentifier];
  }

  else if (v4)
  {
    v5 = @"iOS";
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

@end