@interface TUISmartGridContentLayout
- (BOOL)layoutScrollContentShouldClipVertically;
- (CGSize)layoutScrollContentScrollSizeWithProposedSize:(CGSize)a3;
- (UIEdgeInsets)layoutAdditionalSafeAreaInsets;
- (UIEdgeInsets)layoutScrollContentIntrinsicInsets;
- (UIEdgeInsets)layoutScrollGradientFraction;
- (UIEdgeInsets)layoutScrollGradientInsets;
- (double)layoutScrollPageGap;
- (id)hoverIdentifierWithName:(id)a3 forDescdendent:(id)a4;
- (id)scrollPolicy;
- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)appendHoverRegions:(id)a3 relativeToLayout:(id)a4;
- (void)computeLayout;
@end

@implementation TUISmartGridContentLayout

- (id)hoverIdentifierWithName:(id)a3 forDescdendent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"cell"])
  {
    v8 = [v7 model];
    v9 = [v8 parentModel];

    v10 = objc_opt_class();
    v11 = [(TUILayout *)self model];
    if (v9)
    {
      do
      {
        if (objc_opt_class() == v10)
        {
          break;
        }

        if (v9 == v11)
        {
          break;
        }

        v12 = [v9 parentModel];

        v9 = v12;
      }

      while (v12);
    }

    v13 = 0;
    if (v9 != v11 && v9)
    {
      v14 = v9;
      v15 = [TUIHoverIdentifier alloc];
      v16 = [v14 identifier];

      v13 = [(TUIHoverIdentifier *)v15 initWithName:v6 identifier:v16];
    }
  }

  else
  {
    v9 = [(TUILayout *)self layoutAncestor];
    v13 = [v9 hoverIdentifierWithName:v6];
  }

  return v13;
}

- (void)appendHoverRegions:(id)a3 relativeToLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUILayout *)self layoutAncestor];
  v9 = [v8 layoutAncestor];

  v10 = [v9 layoutManager];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  [(TUILayout *)self computedTransformInAncestorLayout:v6];

  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  [v10 appendHoverRegions:v7 transform:v11];
}

- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUILayout *)self layoutAncestor];
  v10 = [v8 layoutAncestor];

  v9 = [v10 layoutManager];
  [v9 appendAnchorsToSet:v7 forLayout:self inRoot:v6];
}

- (void)computeLayout
{
  v3 = [(TUILayout *)self layoutAncestor];
  v6 = [v3 layoutAncestor];

  v4 = [v6 layoutManager];
  [v4 layoutContent:self];
  v5 = [(TUILayout *)self layoutAncestor];
  [v4 positionContainerLayout:v5];

  [v4 contentLayoutSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(TUILayout *)self layoutAncestor];
  v13 = [v12 layoutAncestor];

  v14 = [v13 layoutManager];
  if (objc_opt_respondsToSelector())
  {
    v15 = *&a5->c;
    *&v31.a = *&a5->a;
    *&v31.c = v15;
    *&v31.tx = *&a5->tx;
    [v14 appendChildRenderModelCompatibleWithKind:a3 context:v10 transform:&v31 toModels:v11];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = TUISmartGridContentLayout;
    v16 = *&a5->c;
    *&v31.a = *&a5->a;
    *&v31.c = v16;
    *&v31.tx = *&a5->tx;
    [(TUILayout *)&v30 appendChildRenderModelCompatibleWithKind:a3 context:v10 transform:&v31 toModels:v11];
  }

  y = CGPointZero.y;
  v18 = a5->tx + y * a5->c + a5->a * CGPointZero.x;
  v19 = a5->ty + y * a5->d + a5->b * CGPointZero.x;
  [(TUILayout *)self computedNaturalSize];
  v27 = vaddq_f64(*&a5->tx, vmlaq_n_f64(vmulq_n_f64(*&a5->c, v21 * 0.5), *&a5->a, v20 * 0.5));
  [v10 contentsScale];
  v23 = TUIPointRoundedForScale(v27.f64[0], v27.f64[1], v22);
  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeTranslation(&t2, -(v18 + v23 - v27.f64[0]), -(v19 + v24 - v27.f64[1]));
  v25 = *&a5->c;
  *&t1.a = *&a5->a;
  *&t1.c = v25;
  *&t1.tx = *&a5->tx;
  CGAffineTransformConcat(&v31, &t1, &t2);
  v26 = [v13 box];
  t2 = v31;
  [v14 appendAdornmentRenderModelsCompatibleWithKind:a3 transform:&t2 context:v10 box:v26 toModels:v11];
}

- (CGSize)layoutScrollContentScrollSizeWithProposedSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TUILayout *)self layoutAncestor];
  v6 = [v5 layoutAncestor];

  v7 = [v6 layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [v7 scrollLayoutSizeWithSize:{width, height}];
    width = v8;
    height = v9;
  }

  else
  {
    v10 = [v6 box];
    [v10 height];
    if ((v11 & 0x6000000000000) == 0x2000000000000)
    {
      [v7 contentLayoutSize];
      height = v12;
    }
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)scrollPolicy
{
  v2 = [(TUILayout *)self layoutAncestor];
  v3 = [v2 layoutAncestor];

  v4 = [v3 layoutManager];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 scrollPolicy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)layoutScrollPageGap
{
  v2 = [(TUILayout *)self layoutAncestor];
  v3 = [v2 layoutAncestor];

  v4 = [v3 layoutManager];
  [v4 computedColumnSpacing];
  v6 = v5;

  return v6;
}

- (UIEdgeInsets)layoutAdditionalSafeAreaInsets
{
  v3 = [(TUILayout *)self layoutAncestor];
  v4 = [v3 layoutAncestor];

  v5 = [v4 layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [v5 additionalSafeAreaInsetsForLayout:self];
    top = v6;
    left = v8;
    bottom = v10;
    right = v12;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v14 = top;
  v15 = left;
  v16 = bottom;
  v17 = right;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)layoutScrollContentIntrinsicInsets
{
  v2 = [(TUILayout *)self layoutAncestor];
  v3 = [v2 layoutAncestor];

  v4 = [v3 layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [v4 scrollContentIntrinsicInsets];
    top = v5;
    left = v7;
    bottom = v9;
    right = v11;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v13 = top;
  v14 = left;
  v15 = bottom;
  v16 = right;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)layoutScrollGradientInsets
{
  v2 = [(TUILayout *)self layoutAncestor];
  v3 = [v2 layoutAncestor];

  v4 = [v3 layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [v4 scrollGradientInsets];
    top = v5;
    left = v7;
    bottom = v9;
    right = v11;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v13 = top;
  v14 = left;
  v15 = bottom;
  v16 = right;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)layoutScrollGradientFraction
{
  v2 = [(TUILayout *)self layoutAncestor];
  v3 = [v2 layoutAncestor];

  v4 = [v3 layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [v4 scrollGradientFraction];
    top = v5;
    left = v7;
    bottom = v9;
    right = v11;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v13 = top;
  v14 = left;
  v15 = bottom;
  v16 = right;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (BOOL)layoutScrollContentShouldClipVertically
{
  v2 = [(TUILayout *)self layoutAncestor];
  v3 = [v2 layoutAncestor];

  v4 = [v3 box];
  [v4 height];
  v6 = (v5 & 0x6000000000000) != 0x2000000000000;

  return v6;
}

@end