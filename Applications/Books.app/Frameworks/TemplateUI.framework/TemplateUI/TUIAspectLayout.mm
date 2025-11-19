@interface TUIAspectLayout
- (double)computeIntrinsicAspectRatio;
- (void)computeLayout;
@end

@implementation TUIAspectLayout

- (double)computeIntrinsicAspectRatio
{
  v2 = [(TUILayout *)self box];
  [v2 aspectRatio];
  v4 = v3;

  return v4;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  [(TUILayout *)self computeHeight];
  v6 = v5;
  v7 = [(TUILayout *)self children];
  v24 = [v7 firstObject];

  [v24 setContainingWidth:v4];
  [v24 setContainingHeight:v6];
  [v24 computedWidth];
  if ((v8 & 0x8000000000000) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = NAN;
  }

  [v24 setFlexedWidth:v9];
  [v24 computedHeight];
  if ((v10 & 0x8000000000000) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = NAN;
  }

  [v24 setFlexedHeight:v11];
  [v24 validateLayout];
  [v24 computedTransformedSize];
  v13 = v12;
  v15 = v14;
  x = CGPointZero.x;
  v17 = [(TUILayout *)self computedLayoutDirection];
  v18 = [v24 box];
  v19 = [v18 halign];

  if (v19 <= 1)
  {
    if (v19)
    {
      v20 = 0.0;
      if (v17 == 2)
      {
        v20 = 1.0;
      }

      if (v19 == &dword_0 + 1)
      {
        x = v20;
      }

      goto LABEL_20;
    }

LABEL_16:
    x = 0.5;
    goto LABEL_20;
  }

  if (v19 == &dword_0 + 3)
  {
    v20 = 0.0;
    if (v17 == 2)
    {
      x = 0.0;
    }

    else
    {
      x = 1.0;
    }

    goto LABEL_20;
  }

  if (v19 == &dword_0 + 2)
  {
    goto LABEL_16;
  }

LABEL_20:
  v21 = [v24 box];
  v22 = [v21 valign];

  if (v22 > 4)
  {
    y = CGPointZero.y;
  }

  else
  {
    y = dbl_24CF20[v22];
  }

  [v24 setComputedOrigin:{(v4 - v13) * x, (v6 - v15) * y}];
  [(TUILayout *)self setComputedNaturalSize:v4, v6];
}

@end