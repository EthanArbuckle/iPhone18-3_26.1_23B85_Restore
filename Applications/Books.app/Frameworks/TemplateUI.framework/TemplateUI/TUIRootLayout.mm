@interface TUIRootLayout
- (TUIRootLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (UIEdgeInsets)safeAreaInsets;
- (void)computeLayout;
- (void)onChildRenderModelInvalidate:(id)invalidate;
- (void)setSafeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation TUIRootLayout

- (TUIRootLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = TUIRootLayout;
  v9 = [(TUILayout *)&v19 initWithModel:model parent:parent controller:controllerCopy];
  v10 = v9;
  if (v9)
  {
    p_safeAreaInsets = &v9->_safeAreaInsets;
    instantiateContext = [controllerCopy instantiateContext];
    environment = [instantiateContext environment];
    [environment viewSafeAreaInsets];
    *&p_safeAreaInsets->top = v14;
    v10->_safeAreaInsets.left = v15;
    v10->_safeAreaInsets.bottom = v16;
    v10->_safeAreaInsets.right = v17;
  }

  return v10;
}

- (void)setSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_safeAreaInsets.top, v3), vceqq_f64(*&self->_safeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_safeAreaInsets = insets;
    [(TUILayout *)self onViewSafeAreaInsetsDidChange];
  }
}

- (void)computeLayout
{
  v3 = [(TUILayout *)self box];
  contentModels = [v3 contentModels];
  v5 = [contentModels count];

  if (v5 >= 2)
  {
    controller = [(TUILayout *)self controller];
    v30 = NSLocalizedDescriptionKey;
    v31 = @"More than one root boxes in template";
    v7 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v8 = [NSError errorWithDomain:@"TUIErrorDomain" code:1015 userInfo:v7];
    [controller addError:v8];
  }

  v9 = [(TUILayout *)self box];
  contentModel = [v9 contentModel];

  controller2 = [(TUILayout *)self controller];
  v12 = [controller2 layoutForModel:contentModel];

  [(TUILayout *)self containingWidth];
  [v12 setContainingWidth:?];
  [(TUILayout *)self containingHeight];
  [v12 setContainingHeight:?];
  [v12 validateLayout];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [(TUILayout *)self box];
  navBarModels = [v13 navBarModels];

  v15 = [navBarModels countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(navBarModels);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        controller3 = [(TUILayout *)self controller];
        v21 = [controller3 layoutForModel:v19];

        [(TUILayout *)self containingWidth];
        [v21 setContainingWidth:?];
        [v21 setContainingHeight:44.0];
        [v21 validateLayout];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [navBarModels countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  [(TUILayout *)self containingWidth];
  v23 = v22;
  [(TUILayout *)self containingHeight];
  [(TUILayout *)self setComputedNaturalSize:v23, v24];
}

- (void)onChildRenderModelInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = [(TUILayout *)self box];
  navBarModels = [v5 navBarModels];
  model = [invalidateCopy model];
  v8 = [navBarModels containsObject:model];

  if (v8)
  {
    controller = [(TUILayout *)self controller];
    [controller invalidateAuxiliaryRenderModel];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TUIRootLayout;
    [(TUILayout *)&v10 onChildRenderModelInvalidate:invalidateCopy];
  }
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end