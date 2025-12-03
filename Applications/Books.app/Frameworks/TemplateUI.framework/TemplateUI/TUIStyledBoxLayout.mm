@interface TUIStyledBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)_needsRenderModel;
- (BOOL)_needsSubviewsRenderModelWithContext:(id)context;
- (BOOL)groupedContainingIsGrouped;
- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge;
- (CGRect)computedErasableBounds;
- (TUILayout)contentChild;
- (UIEdgeInsets)groupedContainingInsets;
- (double)computedHeightAbovePivot;
- (id)effectiveGuideBottom;
- (id)effectiveGuideLeading;
- (id)effectiveGuideTop;
- (id)effectiveGuideTrailing;
- (id)groupedContainingLayouts;
- (id)guideProviderForLayout:(id)layout;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)_updateSpecifiedWidth;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)computeLayout;
- (void)groupedContainingValidateWithSize:(CGSize)size;
- (void)layoutNonContentChildrenWithSize:(CGSize)size;
- (void)onChildrenUpdated;
@end

@implementation TUIStyledBoxLayout

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v4 = [(TUILayout *)self box];
  [v4 insets];
  v6 = v5;
  v8 = v7;

  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  validatedIntrinsicWidthConsideringSpecified = [contentChild validatedIntrinsicWidthConsideringSpecified];
  v12 = v11;

  return TUILengthWithDelta(validatedIntrinsicWidthConsideringSpecified, v12, v6 + v8);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v4 = [(TUILayout *)self box];
  [v4 insets];
  v6 = v5;
  v8 = v7;

  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  validatedIntrinsicHeightConsideringSpecified = [contentChild validatedIntrinsicHeightConsideringSpecified];
  v12 = v11;

  return TUILengthWithDelta(validatedIntrinsicHeightConsideringSpecified, v12, v6 + v8);
}

- (double)computedHeightAbovePivot
{
  v3 = [(TUILayout *)self box];
  [v3 insets];
  v5 = v4;

  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  [contentChild computedHeightAbovePivot];
  v8 = v5 + v7;

  return v8;
}

- (void)computeLayout
{
  v19 = [(TUILayout *)self box];
  [v19 insets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  [(TUILayout *)self flexedWidth];
  [(TUILayout *)self flexedWidth];
  [contentChild setFlexedWidth:v11 - v6 - v10];
  [(TUILayout *)self flexedHeight];
  [(TUILayout *)self flexedHeight];
  [contentChild setFlexedHeight:v12 - v4 - v8];
  [(TUILayout *)self computeWidth];
  [contentChild setContainingWidth:v13 - v6 - v10];
  [(TUILayout *)self containingHeight];
  [(TUILayout *)self containingHeight];
  [contentChild setContainingHeight:v14 - v4 - v8];
  [contentChild validateLayout];
  [contentChild setComputedOrigin:{v6, v4}];
  [contentChild computedTransformedSize];
  v16 = v6 + v10 + v15;
  v18 = v4 + v8 + v17;
  [(TUILayout *)self setComputedNaturalSize:v16, v18];
  [(TUIStyledBoxLayout *)self layoutNonContentChildrenWithSize:v16, v18];
}

- (void)layoutNonContentChildrenWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  children = [(TUILayout *)self children];
  v6 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 box];
        v11 = [v10 role] == 0;

        if (!v11)
        {
          [v9 setContainingWidth:width];
          [v9 setContainingHeight:height];
          [v9 computedWidth];
          v13 = NAN;
          if ((v12 & 0x8000000000000) != 0)
          {
            v13 = width;
          }

          [v9 setFlexedWidth:v13];
          [v9 computedHeight];
          v15 = NAN;
          if ((v14 & 0x8000000000000) != 0)
          {
            v15 = height;
          }

          [v9 setFlexedHeight:v15];
          [v9 validateLayout];
        }
      }

      v6 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  computedWidth = [contentChild computedWidth];
  v7 = v6;
  v8 = [(TUILayout *)self box];
  [v8 insets];
  v10 = v9;
  v12 = v11;

  v13 = TUILengthWithDelta(computedWidth, v7, v10 + v12);
  return v13;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  computedHeight = [contentChild computedHeight];
  v7 = v6;
  v8 = [(TUILayout *)self box];
  [v8 insets];
  v10 = v9;
  v12 = v11;

  v13 = TUILengthWithDelta(computedHeight, v7, v10 + v12);
  return v13;
}

- (void)onChildrenUpdated
{
  v3.receiver = self;
  v3.super_class = TUIStyledBoxLayout;
  [(TUILayout *)&v3 onChildrenUpdated];
  [(TUILayout *)self invalidateIntrinsicSize];
  [(TUIStyledBoxLayout *)self _updateSpecifiedWidth];
  objc_storeWeak(&self->_contentChild, 0);
}

- (void)_updateSpecifiedWidth
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  v3 = [(TUILayout *)self box];
  [v3 width];
  if ((v4 & 0x6000000000000) == 0x2000000000000)
  {
    [contentChild specifiedWidth];
    v6 = HIWORD(v5) & 7;
    v8 = v6 == 4 || v6 == 1;
  }

  else
  {
    v8 = 0;
  }

  [(TUILayout *)self setSpecifiedWidthComputeInherited:v8];
}

- (BOOL)_needsRenderModel
{
  v3 = [(TUILayout *)self box];
  backgroundColor = [v3 backgroundColor];
  if (backgroundColor)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TUILayout *)self box];
    shadowColor = [v6 shadowColor];
    if (shadowColor)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(TUILayout *)self box];
      borderColor = [v8 borderColor];
      if (borderColor)
      {
        v5 = 1;
      }

      else
      {
        v10 = [(TUILayout *)self box];
        if ([v10 clipsToBounds])
        {
          v5 = 1;
        }

        else
        {
          v11 = [(TUILayout *)self box];
          blendMode = [v11 blendMode];
          v5 = blendMode != 0;
        }
      }
    }
  }

  return v5;
}

- (BOOL)_needsSubviewsRenderModelWithContext:(id)context
{
  contextCopy = context;
  v5 = [(TUILayout *)self box];
  if ([v5 clipsToBounds])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(TUILayout *)self box];
    blendMode = [v7 blendMode];
    if (blendMode)
    {
      v6 = 1;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = TUIStyledBoxLayout;
      v6 = [(TUILayout *)&v10 shouldUseSubviewRenderModelWithContext:contextCopy];
    }
  }

  return v6;
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  contextCopy = context;
  modelsCopy = models;
  if ([(TUIStyledBoxLayout *)self _needsRenderModel]&& ![(TUIStyledBoxLayout *)self _needsSubviewsRenderModelWithContext:contextCopy])
  {
    v12 = [_TUIStyledBoxStyler alloc];
    [contextCopy contentsScale];
    v54 = [(_TUIStyledBoxStyler *)v12 initWithLayout:self contentsScale:?];
    v13 = [[_TUIStyledLayerConfig alloc] initWithStyler:v54];
    v14 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v13 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUILayout *)self renderModelSizeWithContext:contextCopy];
    [(TUIRenderModelLayer *)v14 setSize:?];
    v15 = [(TUILayout *)self box];
    identifier = [v15 identifier];
    v17 = [identifier tui_identifierByAppendingString:@"background"];
    [(TUIRenderModelLayer *)v14 setIdentifier:v17];

    if (v14)
    {
      v18 = [contextCopy convertRenderModel:v14 toKind:4];

      y = CGPointZero.y;
      a = transform->a;
      b = transform->b;
      tx = transform->tx;
      c = transform->c;
      ty = transform->ty;
      d = transform->d;
      [v18 size];
      v20 = v19;
      [v18 size];
      v22 = v21;
      v24 = transform->a;
      v23 = transform->b;
      v25 = transform->c;
      v26 = transform->d;
      v27 = transform->tx;
      v28 = transform->ty;
      [contextCopy contentsScale];
      v29 = v20 * -0.5;
      v30 = v27 + v22 * -0.5 * v25 + v24 * (v20 * -0.5);
      v31 = v28 + v22 * -0.5 * v26 + v23 * v29;
      v33 = tx + y * c + a * CGPointZero.x + TUIPointRoundedForScale(v30, v31, v32) - v30;
      v35 = ty + y * d + b * CGPointZero.x + v34 - v31;
      v36 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v36;
      *&t1.tx = *&transform->tx;
      memset(&v58, 0, sizeof(v58));
      CGAffineTransformMakeTranslation(&t2, -v33, -v35);
      CGAffineTransformConcat(&v58, &t1, &t2);
      v37 = v58.tx;
      [contextCopy contentsScale];
      v58.tx = TUIFloatRoundedForScale(v37, v38);
      v39 = v58.ty;
      [contextCopy contentsScale];
      v58.ty = TUIFloatRoundedForScale(v39, v40);
      v41 = [[TUIRenderModelTransform alloc] initWithSubmodel:v18];
      [(TUIRenderModelTransform *)v41 setCenter:v33, v35];
      t1 = v58;
      [(TUIRenderModelTransform *)v41 setTransform:&t1];
      currentLiveTransform = [contextCopy currentLiveTransform];
      [(TUIRenderModelTransform *)v41 setLiveTransform:currentLiveTransform];

      v43 = [(TUILayout *)self box];
      [v43 renderOutsets];
      [(TUIRenderModelTransform *)v41 setOutsets:?];

      [(TUIRenderModelTransform *)v41 setZIndex:[(TUILayout *)self computeZIndexWithDefault:-999]- 1];
      v44 = [(TUILayout *)self computedRefIdWithContext:contextCopy];
      [(TUIRenderModelTransform *)v41 setRefId:v44];

      v45 = [(TUILayout *)self computedRefInstanceWithContext:contextCopy];
      [(TUIRenderModelTransform *)v41 setRefInstance:v45];

      [modelsCopy addObject:v41];
    }
  }

  v46 = *&transform->c;
  *&v58.a = *&transform->a;
  *&v58.c = v46;
  *&v58.tx = *&transform->tx;
  v55.receiver = self;
  v55.super_class = TUIStyledBoxLayout;
  [(TUILayout *)&v55 appendChildRenderModelCompatibleWithKind:kind context:contextCopy transform:&v58 toModels:modelsCopy];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  if (![(TUIStyledBoxLayout *)self _needsRenderModel])
  {
    goto LABEL_8;
  }

  if (kind < 4)
  {
    if (kind == 3)
    {
      v7 = objc_opt_new();
      [(TUILayout *)self computedNaturalSize];
      memset(&v24, 0, sizeof(v24));
      CGAffineTransformMakeTranslation(&v24, v13 * 0.5, v14 * 0.5);
      v23 = v24;
      v22.receiver = self;
      v22.super_class = TUIStyledBoxLayout;
      [(TUILayout *)&v22 appendChildRenderModelCompatibleWithKind:3 context:contextCopy transform:&v23 toModels:v7];
      v15 = [contextCopy renderModelConvertModels:v7 toKind:3];
      v16 = [_TUIStyledBoxStyler alloc];
      [contextCopy contentsScale];
      v17 = [(_TUIStyledBoxStyler *)v16 initWithLayout:self contentsScale:?];
      v18 = [[_TUIStyledLayerConfig alloc] initWithStyler:v17];
      v12 = [[TUIRenderModelLayer alloc] initWithSubmodels:v15 config:v18 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
      [(TUILayout *)self renderModelSizeWithContext:contextCopy];
      [(TUIRenderModelLayer *)v12 setSize:?];
      v19 = [(TUILayout *)self box];
      identifier = [v19 identifier];
      [(TUIRenderModelLayer *)v12 setIdentifier:identifier];

      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (![(TUIStyledBoxLayout *)self _needsSubviewsRenderModelWithContext:contextCopy])
  {
    goto LABEL_8;
  }

  v7 = [contextCopy renderModelForContainerLayout:self kind:6];
  v8 = [_TUIStyledBoxStyler alloc];
  [contextCopy contentsScale];
  v9 = [(_TUIStyledBoxStyler *)v8 initWithLayout:self contentsScale:?];
  v10 = [(TUILayout *)self box];
  identifier2 = [v10 identifier];
  v12 = [TUIContainerView renderModelWithSubviewsModel:v7 style:v9 identifier:identifier2];

  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  [(TUIRenderModelLayer *)v12 setSize:?];
LABEL_7:

LABEL_9:
  return v12;
}

- (CGRect)computedErasableBounds
{
  v3 = [(TUILayout *)self box];
  if ([v3 clipsToBounds])
  {
    [(TUILayout *)self computedErasableBoundsPrimitive];
  }

  else
  {
    v28.receiver = self;
    v28.super_class = TUIStyledBoxLayout;
    [(TUILayout *)&v28 computedErasableBounds];
  }

  x = v4;
  y = v5;
  width = v6;
  height = v7;

  v12 = [(TUILayout *)self box];
  [v12 shadowOpacity];
  v14 = v13;

  if (v14 != 0.0)
  {
    v15 = [(TUILayout *)self box];
    [v15 shadowRadius];
    v17 = v16;

    v18 = [(TUILayout *)self box];
    [v18 shadowOffset];
    v20 = v19;
    v22 = v21;
    v23 = v17 + v17;

    v32.origin.x = x - (v23 - v20);
    v32.origin.y = y - (v23 - v22);
    v32.size.width = width - (-(v23 + v20) - (v23 - v20));
    v32.size.height = height - (-(v23 + v22) - (v23 - v22));
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectUnion(v29, v32);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (TUILayout)contentChild
{
  WeakRetained = objc_loadWeakRetained(&self->_contentChild);

  if (!WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    children = [(TUILayout *)self children];
    v5 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(children);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 box];
          v10 = [v9 role] == 0;

          if (v10)
          {
            objc_storeWeak(&self->_contentChild, v8);
            goto LABEL_12;
          }
        }

        v5 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = objc_loadWeakRetained(&self->_contentChild);

  return v11;
}

- (id)guideProviderForLayout:(id)layout
{
  layoutCopy = layout;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v6 = [layoutAncestor guideProviderForLayout:layoutCopy];

  return v6;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge
{
  layoutCopy = layout;
  layoutAncestor = [layoutCopy layoutAncestor];
  if (layoutAncestor == self)
  {
    v9 = [layoutCopy box];
    if ([v9 role])
    {
      v8 = 0;
    }

    else
    {
      layoutAncestor2 = [(TUILayout *)self layoutAncestor];
      v8 = [layoutAncestor2 shouldUseDefaultGuideForLayout:self edge:edge];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)effectiveGuideTop
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  effectiveGuideTop = [contentChild effectiveGuideTop];

  return effectiveGuideTop;
}

- (id)effectiveGuideBottom
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  effectiveGuideBottom = [contentChild effectiveGuideBottom];

  return effectiveGuideBottom;
}

- (id)effectiveGuideLeading
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  effectiveGuideLeading = [contentChild effectiveGuideLeading];

  return effectiveGuideLeading;
}

- (id)effectiveGuideTrailing
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  effectiveGuideTrailing = [contentChild effectiveGuideTrailing];

  return effectiveGuideTrailing;
}

- (BOOL)groupedContainingIsGrouped
{
  v2 = [(TUILayout *)self box];
  grouped = [v2 grouped];

  return grouped;
}

- (id)groupedContainingLayouts
{
  contentChild = [(TUIStyledBoxLayout *)self contentChild];
  v3 = contentChild;
  if (contentChild)
  {
    v6 = contentChild;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)groupedContainingValidateWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TUILayout *)self setComputedNaturalSize:?];

  [(TUIStyledBoxLayout *)self layoutNonContentChildrenWithSize:width, height];
}

- (UIEdgeInsets)groupedContainingInsets
{
  v2 = [(TUILayout *)self box];
  [v2 insets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

@end