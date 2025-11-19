@interface TUISymbolImageLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)_image;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)computeLayout;
- (void)onComputedScaleDidChange;
@end

@implementation TUISymbolImageLayout

- (id)_image
{
  v3 = [(TUILayout *)self box];
  v4 = [(TUILayout *)self controller];
  v5 = [v4 instantiateContext];
  v6 = [v5 environment];
  v7 = [v6 style];

  v8 = v7 == &dword_0 + 1;
  if (v7 == &dword_0 + 2)
  {
    v8 = 2;
  }

  v37 = v8;
  v39 = [(TUILayout *)self controller];
  v38 = [v39 manager];
  v9 = [v38 imageResourceCache];
  v10 = [v3 name];
  [v3 fontSize];
  v12 = v11;
  [(TUILayout *)self computedScale];
  v14 = v12 * v13;
  v15 = [v3 weight];
  v16 = [v3 scale];
  v17 = [v3 renderingMode];
  v18 = [v3 colors];
  v19 = [(TUILayout *)self controller];
  [v19 contentsScale];
  v21 = v20;
  v22 = [(TUILayout *)self computedLayoutDirection];
  [v3 insets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v36) = [v3 baseline];
  v31 = [v9 symbolImageWithName:v10 compatibleWithFontSize:v15 weight:v16 scale:v17 renderingMode:v18 colors:v37 style:v14 contentsScale:v21 layoutDirection:v24 insets:v26 baseline:{v28, v30, v22, v36}];
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
  v3 = [(TUISymbolImageLayout *)self _image];
  [v3 alignmentInsets];
  v5 = v4;
  v7 = v6;
  [v3 size];
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
  v3 = [(TUISymbolImageLayout *)self _image];
  [v3 alignmentInsets];
  v5 = v4;
  v7 = v6;
  [v3 size];
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
  v16 = [(TUISymbolImageLayout *)self _image];
  [v16 alignmentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v16 size];
  v12 = v11 - v6 - v10;
  [v16 size];
  v14 = v13 - v4 - v8;
  [(TUILayout *)self setComputedNaturalSize:v12, v14];
  self->_heightAbovePivot = v14;
  if ([v16 hasBaseline])
  {
    [v16 baselineOffsetFromBottom];
    self->_heightAbovePivot = self->_heightAbovePivot - (v15 - v8);
  }
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  [(TUILayout *)self renderModelSizeWithContext:v6];
  if (a3 < 3)
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
    [v6 contentsScale];
    v16 = v15;
    v17 = [(TUISymbolImageLayout *)self _image];
    v18 = [(TUILayout *)self box];
    v19 = [v18 colors];
    v20 = [v19 firstObject];
    v21 = [(TUILayout *)self box];
    v22 = [v21 blendMode];
    v23 = [(_TUISymbolImageLayerConfig *)v14 initWithContentsScale:v17 image:v20 color:v12 hflip:v22 blendMode:v16];

    v13 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v23 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIRenderModelLayer *)v13 setSize:v9, v10];
    v24 = [(TUILayout *)self box];
    v25 = [v24 identifier];
    [(TUIRenderModelLayer *)v13 setIdentifier:v25];
  }

  return v13;
}

@end