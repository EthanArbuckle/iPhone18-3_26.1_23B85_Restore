@interface TUIImageBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)specifiedIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)specifiedIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeightConsideringSpecified;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidthConsideringSpecified;
- (CGRect)computedErasableBounds;
- (TUIImageBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (double)computeIntrinsicAspectRatio;
- (double)constrainComputedHeight:(double)height;
- (double)constrainComputedWidth:(double)width;
- (id)_newImageResourcesWithContext:(id)context;
- (id)_newIntrinsicImageResource;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)_computeIntrinsicContentSize;
- (void)computeLayout;
- (void)dealloc;
- (void)imageResourceDidChangeIntrinsicSize:(id)size;
- (void)onInvalidateIntrinsicSize;
@end

@implementation TUIImageBoxLayout

- (TUIImageBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v6.receiver = self;
  v6.super_class = TUIImageBoxLayout;
  result = [(TUILayout *)&v6 initWithModel:model parent:parent controller:controller];
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
  intrinsicWidth = [v3 intrinsicWidth];

  return intrinsicWidth;
}

- ($E297CC25127479E857BE23A4F8632EA4)specifiedIntrinsicHeight
{
  v3 = [(TUILayout *)self box];
  intrinsicHeight = [v3 intrinsicHeight];

  return intrinsicHeight;
}

- (void)imageResourceDidChangeIntrinsicSize:(id)size
{
  v4 = +[TUITransaction currentOrImplicitTransaction];
  controller = [(TUILayout *)self controller];
  transactionCoordinator = [controller transactionCoordinator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_178BE4;
  v7[3] = &unk_263650;
  v7[4] = self;
  [transactionCoordinator scheduleLayoutUpdateWithTransaction:v4 block:v7];
}

- (id)_newIntrinsicImageResource
{
  v3 = [(TUILayout *)self box];
  urlString = [v3 urlString];

  if (urlString)
  {
    v5 = [(TUILayout *)self box];
    urlString2 = [v5 urlString];
    v7 = [(TUILayout *)self box];
    baseURL = [v7 baseURL];
    v9 = [NSURL URLWithString:urlString2 relativeToURL:baseURL];

    controller = [(TUILayout *)self controller];
    manager = [controller manager];
    imageResourceCache = [manager imageResourceCache];
    controller2 = [(TUILayout *)self controller];
    [controller2 contentsScale];
    v14 = [imageResourceCache imageResourceForURL:v9 contentsScale:?];
  }

  else
  {
    v15 = [(TUILayout *)self box];
    resourceKind = [v15 resourceKind];

    if (!resourceKind)
    {
      v14 = 0;
      goto LABEL_6;
    }

    controller3 = [(TUILayout *)self controller];
    controller = [(TUILayout *)self box];
    manager = [controller resourceKind];
    imageResourceCache = [(TUILayout *)self box];
    controller2 = [imageResourceCache resourceInstance];
    v18 = [(TUILayout *)self box];
    resourceOptions = [v18 resourceOptions];
    v14 = [controller3 intrinsicImageResourceForKind:manager instance:controller2 options:resourceOptions];

    v9 = controller3;
  }

LABEL_6:
  [v14 loadIntrinsicSize];
  return v14;
}

- (id)_newImageResourcesWithContext:(id)context
{
  contextCopy = context;
  [(TUILayout *)self computedNaturalSize];
  v5 = v4;
  v7 = v6;
  [contextCopy contentsScale];
  v9 = v8;
  controller = [(TUILayout *)self controller];
  manager = [controller manager];
  imageResourceCache = [manager imageResourceCache];

  v13 = [(TUILayout *)self box];
  urlString = [v13 urlString];

  if (urlString)
  {
    controller2 = [(TUILayout *)self box];
    urlString2 = [controller2 urlString];
    resourceKind2 = [(TUILayout *)self box];
    baseURL = [resourceKind2 baseURL];
    v19 = [imageResourceCache imageResourceForTemplatedURL:urlString2 baseURL:baseURL naturalSize:v5 contentsScale:{v7, v9}];
LABEL_5:

    goto LABEL_6;
  }

  v20 = [(TUILayout *)self box];
  resourceKind = [v20 resourceKind];

  if (resourceKind)
  {
    controller2 = [(TUILayout *)self controller];
    urlString2 = [(TUILayout *)self box];
    resourceKind2 = [urlString2 resourceKind];
    baseURL = [(TUILayout *)self box];
    resourceInstance = [baseURL resourceInstance];
    v23 = [(TUILayout *)self box];
    resourceOptions = [v23 resourceOptions];
    v19 = [controller2 imageResourceForKind:resourceKind2 naturalSize:resourceInstance contentsScale:resourceOptions instance:v5 options:{v7, v9}];

    goto LABEL_5;
  }

  v19 = 0;
LABEL_6:
  v25 = [(TUILayout *)self box];
  maskColor = [v25 maskColor];

  if (maskColor)
  {
    v27 = [(TUILayout *)self box];
    maskColor2 = [v27 maskColor];
    v29 = [imageResourceCache imageResource:v19 tintedWithColor:maskColor2];
  }

  else
  {
    v29 = v19;
  }

  if (objc_opt_respondsToSelector())
  {
    filterOptions = [v29 filterOptions];
  }

  else
  {
    filterOptions = 0;
  }

  v31 = [(TUILayout *)self box];
  filter = [v31 filter];

  if (filter)
  {
    [(TUILayout *)self computedNaturalSize];
    v34 = v33;
    v36 = v35;
    [contextCopy contentsScale];
    v38 = v37;
    v39 = [(TUILayout *)self box];
    filter2 = [v39 filter];
    v41 = [imageResourceCache imageResource:v29 naturalSize:filter2 contentsScale:filterOptions withFilter:v34 filterOptions:{v36, v38}];

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

- (double)constrainComputedWidth:(double)width
{
  v5 = [(TUILayout *)self box];
  [v5 maxAspectRatio];
  v7 = v6;

  [(TUIImageBoxLayout *)self computeIntrinsicAspectRatio];
  if (v8 > v7)
  {
    return v7 * (width / v8);
  }

  return width;
}

- (double)constrainComputedHeight:(double)height
{
  v5 = [(TUILayout *)self box];
  [v5 maxAspectRatio];
  v7 = v6;

  [(TUIImageBoxLayout *)self computeIntrinsicAspectRatio];
  if (v8 > v7)
  {
    return v8 * height / v7;
  }

  return height;
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
  specifiedWidth = [(TUILayout *)self specifiedWidth];
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

    specifiedWidth = v8 | specifiedWidth & 0xFFFFFFFF00000000;
    v6 &= 0xFFE8FFFFFFFFFFFFLL;
  }

  validatedIntrinsicWidth = [(TUILayout *)self validatedIntrinsicWidth];

  return TUILengthCombineSpecifiedAndIntrinsic(specifiedWidth, v6, validatedIntrinsicWidth, v11);
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeightConsideringSpecified
{
  specifiedWidth = [(TUILayout *)self specifiedWidth];
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

    specifiedWidth = v8 | specifiedWidth & 0xFFFFFFFF00000000;
    v6 &= 0xFFE8FFFFFFFFFFFFLL;
  }

  validatedIntrinsicHeight = [(TUILayout *)self validatedIntrinsicHeight];

  return TUILengthCombineSpecifiedAndIntrinsic(specifiedWidth, v6, validatedIntrinsicHeight, v11);
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

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  [(TUILayout *)self renderModelSizeWithContext:?];
  if (kind - 1 >= 2)
  {
    v9 = v6;
    v10 = v7;
    if (self->_usingPlaceholderIntrinsicSize)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(TUIImageBoxLayout *)self _newImageResourcesWithContext:contextCopy];
    }

    v41 = v11;
    v12 = [v11 url];
    v13 = [(TUILayout *)self box];
    v14 = TUIResourceLoadForURL(v12, [v13 load]);

    v15 = [(TUILayout *)self box];
    [v15 cornerRadius];
    v17 = v16;

    v18 = [(TUILayout *)self box];
    fallbackColor = [v18 fallbackColor];

    v19 = [(TUILayout *)self box];
    contentsGravity = [v19 contentsGravity];

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
    crossfadesContents = [v24 crossfadesContents];

    v26 = [TUIImageLayerConfig alloc];
    [contextCopy contentsScale];
    v28 = v27;
    v29 = [(TUILayout *)self box];
    continuousCorners = [v29 continuousCorners];
    v31 = [(TUILayout *)self box];
    shouldRasterize = [v31 shouldRasterize];
    v33 = [(TUILayout *)self box];
    blendMode = [v33 blendMode];
    BYTE1(v39) = shouldRasterize;
    LOBYTE(v39) = continuousCorners;
    v35 = [(TUIImageLayerConfig *)v26 initWithContentsScale:v41 resource:v14 load:fallbackColor cornerRadius:contentsGravity fallbackColor:v40 contentsGravity:crossfadesContents hflip:v28 crossfadesContents:v17 opacity:v22 continuousCorners:v39 shouldRasterize:blendMode blendMode:?];

    v8 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v35 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIRenderModelLayer *)v8 setSize:v9, v10];
    v36 = [(TUILayout *)self box];
    identifier = [v36 identifier];
    [(TUIRenderModelLayer *)v8 setIdentifier:identifier];
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
  filter = [v11 filter];

  if (filter)
  {
    controller = [(TUILayout *)self controller];
    manager = [controller manager];
    filterRegistry = [manager filterRegistry];
    v16 = [filterRegistry imageFilterWithIdentifier:filter];
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
    controller2 = [(TUILayout *)self controller];
    [controller2 contentsScale];
    v23 = v22;

    v24 = [(TUILayout *)self box];
    urlString = [v24 urlString];

    if (urlString)
    {
      controller3 = [(TUILayout *)self controller];
      manager2 = [controller3 manager];
      imageResourceCache = [manager2 imageResourceCache];
      v29 = [(TUILayout *)self box];
      urlString2 = [v29 urlString];
      v31 = [(TUILayout *)self box];
      baseURL = [v31 baseURL];
      v33 = [imageResourceCache imageResourceForTemplatedURL:urlString2 baseURL:baseURL naturalSize:v18 contentsScale:{v20, v23}];
    }

    else
    {
      v45 = [(TUILayout *)self box];
      resourceKind = [v45 resourceKind];

      if (!resourceKind)
      {
        v47 = 0;
        goto LABEL_12;
      }

      controller3 = [(TUILayout *)self controller];
      manager2 = [(TUILayout *)self box];
      imageResourceCache = [manager2 resourceKind];
      v29 = [(TUILayout *)self box];
      urlString2 = [v29 resourceInstance];
      v31 = [(TUILayout *)self box];
      baseURL = [v31 resourceOptions];
      v33 = [controller3 imageResourceForKind:imageResourceCache naturalSize:urlString2 contentsScale:baseURL instance:v18 options:{v20, v23}];
    }

    v47 = v33;

LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      filterOptions = [v47 filterOptions];
    }

    else
    {
      filterOptions = 0;
    }

    [v16 insetsForSize:filterOptions contentsScale:v18 options:{v20, v23}];
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
    controller4 = [(TUILayout *)self controller];
    [controller4 contentsScale];
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