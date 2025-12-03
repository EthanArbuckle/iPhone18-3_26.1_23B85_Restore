@interface TUISmartGridContentLayout
- (BOOL)layoutScrollContentShouldClipVertically;
- (CGSize)layoutScrollContentScrollSizeWithProposedSize:(CGSize)size;
- (UIEdgeInsets)layoutAdditionalSafeAreaInsets;
- (UIEdgeInsets)layoutScrollContentIntrinsicInsets;
- (UIEdgeInsets)layoutScrollGradientFraction;
- (UIEdgeInsets)layoutScrollGradientInsets;
- (double)layoutScrollPageGap;
- (id)hoverIdentifierWithName:(id)name forDescdendent:(id)descdendent;
- (id)scrollPolicy;
- (void)appendAnchorsToSet:(id)set inRoot:(id)root;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)appendHoverRegions:(id)regions relativeToLayout:(id)layout;
- (void)computeLayout;
@end

@implementation TUISmartGridContentLayout

- (id)hoverIdentifierWithName:(id)name forDescdendent:(id)descdendent
{
  nameCopy = name;
  descdendentCopy = descdendent;
  if ([nameCopy isEqualToString:@"cell"])
  {
    model = [descdendentCopy model];
    parentModel = [model parentModel];

    v10 = objc_opt_class();
    model2 = [(TUILayout *)self model];
    if (parentModel)
    {
      do
      {
        if (objc_opt_class() == v10)
        {
          break;
        }

        if (parentModel == model2)
        {
          break;
        }

        v9ParentModel = [parentModel parentModel];

        parentModel = v9ParentModel;
      }

      while (v9ParentModel);
    }

    v13 = 0;
    if (parentModel != model2 && parentModel)
    {
      v14 = parentModel;
      v15 = [TUIHoverIdentifier alloc];
      identifier = [v14 identifier];

      v13 = [(TUIHoverIdentifier *)v15 initWithName:nameCopy identifier:identifier];
    }
  }

  else
  {
    parentModel = [(TUILayout *)self layoutAncestor];
    v13 = [parentModel hoverIdentifierWithName:nameCopy];
  }

  return v13;
}

- (void)appendHoverRegions:(id)regions relativeToLayout:(id)layout
{
  layoutCopy = layout;
  regionsCopy = regions;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v8LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v8LayoutAncestor layoutManager];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  [(TUILayout *)self computedTransformInAncestorLayout:layoutCopy];

  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  [layoutManager appendHoverRegions:regionsCopy transform:v11];
}

- (void)appendAnchorsToSet:(id)set inRoot:(id)root
{
  rootCopy = root;
  setCopy = set;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v8LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v8LayoutAncestor layoutManager];
  [layoutManager appendAnchorsToSet:setCopy forLayout:self inRoot:rootCopy];
}

- (void)computeLayout
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v3LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v3LayoutAncestor layoutManager];
  [layoutManager layoutContent:self];
  layoutAncestor2 = [(TUILayout *)self layoutAncestor];
  [layoutManager positionContainerLayout:layoutAncestor2];

  [layoutManager contentLayoutSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  contextCopy = context;
  modelsCopy = models;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v12LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v12LayoutAncestor layoutManager];
  if (objc_opt_respondsToSelector())
  {
    v15 = *&transform->c;
    *&v31.a = *&transform->a;
    *&v31.c = v15;
    *&v31.tx = *&transform->tx;
    [layoutManager appendChildRenderModelCompatibleWithKind:kind context:contextCopy transform:&v31 toModels:modelsCopy];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = TUISmartGridContentLayout;
    v16 = *&transform->c;
    *&v31.a = *&transform->a;
    *&v31.c = v16;
    *&v31.tx = *&transform->tx;
    [(TUILayout *)&v30 appendChildRenderModelCompatibleWithKind:kind context:contextCopy transform:&v31 toModels:modelsCopy];
  }

  y = CGPointZero.y;
  v18 = transform->tx + y * transform->c + transform->a * CGPointZero.x;
  v19 = transform->ty + y * transform->d + transform->b * CGPointZero.x;
  [(TUILayout *)self computedNaturalSize];
  v27 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v21 * 0.5), *&transform->a, v20 * 0.5));
  [contextCopy contentsScale];
  v23 = TUIPointRoundedForScale(v27.f64[0], v27.f64[1], v22);
  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeTranslation(&t2, -(v18 + v23 - v27.f64[0]), -(v19 + v24 - v27.f64[1]));
  v25 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v25;
  *&t1.tx = *&transform->tx;
  CGAffineTransformConcat(&v31, &t1, &t2);
  v26 = [v12LayoutAncestor box];
  t2 = v31;
  [layoutManager appendAdornmentRenderModelsCompatibleWithKind:kind transform:&t2 context:contextCopy box:v26 toModels:modelsCopy];
}

- (CGSize)layoutScrollContentScrollSizeWithProposedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v5LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v5LayoutAncestor layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [layoutManager scrollLayoutSizeWithSize:{width, height}];
    width = v8;
    height = v9;
  }

  else
  {
    v10 = [v5LayoutAncestor box];
    [v10 height];
    if ((v11 & 0x6000000000000) == 0x2000000000000)
    {
      [layoutManager contentLayoutSize];
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
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v2LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v2LayoutAncestor layoutManager];
  if (objc_opt_respondsToSelector())
  {
    scrollPolicy = [layoutManager scrollPolicy];
  }

  else
  {
    scrollPolicy = 0;
  }

  return scrollPolicy;
}

- (double)layoutScrollPageGap
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v2LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v2LayoutAncestor layoutManager];
  [layoutManager computedColumnSpacing];
  v6 = v5;

  return v6;
}

- (UIEdgeInsets)layoutAdditionalSafeAreaInsets
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v3LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v3LayoutAncestor layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [layoutManager additionalSafeAreaInsetsForLayout:self];
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
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v2LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v2LayoutAncestor layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [layoutManager scrollContentIntrinsicInsets];
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
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v2LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v2LayoutAncestor layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [layoutManager scrollGradientInsets];
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
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v2LayoutAncestor = [layoutAncestor layoutAncestor];

  layoutManager = [v2LayoutAncestor layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [layoutManager scrollGradientFraction];
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
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v2LayoutAncestor = [layoutAncestor layoutAncestor];

  v4 = [v2LayoutAncestor box];
  [v4 height];
  v6 = (v5 & 0x6000000000000) != 0x2000000000000;

  return v6;
}

@end