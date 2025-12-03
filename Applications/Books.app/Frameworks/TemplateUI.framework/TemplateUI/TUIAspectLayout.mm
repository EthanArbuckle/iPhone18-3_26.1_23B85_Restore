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
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  [firstObject setContainingWidth:v4];
  [firstObject setContainingHeight:v6];
  [firstObject computedWidth];
  if ((v8 & 0x8000000000000) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = NAN;
  }

  [firstObject setFlexedWidth:v9];
  [firstObject computedHeight];
  if ((v10 & 0x8000000000000) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = NAN;
  }

  [firstObject setFlexedHeight:v11];
  [firstObject validateLayout];
  [firstObject computedTransformedSize];
  v13 = v12;
  v15 = v14;
  x = CGPointZero.x;
  computedLayoutDirection = [(TUILayout *)self computedLayoutDirection];
  v18 = [firstObject box];
  halign = [v18 halign];

  if (halign <= 1)
  {
    if (halign)
    {
      v20 = 0.0;
      if (computedLayoutDirection == 2)
      {
        v20 = 1.0;
      }

      if (halign == &dword_0 + 1)
      {
        x = v20;
      }

      goto LABEL_20;
    }

LABEL_16:
    x = 0.5;
    goto LABEL_20;
  }

  if (halign == &dword_0 + 3)
  {
    v20 = 0.0;
    if (computedLayoutDirection == 2)
    {
      x = 0.0;
    }

    else
    {
      x = 1.0;
    }

    goto LABEL_20;
  }

  if (halign == &dword_0 + 2)
  {
    goto LABEL_16;
  }

LABEL_20:
  v21 = [firstObject box];
  valign = [v21 valign];

  if (valign > 4)
  {
    y = CGPointZero.y;
  }

  else
  {
    y = dbl_24CF20[valign];
  }

  [firstObject setComputedOrigin:{(v4 - v13) * x, (v6 - v15) * y}];
  [(TUILayout *)self setComputedNaturalSize:v4, v6];
}

@end