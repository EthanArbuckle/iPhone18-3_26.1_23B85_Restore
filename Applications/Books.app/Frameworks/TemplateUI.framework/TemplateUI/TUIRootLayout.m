@interface TUIRootLayout
- (TUIRootLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (UIEdgeInsets)safeAreaInsets;
- (void)computeLayout;
- (void)onChildRenderModelInvalidate:(id)a3;
- (void)setSafeAreaInsets:(UIEdgeInsets)a3;
@end

@implementation TUIRootLayout

- (TUIRootLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = TUIRootLayout;
  v9 = [(TUILayout *)&v19 initWithModel:a3 parent:a4 controller:v8];
  v10 = v9;
  if (v9)
  {
    p_safeAreaInsets = &v9->_safeAreaInsets;
    v12 = [v8 instantiateContext];
    v13 = [v12 environment];
    [v13 viewSafeAreaInsets];
    *&p_safeAreaInsets->top = v14;
    v10->_safeAreaInsets.left = v15;
    v10->_safeAreaInsets.bottom = v16;
    v10->_safeAreaInsets.right = v17;
  }

  return v10;
}

- (void)setSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_safeAreaInsets.top, v3), vceqq_f64(*&self->_safeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_safeAreaInsets = a3;
    [(TUILayout *)self onViewSafeAreaInsetsDidChange];
  }
}

- (void)computeLayout
{
  v3 = [(TUILayout *)self box];
  v4 = [v3 contentModels];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [(TUILayout *)self controller];
    v30 = NSLocalizedDescriptionKey;
    v31 = @"More than one root boxes in template";
    v7 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v8 = [NSError errorWithDomain:@"TUIErrorDomain" code:1015 userInfo:v7];
    [v6 addError:v8];
  }

  v9 = [(TUILayout *)self box];
  v10 = [v9 contentModel];

  v11 = [(TUILayout *)self controller];
  v12 = [v11 layoutForModel:v10];

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
  v14 = [v13 navBarModels];

  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        v20 = [(TUILayout *)self controller];
        v21 = [v20 layoutForModel:v19];

        [(TUILayout *)self containingWidth];
        [v21 setContainingWidth:?];
        [v21 setContainingHeight:44.0];
        [v21 validateLayout];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  [(TUILayout *)self containingWidth];
  v23 = v22;
  [(TUILayout *)self containingHeight];
  [(TUILayout *)self setComputedNaturalSize:v23, v24];
}

- (void)onChildRenderModelInvalidate:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self box];
  v6 = [v5 navBarModels];
  v7 = [v4 model];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [(TUILayout *)self controller];
    [v9 invalidateAuxiliaryRenderModel];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TUIRootLayout;
    [(TUILayout *)&v10 onChildRenderModelInvalidate:v4];
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