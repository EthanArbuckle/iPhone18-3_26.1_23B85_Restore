@interface TUIShelfLayout
- (void)computeLayout;
- (void)invalidateLayout;
- (void)onChildrenUpdated;
- (void)onViewSafeAreaInsetsDidChange;
@end

@implementation TUIShelfLayout

- (void)onChildrenUpdated
{
  v14.receiver = self;
  v14.super_class = TUIShelfLayout;
  [(TUILayout *)&v14 onChildrenUpdated];
  v3 = [(TUILayout *)self box];
  controller = [(TUILayout *)self controller];
  content = [v3 content];
  v6 = [controller layoutForModel:content];
  content = self->_content;
  self->_content = v6;

  contentBackground = [v3 contentBackground];
  v9 = [controller layoutForModel:contentBackground];
  contentBackground = self->_contentBackground;
  self->_contentBackground = v9;

  background = [v3 background];
  v12 = [controller layoutForModel:background];
  background = self->_background;
  self->_background = v12;
}

- (void)onViewSafeAreaInsetsDidChange
{
  if (self->_respectsViewSafeArea)
  {
    [(TUIShelfLayout *)self invalidateLayout];
  }

  v3.receiver = self;
  v3.super_class = TUIShelfLayout;
  [(TUILayout *)&v3 onViewSafeAreaInsetsDidChange];
}

- (void)invalidateLayout
{
  v2.receiver = self;
  v2.super_class = TUIShelfLayout;
  [(TUILayout *)&v2 invalidateLayout];
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  v5 = [(TUILayout *)self box];
  contentWidth = [v5 contentWidth];
  v8 = v7;

  controller = [(TUILayout *)self controller];
  instantiateContext = [controller instantiateContext];
  environment = [instantiateContext environment];
  [environment viewSize];
  v13 = v12;

  controller2 = [(TUILayout *)self controller];
  instantiateContext2 = [controller2 instantiateContext];
  environment2 = [instantiateContext2 environment];
  [environment2 viewSafeAreaInsets];
  v18 = v17;
  v20 = v19;

  v21 = [(TUILayout *)self box];
  respectsSafeArea = [v21 respectsSafeArea];
  v23 = 0;
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  if (respectsSafeArea && v4 == v13)
  {
    v23 = v18 != left;
    if (UIEdgeInsetsZero.top != 0.0)
    {
      v23 = 1;
    }

    if (v20 != right)
    {
      v23 = 1;
    }

    if (UIEdgeInsetsZero.bottom != 0.0)
    {
      v23 = 1;
    }
  }

  self->_respectsViewSafeArea = v23;

  if (self->_respectsViewSafeArea)
  {
    v26 = v20;
  }

  else
  {
    v26 = right;
  }

  if (!self->_respectsViewSafeArea)
  {
    v18 = left;
  }

  v27 = v4 - v18 - v26;
  if ((v8 & 0x8000000000000) != 0)
  {
    v28 = fmin(*&v8, fmax(*(&contentWidth + 1), v27));
  }

  else
  {
    v28 = *&contentWidth;
  }

  [(TUILayout *)self->_content setContainingWidth:v28];
  [(TUILayout *)self containingHeight];
  [(TUILayout *)self->_content setContainingHeight:?];
  [(TUILayout *)self->_content validateLayout];
  [(TUILayout *)self->_content computedTransformedSize];
  v30 = v29;
  v32 = v31;
  v33 = v18 + (v27 - v29) * 0.5;
  [(TUILayout *)self->_content setComputedOrigin:v33, 0.0];
  contentBackground = self->_contentBackground;
  if (contentBackground)
  {
    [(TUILayout *)contentBackground setContainingWidth:v30];
    [(TUILayout *)self->_contentBackground setContainingHeight:v32];
    [(TUILayout *)self->_contentBackground computedWidth];
    if ((v35 & 0x8000000000000) != 0)
    {
      v36 = v30;
    }

    else
    {
      v36 = NAN;
    }

    [(TUILayout *)self->_contentBackground setFlexedWidth:v36];
    [(TUILayout *)self->_contentBackground computedHeight];
    if ((v37 & 0x8000000000000) != 0)
    {
      v38 = v32;
    }

    else
    {
      v38 = NAN;
    }

    [(TUILayout *)self->_contentBackground setFlexedHeight:v38];
    [(TUILayout *)self->_contentBackground validateLayout];
    [(TUILayout *)self->_contentBackground setComputedOrigin:v33, 0.0];
  }

  background = self->_background;
  if (background)
  {
    [(TUILayout *)background setContainingWidth:v4];
    [(TUILayout *)self->_background setContainingHeight:v32];
    [(TUILayout *)self->_background computedWidth];
    if ((v40 & 0x8000000000000) != 0)
    {
      v41 = v4;
    }

    else
    {
      v41 = NAN;
    }

    [(TUILayout *)self->_background setFlexedWidth:v41];
    [(TUILayout *)self->_background computedHeight];
    if ((v42 & 0x8000000000000) != 0)
    {
      v43 = v32;
    }

    else
    {
      v43 = NAN;
    }

    [(TUILayout *)self->_background setFlexedHeight:v43];
    [(TUILayout *)self->_background validateLayout];
    [(TUILayout *)self->_background setComputedOrigin:CGPointZero.x, CGPointZero.y];
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v32];
}

@end