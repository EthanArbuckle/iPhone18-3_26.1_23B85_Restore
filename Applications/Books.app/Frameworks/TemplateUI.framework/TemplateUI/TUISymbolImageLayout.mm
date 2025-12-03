@interface TUISymbolImageLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)_image;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
- (void)onComputedScaleDidChange;
@end

@implementation TUISymbolImageLayout

- (id)_image
{
  v3 = [(TUILayout *)self box];
  controller = [(TUILayout *)self controller];
  instantiateContext = [controller instantiateContext];
  environment = [instantiateContext environment];
  style = [environment style];

  v8 = style == &dword_0 + 1;
  if (style == &dword_0 + 2)
  {
    v8 = 2;
  }

  v37 = v8;
  controller2 = [(TUILayout *)self controller];
  manager = [controller2 manager];
  imageResourceCache = [manager imageResourceCache];
  name = [v3 name];
  [v3 fontSize];
  v12 = v11;
  [(TUILayout *)self computedScale];
  v14 = v12 * v13;
  weight = [v3 weight];
  scale = [v3 scale];
  renderingMode = [v3 renderingMode];
  colors = [v3 colors];
  controller3 = [(TUILayout *)self controller];
  [controller3 contentsScale];
  v21 = v20;
  computedLayoutDirection = [(TUILayout *)self computedLayoutDirection];
  [v3 insets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v36) = [v3 baseline];
  v31 = [imageResourceCache symbolImageWithName:name compatibleWithFontSize:weight weight:scale scale:renderingMode renderingMode:colors colors:v37 style:v14 contentsScale:v21 layoutDirection:v24 insets:v26 baseline:{v28, v30, computedLayoutDirection, v36}];
  cachedImage = self->_cachedImage;
  self->_cachedImage = v31;

  v33 = self->_cachedImage;
  v34 = v33;

  return v33;
}

- (void)onComputedScaleDidChange
{
  v3.receiver = self;
  v3.super_class = TUISymbolImageLayout;
  [(TUILayout *)&v3 onComputedScaleDidChange];
  [(TUILayout *)self invalidateLayout];
  [(TUILayout *)self invalidateIntrinsicSize];
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  _image = [(TUISymbolImageLayout *)self _image];
  [_image alignmentInsets];
  v5 = v4;
  v7 = v6;
  [_image size];
  v9 = v8 - v5 - v7;
  if (v9 <= -3.40282347e38)
  {
    v12 = 4286578687;
LABEL_6:
    v11 = (v12 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
    goto LABEL_7;
  }

  if (v9 >= 3.40282347e38)
  {
    v12 = 2139095039;
    goto LABEL_6;
  }

  *&v10 = v9;
  v11 = (v10 | 0x7FC0000000000000);
LABEL_7:

  return v11;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  _image = [(TUISymbolImageLayout *)self _image];
  [_image alignmentInsets];
  v5 = v4;
  v7 = v6;
  [_image size];
  v9 = v8 - v5 - v7;
  if (v9 <= -3.40282347e38)
  {
    v12 = 4286578687;
LABEL_6:
    v11 = (v12 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
    goto LABEL_7;
  }

  if (v9 >= 3.40282347e38)
  {
    v12 = 2139095039;
    goto LABEL_6;
  }

  *&v10 = v9;
  v11 = (v10 | 0x7FC0000000000000);
LABEL_7:

  return v11;
}

- (void)computeLayout
{
  _image = [(TUISymbolImageLayout *)self _image];
  [_image alignmentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [_image size];
  v12 = v11 - v6 - v10;
  [_image size];
  v14 = v13 - v4 - v8;
  [(TUILayout *)self setComputedNaturalSize:v12, v14];
  self->_heightAbovePivot = v14;
  if ([_image hasBaseline])
  {
    [_image baselineOffsetFromBottom];
    self->_heightAbovePivot = self->_heightAbovePivot - (v15 - v8);
  }
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  if (kind < 3)
  {
    v13 = 0;
  }

  else
  {
    v9 = v7;
    v10 = v8;
    v11 = [(TUILayout *)self box];
    if ([v11 hflipForRTL])
    {
      v12 = [(TUILayout *)self computedLayoutDirection]== &dword_0 + 2;
    }

    else
    {
      v12 = 0;
    }

    v14 = [_TUISymbolImageLayerConfig alloc];
    [contextCopy contentsScale];
    v16 = v15;
    _image = [(TUISymbolImageLayout *)self _image];
    v18 = [(TUILayout *)self box];
    colors = [v18 colors];
    firstObject = [colors firstObject];
    v21 = [(TUILayout *)self box];
    blendMode = [v21 blendMode];
    v23 = [(_TUISymbolImageLayerConfig *)v14 initWithContentsScale:_image image:firstObject color:v12 hflip:blendMode blendMode:v16];

    v13 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v23 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIRenderModelLayer *)v13 setSize:v9, v10];
    v24 = [(TUILayout *)self box];
    identifier = [v24 identifier];
    [(TUIRenderModelLayer *)v13 setIdentifier:identifier];
  }

  return v13;
}

@end