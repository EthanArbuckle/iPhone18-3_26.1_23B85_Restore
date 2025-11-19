@interface THFlowTOCCatalystEnvironment
- (CGRect)im_frameEnvironmentBounds;
- (CGRect)im_frameEnvironmentFrame;
- (THFlowTOCCatalystEnvironment)initWithContext:(id)a3;
- (UIEdgeInsets)im_frameEnvironmentSafeAreaInsets;
- (UITraitCollection)traitCollection;
- (UIViewController)context;
@end

@implementation THFlowTOCCatalystEnvironment

- (THFlowTOCCatalystEnvironment)initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = THFlowTOCCatalystEnvironment;
  v5 = [(THFlowTOCCatalystEnvironment *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
  }

  return v6;
}

- (CGRect)im_frameEnvironmentBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if ([WeakRetained isViewLoaded])
  {
    v4 = objc_loadWeakRetained(&self->_context);
    v5 = [v4 view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)im_frameEnvironmentFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if ([WeakRetained isViewLoaded])
  {
    v4 = objc_loadWeakRetained(&self->_context);
    v5 = [v4 view];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)im_frameEnvironmentSafeAreaInsets
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if ([WeakRetained isViewLoaded])
  {
    v4 = objc_loadWeakRetained(&self->_context);
    v5 = [v4 view];
    [v5 safeAreaInsets];
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

- (UITraitCollection)traitCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained traitCollection];
  v4 = [v3 traitCollectionByModifyingTraits:&stru_45D110];

  return v4;
}

- (UIViewController)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end