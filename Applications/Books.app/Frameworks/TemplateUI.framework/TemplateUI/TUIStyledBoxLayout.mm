@interface TUIStyledBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)_needsRenderModel;
- (BOOL)_needsSubviewsRenderModelWithContext:(id)a3;
- (BOOL)groupedContainingIsGrouped;
- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4;
- (CGRect)computedErasableBounds;
- (TUILayout)contentChild;
- (UIEdgeInsets)groupedContainingInsets;
- (double)computedHeightAbovePivot;
- (id)effectiveGuideBottom;
- (id)effectiveGuideLeading;
- (id)effectiveGuideTop;
- (id)effectiveGuideTrailing;
- (id)groupedContainingLayouts;
- (id)guideProviderForLayout:(id)a3;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)_updateSpecifiedWidth;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)computeLayout;
- (void)groupedContainingValidateWithSize:(CGSize)a3;
- (void)layoutNonContentChildrenWithSize:(CGSize)a3;
- (void)onChildrenUpdated;
@end

@implementation TUIStyledBoxLayout

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v4 = [(TUILayout *)self box];
  [v4 insets];
  v6 = v5;
  v8 = v7;

  v9 = [(TUIStyledBoxLayout *)self contentChild];
  v10 = [v9 validatedIntrinsicWidthConsideringSpecified];
  v12 = v11;

  return TUILengthWithDelta(v10, v12, v6 + v8);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v4 = [(TUILayout *)self box];
  [v4 insets];
  v6 = v5;
  v8 = v7;

  v9 = [(TUIStyledBoxLayout *)self contentChild];
  v10 = [v9 validatedIntrinsicHeightConsideringSpecified];
  v12 = v11;

  return TUILengthWithDelta(v10, v12, v6 + v8);
}

- (double)computedHeightAbovePivot
{
  v3 = [(TUILayout *)self box];
  [v3 insets];
  v5 = v4;

  v6 = [(TUIStyledBoxLayout *)self contentChild];
  [v6 computedHeightAbovePivot];
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

  v20 = [(TUIStyledBoxLayout *)self contentChild];
  [(TUILayout *)self flexedWidth];
  [(TUILayout *)self flexedWidth];
  [v20 setFlexedWidth:v11 - v6 - v10];
  [(TUILayout *)self flexedHeight];
  [(TUILayout *)self flexedHeight];
  [v20 setFlexedHeight:v12 - v4 - v8];
  [(TUILayout *)self computeWidth];
  [v20 setContainingWidth:v13 - v6 - v10];
  [(TUILayout *)self containingHeight];
  [(TUILayout *)self containingHeight];
  [v20 setContainingHeight:v14 - v4 - v8];
  [v20 validateLayout];
  [v20 setComputedOrigin:{v6, v4}];
  [v20 computedTransformedSize];
  v16 = v6 + v10 + v15;
  v18 = v4 + v8 + v17;
  [(TUILayout *)self setComputedNaturalSize:v16, v18];
  [(TUIStyledBoxLayout *)self layoutNonContentChildrenWithSize:v16, v18];
}

- (void)layoutNonContentChildrenWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(TUILayout *)self children];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
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

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  v4 = [(TUIStyledBoxLayout *)self contentChild];
  v5 = [v4 computedWidth];
  v7 = v6;
  v8 = [(TUILayout *)self box];
  [v8 insets];
  v10 = v9;
  v12 = v11;

  v13 = TUILengthWithDelta(v5, v7, v10 + v12);
  return v13;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  v4 = [(TUIStyledBoxLayout *)self contentChild];
  v5 = [v4 computedHeight];
  v7 = v6;
  v8 = [(TUILayout *)self box];
  [v8 insets];
  v10 = v9;
  v12 = v11;

  v13 = TUILengthWithDelta(v5, v7, v10 + v12);
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
  v9 = [(TUIStyledBoxLayout *)self contentChild];
  v3 = [(TUILayout *)self box];
  [v3 width];
  if ((v4 & 0x6000000000000) == 0x2000000000000)
  {
    [v9 specifiedWidth];
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
  v4 = [v3 backgroundColor];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TUILayout *)self box];
    v7 = [v6 shadowColor];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(TUILayout *)self box];
      v9 = [v8 borderColor];
      if (v9)
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
          v12 = [v11 blendMode];
          v5 = v12 != 0;
        }
      }
    }
  }

  return v5;
}

- (BOOL)_needsSubviewsRenderModelWithContext:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self box];
  if ([v5 clipsToBounds])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(TUILayout *)self box];
    v8 = [v7 blendMode];
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = TUIStyledBoxLayout;
      v6 = [(TUILayout *)&v10 shouldUseSubviewRenderModelWithContext:v4];
    }
  }

  return v6;
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ([(TUIStyledBoxLayout *)self _needsRenderModel]&& ![(TUIStyledBoxLayout *)self _needsSubviewsRenderModelWithContext:v10])
  {
    v12 = [_TUIStyledBoxStyler alloc];
    [v10 contentsScale];
    v54 = [(_TUIStyledBoxStyler *)v12 initWithLayout:self contentsScale:?];
    v13 = [[_TUIStyledLayerConfig alloc] initWithStyler:v54];
    v14 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v13 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUILayout *)self renderModelSizeWithContext:v10];
    [(TUIRenderModelLayer *)v14 setSize:?];
    v15 = [(TUILayout *)self box];
    v16 = [v15 identifier];
    v17 = [v16 tui_identifierByAppendingString:@"background"];
    [(TUIRenderModelLayer *)v14 setIdentifier:v17];

    if (v14)
    {
      v18 = [v10 convertRenderModel:v14 toKind:4];

      y = CGPointZero.y;
      a = a5->a;
      b = a5->b;
      tx = a5->tx;
      c = a5->c;
      ty = a5->ty;
      d = a5->d;
      [v18 size];
      v20 = v19;
      [v18 size];
      v22 = v21;
      v24 = a5->a;
      v23 = a5->b;
      v25 = a5->c;
      v26 = a5->d;
      v27 = a5->tx;
      v28 = a5->ty;
      [v10 contentsScale];
      v29 = v20 * -0.5;
      v30 = v27 + v22 * -0.5 * v25 + v24 * (v20 * -0.5);
      v31 = v28 + v22 * -0.5 * v26 + v23 * v29;
      v33 = tx + y * c + a * CGPointZero.x + TUIPointRoundedForScale(v30, v31, v32) - v30;
      v35 = ty + y * d + b * CGPointZero.x + v34 - v31;
      v36 = *&a5->c;
      *&t1.a = *&a5->a;
      *&t1.c = v36;
      *&t1.tx = *&a5->tx;
      memset(&v58, 0, sizeof(v58));
      CGAffineTransformMakeTranslation(&t2, -v33, -v35);
      CGAffineTransformConcat(&v58, &t1, &t2);
      v37 = v58.tx;
      [v10 contentsScale];
      v58.tx = TUIFloatRoundedForScale(v37, v38);
      v39 = v58.ty;
      [v10 contentsScale];
      v58.ty = TUIFloatRoundedForScale(v39, v40);
      v41 = [[TUIRenderModelTransform alloc] initWithSubmodel:v18];
      [(TUIRenderModelTransform *)v41 setCenter:v33, v35];
      t1 = v58;
      [(TUIRenderModelTransform *)v41 setTransform:&t1];
      v42 = [v10 currentLiveTransform];
      [(TUIRenderModelTransform *)v41 setLiveTransform:v42];

      v43 = [(TUILayout *)self box];
      [v43 renderOutsets];
      [(TUIRenderModelTransform *)v41 setOutsets:?];

      [(TUIRenderModelTransform *)v41 setZIndex:[(TUILayout *)self computeZIndexWithDefault:-999]- 1];
      v44 = [(TUILayout *)self computedRefIdWithContext:v10];
      [(TUIRenderModelTransform *)v41 setRefId:v44];

      v45 = [(TUILayout *)self computedRefInstanceWithContext:v10];
      [(TUIRenderModelTransform *)v41 setRefInstance:v45];

      [v11 addObject:v41];
    }
  }

  v46 = *&a5->c;
  *&v58.a = *&a5->a;
  *&v58.c = v46;
  *&v58.tx = *&a5->tx;
  v55.receiver = self;
  v55.super_class = TUIStyledBoxLayout;
  [(TUILayout *)&v55 appendChildRenderModelCompatibleWithKind:a3 context:v10 transform:&v58 toModels:v11];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  if (![(TUIStyledBoxLayout *)self _needsRenderModel])
  {
    goto LABEL_8;
  }

  if (a3 < 4)
  {
    if (a3 == 3)
    {
      v7 = objc_opt_new();
      [(TUILayout *)self computedNaturalSize];
      memset(&v24, 0, sizeof(v24));
      CGAffineTransformMakeTranslation(&v24, v13 * 0.5, v14 * 0.5);
      v23 = v24;
      v22.receiver = self;
      v22.super_class = TUIStyledBoxLayout;
      [(TUILayout *)&v22 appendChildRenderModelCompatibleWithKind:3 context:v6 transform:&v23 toModels:v7];
      v15 = [v6 renderModelConvertModels:v7 toKind:3];
      v16 = [_TUIStyledBoxStyler alloc];
      [v6 contentsScale];
      v17 = [(_TUIStyledBoxStyler *)v16 initWithLayout:self contentsScale:?];
      v18 = [[_TUIStyledLayerConfig alloc] initWithStyler:v17];
      v12 = [[TUIRenderModelLayer alloc] initWithSubmodels:v15 config:v18 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
      [(TUILayout *)self renderModelSizeWithContext:v6];
      [(TUIRenderModelLayer *)v12 setSize:?];
      v19 = [(TUILayout *)self box];
      v20 = [v19 identifier];
      [(TUIRenderModelLayer *)v12 setIdentifier:v20];

      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (![(TUIStyledBoxLayout *)self _needsSubviewsRenderModelWithContext:v6])
  {
    goto LABEL_8;
  }

  v7 = [v6 renderModelForContainerLayout:self kind:6];
  v8 = [_TUIStyledBoxStyler alloc];
  [v6 contentsScale];
  v9 = [(_TUIStyledBoxStyler *)v8 initWithLayout:self contentsScale:?];
  v10 = [(TUILayout *)self box];
  v11 = [v10 identifier];
  v12 = [TUIContainerView renderModelWithSubviewsModel:v7 style:v9 identifier:v11];

  [(TUILayout *)self renderModelSizeWithContext:v6];
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
    v4 = [(TUILayout *)self children];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
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

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)guideProviderForLayout:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self layoutAncestor];
  v6 = [v5 guideProviderForLayout:v4];

  return v6;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 layoutAncestor];
  if (v7 == self)
  {
    v9 = [v6 box];
    if ([v9 role])
    {
      v8 = 0;
    }

    else
    {
      v10 = [(TUILayout *)self layoutAncestor];
      v8 = [v10 shouldUseDefaultGuideForLayout:self edge:a4];
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
  v2 = [(TUIStyledBoxLayout *)self contentChild];
  v3 = [v2 effectiveGuideTop];

  return v3;
}

- (id)effectiveGuideBottom
{
  v2 = [(TUIStyledBoxLayout *)self contentChild];
  v3 = [v2 effectiveGuideBottom];

  return v3;
}

- (id)effectiveGuideLeading
{
  v2 = [(TUIStyledBoxLayout *)self contentChild];
  v3 = [v2 effectiveGuideLeading];

  return v3;
}

- (id)effectiveGuideTrailing
{
  v2 = [(TUIStyledBoxLayout *)self contentChild];
  v3 = [v2 effectiveGuideTrailing];

  return v3;
}

- (BOOL)groupedContainingIsGrouped
{
  v2 = [(TUILayout *)self box];
  v3 = [v2 grouped];

  return v3;
}

- (id)groupedContainingLayouts
{
  v2 = [(TUIStyledBoxLayout *)self contentChild];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)groupedContainingValidateWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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