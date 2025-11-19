@interface ContinuityCaptureShieldUICAPackageView
- (BOOL)setState:(id)a3 onLayer:(id)a4 animated:(BOOL)a5 transitionSpeed:(double)a6 completion:(id)a7;
- (CAStateControllerDelegate)stateControllerDelegate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ContinuityCaptureShieldUICAPackageView)initWithPackageName:(id)a3 type:(id)a4 inBundle:(id)a5;
- (void)_setPendingCompletion:(id)a3 fromState:(id)a4 toState:(id)a5;
- (void)layoutSubviews;
- (void)stateController:(id)a3 didSetStateOfLayer:(id)a4;
- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5;
@end

@implementation ContinuityCaptureShieldUICAPackageView

- (ContinuityCaptureShieldUICAPackageView)initWithPackageName:(id)a3 type:(id)a4 inBundle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (kCAPackageTypeCAMLBundle == v9)
  {
    v12 = @"ca";
  }

  else
  {
    v12 = @"caar";
  }

  if (kCAPackageTypeCAMLFile == v9)
  {
    v13 = @"caml";
  }

  else
  {
    v13 = v12;
  }

  v14 = [v10 URLForResource:v8 withExtension:v13];
  v47[0] = 0;
  v15 = [_ContinuityCaptureShieldUICAPackage packageWithContentsOfURL:v14 type:v9 options:0 error:v47];
  v16 = v47[0];
  v17 = [v15 rootLayer];
  [v17 frame];
  v46.receiver = self;
  v46.super_class = ContinuityCaptureShieldUICAPackageView;
  v18 = [(ContinuityCaptureShieldUICAPackageView *)&v46 initWithFrame:?];
  v19 = v18;
  if (v18)
  {
    v37 = v16;
    v38 = v11;
    v39 = v9;
    v40 = v8;
    objc_storeStrong(&v18->_rootLayer, v17);
    v36 = v17;
    [v17 frame];
    v19->_originalSize.width = v20;
    v19->_originalSize.height = v21;
    -[CALayer setGeometryFlipped:](v19->_rootLayer, "setGeometryFlipped:", [v15 isGeometryFlipped]);
    v22 = [(ContinuityCaptureShieldUICAPackageView *)v19 layer];
    [v22 addSublayer:v19->_rootLayer];

    v23 = [v15 publishedObjectNames];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v43;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v42 + 1) + 8 * i);
          v30 = [v15 publishedObjectWithName:v29];
          if (v30)
          {
            if (!v26)
            {
              v26 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v23, "count")}];
            }

            [v26 setObject:v30 forKey:v29];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v42 objects:v41 count:16];
      }

      while (v25);
    }

    else
    {
      v26 = 0;
    }

    v31 = [v26 copy];
    publishedObjectMap = v19->_publishedObjectMap;
    v19->_publishedObjectMap = v31;

    v33 = [[CAStateController alloc] initWithLayer:v19->_rootLayer];
    stateController = v19->_stateController;
    v19->_stateController = v33;

    [(CAStateController *)v19->_stateController setDelegate:v19];
    v9 = v39;
    v8 = v40;
    v11 = v38;
    v17 = v36;
    v16 = v37;
  }

  return v19;
}

- (BOOL)setState:(id)a3 onLayer:(id)a4 animated:(BOOL)a5 transitionSpeed:(double)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v12)
  {
    v16 = [v13 stateWithName:v12];
    v18 = v16 != 0;
    if (v16)
    {
      if (v9)
      {
        if (v14)
        {
          v19 = [(CAStateController *)self->_stateController stateOfLayer:v13];
          v20 = [v19 name];
          [(ContinuityCaptureShieldUICAPackageView *)self _setPendingCompletion:v14 fromState:v20 toState:v12];
        }

        *&v17 = a6;
        [(CAStateController *)self->_stateController setState:v16 ofLayer:v13 transitionSpeed:v17];
      }

      else
      {
        [(ContinuityCaptureShieldUICAPackageView *)self _clearPendingCompletion];
        [(CAStateController *)self->_stateController setState:v16 ofLayer:v13];
        if (v14)
        {
          v14[2](v14, 1);
        }
      }
    }

    else if (v14)
    {
      v14[2](v14, 0);
    }
  }

  else
  {
    *&v15 = a6;
    [(CAStateController *)self->_stateController setInitialStatesOfLayer:v13 transitionSpeed:v15];
    v18 = 1;
    if (v14)
    {
      v14[2](v14, 1);
    }
  }

  return v18;
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

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = ContinuityCaptureShieldUICAPackageView;
  [(ContinuityCaptureShieldUICAPackageView *)&v8 layoutSubviews];
  [(ContinuityCaptureShieldUICAPackageView *)self bounds];
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

- (void)_setPendingCompletion:(id)a3 fromState:(id)a4 toState:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, 0);
  }

  v11 = [v17 copy];
  v12 = self->_pendingCompletion;
  self->_pendingCompletion = v11;

  v13 = [v8 copy];
  pendingCompletionFromState = self->_pendingCompletionFromState;
  self->_pendingCompletionFromState = v13;

  v15 = [v9 copy];
  pendingCompletionToState = self->_pendingCompletionToState;
  self->_pendingCompletionToState = v15;
}

@end