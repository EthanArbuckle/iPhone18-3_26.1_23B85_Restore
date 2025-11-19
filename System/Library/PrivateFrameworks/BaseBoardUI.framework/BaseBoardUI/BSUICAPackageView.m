@interface BSUICAPackageView
- (BOOL)setState:(id)a3 onLayer:(id)a4 animated:(BOOL)a5 transitionSpeed:(double)a6 completion:(id)a7;
- (BSUICAPackageView)initWithPackageName:(id)a3 inBundle:(id)a4;
- (BSUICAPackageView)initWithURL:(id)a3;
- (CAStateControllerDelegate)stateControllerDelegate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)publishedObjectWithName:(id)a3;
- (void)_setPendingCompletion:(void *)a3 fromState:(void *)a4 toState:;
- (void)layoutSubviews;
- (void)stateController:(id)a3 didSetStateOfLayer:(id)a4;
- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5;
- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5;
@end

@implementation BSUICAPackageView

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = BSUICAPackageView;
  [(BSUICAPackageView *)&v8 layoutSubviews];
  [(BSUICAPackageView *)self bounds];
  if (v3 / self->_originalSize.width >= v4 / self->_originalSize.height)
  {
    v5 = v4 / self->_originalSize.height;
  }

  else
  {
    v5 = v3 / self->_originalSize.width;
  }

  [(CALayer *)self->_rootLayer setPosition:v3 * 0.5, v4 * 0.5];
  rootLayer = self->_rootLayer;
  CATransform3DMakeScale(&v7, v5, v5, 1.0);
  [(CALayer *)rootLayer setTransform:&v7];
}

- (BSUICAPackageView)initWithPackageName:(id)a3 inBundle:(id)a4
{
  v5 = [a4 URLForResource:a3 withExtension:@"ca"];
  v6 = [(BSUICAPackageView *)self initWithURL:v5];

  return v6;
}

- (BSUICAPackageView)initWithURL:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v22 = a3;
  v4 = [MEMORY[0x1E6979400] packageWithContentsOfURL:? type:? options:? error:?];
  v23 = v31;
  obj = [v4 rootLayer];
  [obj frame];
  v30.receiver = self;
  v30.super_class = BSUICAPackageView;
  v5 = [(BSUICAPackageView *)&v30 initWithFrame:?];
  if (v5)
  {
    v25 = v5;
    objc_storeStrong(&v5->_rootLayer, obj);
    [obj frame];
    v25->_originalSize.width = v6;
    v25->_originalSize.height = v7;
    -[CALayer setGeometryFlipped:](v25->_rootLayer, "setGeometryFlipped:", [v4 isGeometryFlipped]);
    v8 = [(BSUICAPackageView *)v25 layer];
    [v8 addSublayer:v25->_rootLayer];

    [v4 publishedObjectNames];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v9 = v27 = 0u;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v4 publishedObjectWithName:v14];
          if (v15)
          {
            if (!v10)
            {
              v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
            }

            [v10 setObject:v15 forKey:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v11);
    }

    v16 = [v10 copy];
    publishedObjectMap = v25->_publishedObjectMap;
    v25->_publishedObjectMap = v16;

    v18 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:v25->_rootLayer];
    stateController = v25->_stateController;
    v25->_stateController = v18;

    [(CAStateController *)v25->_stateController setDelegate:?];
    v5 = v25;
  }

  v20 = v5;

  return v20;
}

- (id)publishedObjectWithName:(id)a3
{
  v3 = [(NSDictionary *)self->_publishedObjectMap objectForKey:a3];

  return v3;
}

- (BOOL)setState:(id)a3 onLayer:(id)a4 animated:(BOOL)a5 transitionSpeed:(double)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [v13 stateWithName:v12];
  if (v15)
  {
    if (v9)
    {
      if (v14)
      {
        v17 = [(CAStateController *)self->_stateController stateOfLayer:v13];
        v18 = [v17 name];
        [(BSUICAPackageView *)self _setPendingCompletion:v14 fromState:v18 toState:v12];
      }

      *&v16 = a6;
      [(CAStateController *)self->_stateController setState:v15 ofLayer:v13 transitionSpeed:v16];
      goto LABEL_11;
    }

    if (self)
    {
      [(BSUICAPackageView *)self _setPendingCompletion:0 fromState:0 toState:?];
    }

    [(CAStateController *)self->_stateController setState:v15 ofLayer:v13];
  }

  if (v14)
  {
    (*(v14 + 2))(v14, v15 != 0);
  }

LABEL_11:

  return v15 != 0;
}

- (void)_setPendingCompletion:(void *)a3 fromState:(void *)a4 toState:
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a1[58];
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }

    v10 = [v16 copy];
    v11 = a1[58];
    a1[58] = v10;

    v12 = [v7 copy];
    v13 = a1[57];
    a1[57] = v12;

    v14 = [v8 copy];
    v15 = a1[56];
    a1[56] = v14;
  }
}

- (CAStateControllerDelegate)stateControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);

  return WeakRetained;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)stateController:(id)a3 didSetStateOfLayer:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained stateController:v8 didSetStateOfLayer:v6];
  }
}

- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5
{
  v11 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    *&v10 = a5;
    [WeakRetained stateController:v11 transitionDidStart:v8 speed:v10];
  }
}

- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_pendingCompletion)
  {
    v10 = [v8 toState];
    v11 = [v10 isEqualToString:self->_pendingCompletionToState];

    if (v11)
    {
      (*(self->_pendingCompletion + 2))();
      pendingCompletion = self->_pendingCompletion;
      self->_pendingCompletion = 0;

      pendingCompletionFromState = self->_pendingCompletionFromState;
      self->_pendingCompletionFromState = 0;

      pendingCompletionToState = self->_pendingCompletionToState;
      self->_pendingCompletionToState = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained stateController:v16 transitionDidStop:v9 completed:v5];
  }
}

@end