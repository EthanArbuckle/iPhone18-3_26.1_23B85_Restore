@interface TUIImageBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)specifiedIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)specifiedIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeightConsideringSpecified;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidthConsideringSpecified;
- (CGRect)computedErasableBounds;
- (TUIImageBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (double)computeIntrinsicAspectRatio;
- (double)constrainComputedHeight:(double)a3;
- (double)constrainComputedWidth:(double)a3;
- (id)_newImageResourcesWithContext:(id)a3;
- (id)_newIntrinsicImageResource;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)_computeIntrinsicContentSize;
- (void)computeLayout;
- (void)dealloc;
- (void)imageResourceDidChangeIntrinsicSize:(id)a3;
- (void)onInvalidateIntrinsicSize;
@end

@implementation TUIImageBoxLayout

- (TUIImageBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v6.receiver = self;
  v6.super_class = TUIImageBoxLayout;
  result = [(TUILayout *)&v6 initWithModel:a3 parent:a4 controller:a5];
  if (result)
  {
    result->_intrinsicContentSize = CGSizeZero;
  }

  return result;
}

- (void)dealloc
{
  [(TUIImageResource *)self->_intrinsicImageResource removeObserver:self];
  v3.receiver = self;
  v3.super_class = TUIImageBoxLayout;
  [(TUIImageBoxLayout *)&v3 dealloc];
}

- ($E297CC25127479E857BE23A4F8632EA4)specifiedIntrinsicWidth
{
  v3 = [(TUILayout *)self box];
  v4 = [v3 intrinsicWidth];

  return v4;
}

- ($E297CC25127479E857BE23A4F8632EA4)specifiedIntrinsicHeight
{
  v3 = [(TUILayout *)self box];
  v4 = [v3 intrinsicHeight];

  return v4;
}

- (void)imageResourceDidChangeIntrinsicSize:(id)a3
{
  v4 = +[TUITransaction currentOrImplicitTransaction];
  v5 = [(TUILayout *)self controller];
  v6 = [v5 transactionCoordinator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_178BE4;
  v7[3] = &unk_263650;
  v7[4] = self;
  [v6 scheduleLayoutUpdateWithTransaction:v4 block:v7];
}

- (id)_newIntrinsicImageResource
{
  v3 = [(TUILayout *)self box];
  v4 = [v3 urlString];

  if (v4)
  {
    v5 = [(TUILayout *)self box];
    v6 = [v5 urlString];
    v7 = [(TUILayout *)self box];
    v8 = [v7 baseURL];
    v9 = [NSURL URLWithString:v6 relativeToURL:v8];

    v10 = [(TUILayout *)self controller];
    v11 = [v10 manager];
    v12 = [v11 imageResourceCache];
    v13 = [(TUILayout *)self controller];
    [v13 contentsScale];
    v14 = [v12 imageResourceForURL:v9 contentsScale:?];
  }

  else
  {
    v15 = [(TUILayout *)self box];
    v16 = [v15 resourceKind];

    if (!v16)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v17 = [(TUILayout *)self controller];
    v10 = [(TUILayout *)self box];
    v11 = [v10 resourceKind];
    v12 = [(TUILayout *)self box];
    v13 = [v12 resourceInstance];
    v18 = [(TUILayout *)self box];
    v19 = [v18 resourceOptions];
    v14 = [v17 intrinsicImageResourceForKind:v11 instance:v13 options:v19];

    v9 = v17;
  }

LABEL_6:
  [v14 loadIntrinsicSize];
  return v14;
}

- (id)_newImageResourcesWithContext:(id)a3
{
  v43 = a3;
  [(TUILayout *)self computedNaturalSize];
  v5 = v4;
  v7 = v6;
  [v43 contentsScale];
  v9 = v8;
  v10 = [(TUILayout *)self controller];
  v11 = [v10 manager];
  v12 = [v11 imageResourceCache];

  v13 = [(TUILayout *)self box];
  v14 = [v13 urlString];

  if (v14)
  {
    v15 = [(TUILayout *)self box];
    v16 = [v15 urlString];
    v17 = [(TUILayout *)self box];
    v18 = [v17 baseURL];
    v19 = [v12 imageResourceForTemplatedURL:v16 baseURL:v18 naturalSize:v5 contentsScale:{v7, v9}];
LABEL_5:

    goto LABEL_6;
  }

  v20 = [(TUILayout *)self box];
  v21 = [v20 resourceKind];

  if (v21)
  {
    v15 = [(TUILayout *)self controller];
    v16 = [(TUILayout *)self box];
    v17 = [v16 resourceKind];
    v18 = [(TUILayout *)self box];
    v22 = [v18 resourceInstance];
    v23 = [(TUILayout *)self box];
    v24 = [v23 resourceOptions];
    v19 = [v15 imageResourceForKind:v17 naturalSize:v22 contentsScale:v24 instance:v5 options:{v7, v9}];

    goto LABEL_5;
  }

  v19 = 0;
LABEL_6:
  v25 = [(TUILayout *)self box];
  v26 = [v25 maskColor];

  if (v26)
  {
    v27 = [(TUILayout *)self box];
    v28 = [v27 maskColor];
    v29 = [v12 imageResource:v19 tintedWithColor:v28];
  }

  else
  {
    v29 = v19;
  }

  if (objc_opt_respondsToSelector())
  {
    v30 = [v29 filterOptions];
  }

  else
  {
    v30 = 0;
  }

  v31 = [(TUILayout *)self box];
  v32 = [v31 filter];

  if (v32)
  {
    [(TUILayout *)self computedNaturalSize];
    v34 = v33;
    v36 = v35;
    [v43 contentsScale];
    v38 = v37;
    v39 = [(TUILayout *)self box];
    v40 = [v39 filter];
    v41 = [v12 imageResource:v29 naturalSize:v40 contentsScale:v30 withFilter:v34 filterOptions:{v36, v38}];

    v29 = v41;
  }

  return v29;
}

- (void)onInvalidateIntrinsicSize
{
  v3.receiver = self;
  v3.super_class = TUIImageBoxLayout;
  [(TUILayout *)&v3 onInvalidateIntrinsicSize];
  self->_intrinsicContentSize = CGSizeZero;
}

- (void)_computeIntrinsicContentSize
{
  height = CGSizeZero.height;
  p_intrinsicContentSize = &self->_intrinsicContentSize;
  if (CGSizeZero.width == self->_intrinsicContentSize.width && height == self->_intrinsicContentSize.height)
  {
    v6 = COERCE_FLOAT([(TUIImageBoxLayout *)self specifiedIntrinsicWidth:CGSizeZero.width]);
    v7 = COERCE_FLOAT([(TUIImageBoxLayout *)self specifiedIntrinsicHeight]);
    p_intrinsicContentSize->width = v6;
    p_intrinsicContentSize->height = v7;
    self->_usingPlaceholderIntrinsicSize = 0;
  }
}

- (double)constrainComputedWidth:(double)a3
{
  v5 = [(TUILayout *)self box];
  [v5 maxAspectRatio];
  v7 = v6;

  [(TUIImageBoxLayout *)self computeIntrinsicAspectRatio];
  if (v8 > v7)
  {
    return v7 * (a3 / v8);
  }

  return a3;
}

- (double)constrainComputedHeight:(double)a3
{
  v5 = [(TUILayout *)self box];
  [v5 maxAspectRatio];
  v7 = v6;

  [(TUIImageBoxLayout *)self computeIntrinsicAspectRatio];
  if (v8 > v7)
  {
    return v8 * a3 / v7;
  }

  return a3;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  [(TUIImageBoxLayout *)self _computeIntrinsicContentSize];
  width = self->_intrinsicContentSize.width;
  if (width <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (width < 3.40282347e38)
    {
      *&v5 = width;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  [(TUIImageBoxLayout *)self _computeIntrinsicContentSize];
  height = self->_intrinsicContentSize.height;
  if (height <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (height < 3.40282347e38)
    {
      *&v5 = height;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidthConsideringSpecified
{
  v4 = [(TUILayout *)self specifiedWidth];
  v6 = v5;
  if ((v5 & 0x6000000000000) == 0x2000000000000)
  {
    [(TUILayout *)self computeDerivedWidth];
    if (v7 <= -3.40282347e38)
    {
      v8 = 4286578687;
    }

    else
    {
      v8 = 2139095039;
      v9 = v7 < 3.40282347e38;
      v10 = v7;
      if (v9)
      {
        v8 = LODWORD(v10);
      }
    }

    v4 = v8 | v4 & 0xFFFFFFFF00000000;
    v6 &= 0xFFE8FFFFFFFFFFFFLL;
  }

  v12 = [(TUILayout *)self validatedIntrinsicWidth];

  return TUILengthCombineSpecifiedAndIntrinsic(v4, v6, v12, v11);
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeightConsideringSpecified
{
  v4 = [(TUILayout *)self specifiedWidth];
  v6 = v5;
  if ((v5 & 0x6000000000000) == 0x2000000000000)
  {
    [(TUILayout *)self computeDerivedHeight];
    if (v7 <= -3.40282347e38)
    {
      v8 = 4286578687;
    }

    else
    {
      v8 = 2139095039;
      v9 = v7 < 3.40282347e38;
      v10 = v7;
      if (v9)
      {
        v8 = LODWORD(v10);
      }
    }

    v4 = v8 | v4 & 0xFFFFFFFF00000000;
    v6 &= 0xFFE8FFFFFFFFFFFFLL;
  }

  v12 = [(TUILayout *)self validatedIntrinsicHeight];

  return TUILengthCombineSpecifiedAndIntrinsic(v4, v6, v12, v11);
}

- (double)computeIntrinsicAspectRatio
{
  [(TUIImageBoxLayout *)self _computeIntrinsicContentSize];
  width = self->_intrinsicContentSize.width;
  result = 1.0;
  if (width > 0.0)
  {
    return self->_intrinsicContentSize.height / width;
  }

  return result;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  [(TUILayout *)self computeHeight];
  v6 = fmax(v5, 1.0);
  v7 = fmax(v4, 1.0);

  [(TUILayout *)self setComputedNaturalSize:v7, v6];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v44 = a4;
  [(TUILayout *)self renderModelSizeWithContext:?];
  if (a3 - 1 >= 2)
  {
    v9 = v6;
    v10 = v7;
    if (self->_usingPlaceholderIntrinsicSize)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(TUIImageBoxLayout *)self _newImageResourcesWithContext:v44];
    }

    v41 = v11;
    v12 = [v11 url];
    v13 = [(TUILayout *)self box];
    v14 = TUIResourceLoadForURL(v12, [v13 load]);

    v15 = [(TUILayout *)self box];
    [v15 cornerRadius];
    v17 = v16;

    v18 = [(TUILayout *)self box];
    v43 = [v18 fallbackColor];

    v19 = [(TUILayout *)self box];
    v42 = [v19 contentsGravity];

    v20 = [(TUILayout *)self box];
    [v20 opacity];
    v22 = v21;

    v23 = [(TUILayout *)self box];
    if ([v23 hflipForRTL])
    {
      v40 = [(TUILayout *)self computedLayoutDirection]== &dword_0 + 2;
    }

    else
    {
      v40 = 0;
    }

    v24 = [(TUILayout *)self box];
    v25 = [v24 crossfadesContents];

    v26 = [TUIImageLayerConfig alloc];
    [v44 contentsScale];
    v28 = v27;
    v29 = [(TUILayout *)self box];
    v30 = [v29 continuousCorners];
    v31 = [(TUILayout *)self box];
    v32 = [v31 shouldRasterize];
    v33 = [(TUILayout *)self box];
    v34 = [v33 blendMode];
    BYTE1(v39) = v32;
    LOBYTE(v39) = v30;
    v35 = [(TUIImageLayerConfig *)v26 initWithContentsScale:v41 resource:v14 load:v43 cornerRadius:v42 fallbackColor:v40 contentsGravity:v25 hflip:v28 crossfadesContents:v17 opacity:v22 continuousCorners:v39 shouldRasterize:v34 blendMode:?];

    v8 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v35 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIRenderModelLayer *)v8 setSize:v9, v10];
    v36 = [(TUILayout *)self box];
    v37 = [v36 identifier];
    [(TUIRenderModelLayer *)v8 setIdentifier:v37];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)computedErasableBounds
{
  [(TUILayout *)self computedBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TUILayout *)self box];
  v12 = [v11 filter];

  if (v12)
  {
    v13 = [(TUILayout *)self controller];
    v14 = [v13 manager];
    v15 = [v14 filterRegistry];
    v16 = [v15 imageFilterWithIdentifier:v12];
  }

  else
  {
    v16 = 0;
  }

  if ([v16 supportsOptions])
  {
    [(TUILayout *)self computedNaturalSize];
    v18 = v17;
    v20 = v19;
    v21 = [(TUILayout *)self controller];
    [v21 contentsScale];
    v23 = v22;

    v24 = [(TUILayout *)self box];
    v25 = [v24 urlString];

    if (v25)
    {
      v26 = [(TUILayout *)self controller];
      v27 = [v26 manager];
      v28 = [v27 imageResourceCache];
      v29 = [(TUILayout *)self box];
      v30 = [v29 urlString];
      v31 = [(TUILayout *)self box];
      v32 = [v31 baseURL];
      v33 = [v28 imageResourceForTemplatedURL:v30 baseURL:v32 naturalSize:v18 contentsScale:{v20, v23}];
    }

    else
    {
      v45 = [(TUILayout *)self box];
      v46 = [v45 resourceKind];

      if (!v46)
      {
        v47 = 0;
        goto LABEL_12;
      }

      v26 = [(TUILayout *)self controller];
      v27 = [(TUILayout *)self box];
      v28 = [v27 resourceKind];
      v29 = [(TUILayout *)self box];
      v30 = [v29 resourceInstance];
      v31 = [(TUILayout *)self box];
      v32 = [v31 resourceOptions];
      v33 = [v26 imageResourceForKind:v28 naturalSize:v30 contentsScale:v32 instance:v18 options:{v20, v23}];
    }

    v47 = v33;

LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      v48 = [v47 filterOptions];
    }

    else
    {
      v48 = 0;
    }

    [v16 insetsForSize:v48 contentsScale:v18 options:{v20, v23}];
    v4 = v4 - v49;
    v6 = v6 - v50;
    v8 = v8 + v49 + v51;
    v10 = v10 + v50 + v52;

    goto LABEL_16;
  }

  if (v16)
  {
    [(TUILayout *)self computedNaturalSize];
    v35 = v34;
    v37 = v36;
    v38 = [(TUILayout *)self controller];
    [v38 contentsScale];
    v40 = v39;

    [v16 insetsForSize:0 contentsScale:v35 options:{v37, v40}];
    v4 = v4 - v41;
    v6 = v6 - v42;
    v8 = v8 + v41 + v43;
    v10 = v10 + v42 + v44;
  }

LABEL_16:

  v53 = v4;
  v54 = v6;
  v55 = v8;
  v56 = v10;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

@end