@interface UIView
+ (BOOL)_maps_shouldAdoptImplicitAnimationParameters;
+ (void)_maps_animateForAndromeda:(BOOL)andromeda animations:(id)animations completion:(id)completion;
- (BOOL)_maps_isVisible;
- (CGAffineTransform)_maps_transformScaledToLeadingAtScale:(SEL)scale;
- (CGAffineTransform)_maps_transformScaledToTopAndLeadingAtScale:(SEL)scale;
- (CGAffineTransform)_maps_transformScaledToTopAndTrailingAtScale:(SEL)scale;
- (CGAffineTransform)_maps_transformScaledToTopAtScale:(SEL)scale;
- (CGRect)_maps_centeringFrameForView:(id)view fit:(BOOL)fit constrain:(BOOL)constrain inRect:(CGRect)rect;
- (CGRect)_maps_centeringFrameForView:(id)view inRect:(CGRect)rect options:(int64_t)options;
- (CGRect)_maps_centeringFrameForView:(id)view size:(CGSize)size inRect:(CGRect)rect;
- (CGSize)_maps_compressedSizeForWidth:(double)width withBlock:(id)block;
- (MapsTheme)theme;
- (NSString)sceneIdentifierForLogging;
- (double)_maps_maxConstraintConstantForAxis:(int64_t)axis;
- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofLayoutGuide:(id)guide insets:(UIEdgeInsets)insets priority:(float)priority;
- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofView:(id)view insets:(UIEdgeInsets)insets priority:(float)priority;
- (id)_maps_constraintsForCenteringInView:(id)view;
- (id)_maps_constraintsForCenteringInView:(id)view edgeInsets:(UIEdgeInsets)insets;
- (id)_maps_constraintsForCenteringInView:(id)view edgeInsets:(UIEdgeInsets)insets priorities:(id)priorities;
- (id)_maps_constraintsForCenteringInView:(id)view priorities:(id)priorities;
- (id)_maps_flexibleConstraintsForLayoutGuide:(id)guide insideEdges:(unint64_t)edges withFillingPriority:(float)priority;
- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)edges withFillingPriority:(float)priority;
- (void)_maps_alignTopToView:(id)view;
- (void)_maps_initializeWithAutolayoutCompressedSize;
- (void)_maps_recursivelySetAllowsGroupOpacity:(BOOL)opacity;
- (void)_maps_setAllContentHuggingAndCompressionResistancePriorities:(float)priorities;
@end

@implementation UIView

- (MapsTheme)theme
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle)
  {
    traitCollection2 = [(UIView *)self traitCollection];
    v6 = [traitCollection2 userInterfaceStyle] != &dword_0 + 1;

    v7 = +[MapsTheme sharedTheme];
    [v7 setMapsThemeStyle:v6];
  }

  return +[MapsTheme sharedTheme];
}

- (void)_maps_recursivelySetAllowsGroupOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  layer = [(UIView *)self layer];
  [layer setAllowsGroupOpacity:opacityCopy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [(UIView *)self subviews];
  v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v11 + 1) + 8 * v10) _maps_recursivelySetAllowsGroupOpacity:opacityCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (CGRect)_maps_centeringFrameForView:(id)view fit:(BOOL)fit constrain:(BOOL)constrain inRect:(CGRect)rect
{
  if (constrain)
  {
    [(UIView *)self _maps_centeringFrameForView:view inRect:fit | 4 options:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  }

  else
  {
    [(UIView *)self _maps_centeringFrameForView:view inRect:fit options:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_maps_centeringFrameForView:(id)view inRect:(CGRect)rect options:(int64_t)options
{
  optionsCopy = options;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v12 = viewCopy;
  if ((optionsCopy & 8) != 0)
  {
    [viewCopy bounds];
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

  if ((optionsCopy & 2) != 0)
  {
    [v12 systemLayoutSizeFittingSize:{width, height}];
  }

  else if (optionsCopy)
  {
    [v12 sizeThatFits:{width, height}];
  }

  else
  {
    [v12 frame];
    v26 = v25;
    v28 = v27;
  }

  v29 = (optionsCopy & 4) == 0;
  if (v28 >= height && (optionsCopy & 4) != 0)
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

- (CGRect)_maps_centeringFrameForView:(id)view size:(CGSize)size inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = size.height;
  v10 = size.width;
  v11 = (rect.size.width - size.width) * 0.5 + CGRectGetMinX(rect);
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

- (CGSize)_maps_compressedSizeForWidth:(double)width withBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, a2);
  }

  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(UIView *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:v4, v5];
  widthCopy = width;
  result.height = v8;
  result.width = widthCopy;
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

  window = [(UIView *)self window];
  v3 = window != 0;

  return v3;
}

- (void)_maps_alignTopToView:(id)view
{
  viewCopy = view;
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [viewCopy frame];
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

- (id)_maps_constraintsForCenteringInView:(id)view
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1148846080;
  return [(UIView *)self _maps_constraintsForCenteringInView:view edgeInsets:0.0 priorities:0.0, 0.0, 0.0, v3, v4, v5, v6];
}

- (id)_maps_constraintsForCenteringInView:(id)view edgeInsets:(UIEdgeInsets)insets
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1148846080;
  return [(UIView *)self _maps_constraintsForCenteringInView:view edgeInsets:insets.top priorities:insets.left, insets.bottom, insets.right, v4, v5, v6, v7];
}

- (id)_maps_constraintsForCenteringInView:(id)view priorities:(id)priorities
{
  *&v7 = priorities.var3;
  *&v6 = priorities.var2;
  *&v5 = priorities.var1;
  *&v4 = priorities.var0;
  return [(UIView *)self _maps_constraintsForCenteringInView:view edgeInsets:0.0 priorities:0.0, 0.0, 0.0, v4, v5, v6, v7];
}

- (id)_maps_constraintsForCenteringInView:(id)view edgeInsets:(UIEdgeInsets)insets priorities:(id)priorities
{
  var3 = priorities.var3;
  var2 = priorities.var2;
  var1 = priorities.var1;
  var0 = priorities.var0;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  viewCopy = view;
  topAnchor = [(UIView *)self topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  *&v15 = var0;
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top priority:v15];
  v33[0] = v30;
  leftAnchor = [(UIView *)self leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  *&v18 = var2;
  v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:left priority:v18];
  v33[1] = v19;
  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [(UIView *)self bottomAnchor];
  *&v22 = var1;
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom priority:v22];
  v33[2] = v23;
  rightAnchor = [viewCopy rightAnchor];

  rightAnchor2 = [(UIView *)self rightAnchor];
  *&v26 = var3;
  v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:right priority:v26];
  v33[3] = v27;
  v28 = [NSArray arrayWithObjects:v33 count:4];

  return v28;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofView:(id)view insets:(UIEdgeInsets)insets priority:(float)priority
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  edgesCopy = edges;
  viewCopy = view;
  if (!viewCopy)
  {
    v27 = 0;
    goto LABEL_17;
  }

  if (edgesCopy)
  {
    topAnchor = [(UIView *)self topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v35 = topAnchor;
    *&v29 = priority;
    v15 = [topAnchor constraintEqualToAnchor:top constant:v29 priority:?];
    if ((edgesCopy & 2) != 0)
    {
LABEL_4:
      leadingAnchor = [(UIView *)self leadingAnchor];
      leadingAnchor2 = [viewCopy leadingAnchor];
      v33 = leadingAnchor;
      *&v17 = priority;
      v18 = [leadingAnchor constraintEqualToAnchor:left constant:v17 priority:?];
      if ((edgesCopy & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    if ((edgesCopy & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v18 = 0;
  if ((edgesCopy & 4) != 0)
  {
LABEL_5:
    bottomAnchor = [viewCopy bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v31 = bottomAnchor;
    *&v20 = priority;
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom priority:v20];
    if ((edgesCopy & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v15 leading:v18 bottom:v21 trailing:0];
    if ((edgesCopy & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((edgesCopy & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  *&v24 = priority;
  [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:right priority:v24];
  v26 = v25 = v15;
  v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v25 leading:v18 bottom:v21 trailing:v26];

  v15 = v25;
  if ((edgesCopy & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((edgesCopy & 2) == 0)
  {
    if ((edgesCopy & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (edgesCopy)
  {
LABEL_16:
  }

LABEL_17:

  return v27;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)edges ofLayoutGuide:(id)guide insets:(UIEdgeInsets)insets priority:(float)priority
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  edgesCopy = edges;
  guideCopy = guide;
  if (!guideCopy)
  {
    v27 = 0;
    goto LABEL_17;
  }

  if (edgesCopy)
  {
    topAnchor = [(UIView *)self topAnchor];
    topAnchor2 = [guideCopy topAnchor];
    v35 = topAnchor;
    *&v29 = priority;
    v15 = [topAnchor constraintEqualToAnchor:top constant:v29 priority:?];
    if ((edgesCopy & 2) != 0)
    {
LABEL_4:
      leadingAnchor = [(UIView *)self leadingAnchor];
      leadingAnchor2 = [guideCopy leadingAnchor];
      v33 = leadingAnchor;
      *&v17 = priority;
      v18 = [leadingAnchor constraintEqualToAnchor:left constant:v17 priority:?];
      if ((edgesCopy & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    if ((edgesCopy & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v18 = 0;
  if ((edgesCopy & 4) != 0)
  {
LABEL_5:
    bottomAnchor = [guideCopy bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v31 = bottomAnchor;
    *&v20 = priority;
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom priority:v20];
    if ((edgesCopy & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v15 leading:v18 bottom:v21 trailing:0];
    if ((edgesCopy & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((edgesCopy & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  trailingAnchor = [guideCopy trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  *&v24 = priority;
  [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:right priority:v24];
  v26 = v25 = v15;
  v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v25 leading:v18 bottom:v21 trailing:v26];

  v15 = v25;
  if ((edgesCopy & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((edgesCopy & 2) == 0)
  {
    if ((edgesCopy & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (edgesCopy)
  {
LABEL_16:
  }

LABEL_17:

  return v27;
}

- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)edges withFillingPriority:(float)priority
{
  v7 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v7];
  *&v8 = priority;
  v9 = [(UIView *)self _maps_flexibleConstraintsForLayoutGuide:v7 insideEdges:edges withFillingPriority:v8];
  [NSLayoutConstraint activateConstraints:v9];

  return v7;
}

- (id)_maps_flexibleConstraintsForLayoutGuide:(id)guide insideEdges:(unint64_t)edges withFillingPriority:(float)priority
{
  guideCopy = guide;
  v9 = objc_alloc_init(NSMutableArray);
  LODWORD(v10) = 1148829696;
  if (priority <= 999.0)
  {
    *&v10 = priority;
  }

  v11 = [guideCopy _maps_constraintsEqualToEdges:edges ofView:self priority:v10];
  allConstraints = [v11 allConstraints];
  [v9 addObjectsFromArray:allConstraints];

  if (edges)
  {
    topAnchor = [guideCopy topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v20 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [v9 addObject:v20];

    if ((edges & 2) == 0)
    {
LABEL_5:
      if ((edges & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((edges & 2) == 0)
  {
    goto LABEL_5;
  }

  leadingAnchor = [guideCopy leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [v9 addObject:v23];

  if ((edges & 4) == 0)
  {
LABEL_6:
    if ((edges & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  bottomAnchor = [(UIView *)self bottomAnchor];
  bottomAnchor2 = [guideCopy bottomAnchor];
  v26 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  [v9 addObject:v26];

  if ((edges & 8) != 0)
  {
LABEL_7:
    trailingAnchor = [(UIView *)self trailingAnchor];
    trailingAnchor2 = [guideCopy trailingAnchor];
    v15 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    [v9 addObject:v15];
  }

LABEL_8:
  v16 = [v9 copy];

  return v16;
}

- (CGAffineTransform)_maps_transformScaledToLeadingAtScale:(SEL)scale
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
    userInterfaceLayoutDirection = [v8 userInterfaceLayoutDirection];

    v10 = v7 - v7 * a4;
    CGAffineTransformMakeScale(&v13, a4, a4);
    if (userInterfaceLayoutDirection == &dword_0 + 1)
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

- (CGAffineTransform)_maps_transformScaledToTopAtScale:(SEL)scale
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

- (CGAffineTransform)_maps_transformScaledToTopAndLeadingAtScale:(SEL)scale
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
    userInterfaceLayoutDirection = [v10 userInterfaceLayoutDirection];

    v12 = v7 - v7 * a4;
    CGAffineTransformMakeScale(&v15, a4, a4);
    if (userInterfaceLayoutDirection == &dword_0 + 1)
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

- (CGAffineTransform)_maps_transformScaledToTopAndTrailingAtScale:(SEL)scale
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
    userInterfaceLayoutDirection = [v10 userInterfaceLayoutDirection];

    v12 = v7 - v7 * a4;
    CGAffineTransformMakeScale(&v15, a4, a4);
    if (userInterfaceLayoutDirection == &dword_0 + 1)
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

- (double)_maps_maxConstraintConstantForAxis:(int64_t)axis
{
  window = [(UIView *)self window];
  if (window)
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

  if (axis == 1)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

- (void)_maps_setAllContentHuggingAndCompressionResistancePriorities:(float)priorities
{
  [(UIView *)self setContentHuggingPriority:0 forAxis:?];
  *&v5 = priorities;
  [(UIView *)self setContentHuggingPriority:1 forAxis:v5];
  *&v6 = priorities;
  [(UIView *)self setContentCompressionResistancePriority:0 forAxis:v6];
  *&v7 = priorities;

  [(UIView *)self setContentCompressionResistancePriority:1 forAxis:v7];
}

+ (void)_maps_animateForAndromeda:(BOOL)andromeda animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  if (!andromeda && !+[UIView areAnimationsEnabled])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:self];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_142E4;
  v12[3] = &unk_7FC08;
  andromedaCopy = andromeda;
  v13 = completionCopy;
  selfCopy = self;
  v11 = completionCopy;
  [UIView animateWithDuration:0x10000 delay:animationsCopy options:v12 animations:0.25 completion:0.0];
}

- (NSString)sceneIdentifierForLogging
{
  window = [(UIView *)self window];
  windowScene = [window windowScene];
  delegate = [windowScene delegate];

  if ([delegate conformsToProtocol:&OBJC_PROTOCOL___SceneIdentifierProviding])
  {
    sceneIdentifier = [delegate sceneIdentifier];
  }

  else if (delegate)
  {
    sceneIdentifier = @"iOS";
  }

  else
  {
    sceneIdentifier = @"Unknown";
  }

  return sceneIdentifier;
}

@end