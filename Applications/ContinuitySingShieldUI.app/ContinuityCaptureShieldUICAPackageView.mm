@interface ContinuityCaptureShieldUICAPackageView
- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion;
- (CAStateControllerDelegate)stateControllerDelegate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ContinuityCaptureShieldUICAPackageView)initWithPackageName:(id)name type:(id)type inBundle:(id)bundle;
- (void)_setPendingCompletion:(id)completion fromState:(id)state toState:(id)toState;
- (void)layoutSubviews;
- (void)stateController:(id)controller didSetStateOfLayer:(id)layer;
- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed;
@end

@implementation ContinuityCaptureShieldUICAPackageView

- (ContinuityCaptureShieldUICAPackageView)initWithPackageName:(id)name type:(id)type inBundle:(id)bundle
{
  nameCopy = name;
  typeCopy = type;
  bundleCopy = bundle;
  v11 = bundleCopy;
  if (kCAPackageTypeCAMLBundle == typeCopy)
  {
    v12 = @"ca";
  }

  else
  {
    v12 = @"caar";
  }

  if (kCAPackageTypeCAMLFile == typeCopy)
  {
    v13 = @"caml";
  }

  else
  {
    v13 = v12;
  }

  v14 = [bundleCopy URLForResource:nameCopy withExtension:v13];
  v47[0] = 0;
  v15 = [_ContinuityCaptureShieldUICAPackage packageWithContentsOfURL:v14 type:typeCopy options:0 error:v47];
  v16 = v47[0];
  rootLayer = [v15 rootLayer];
  [rootLayer frame];
  v46.receiver = self;
  v46.super_class = ContinuityCaptureShieldUICAPackageView;
  v18 = [(ContinuityCaptureShieldUICAPackageView *)&v46 initWithFrame:?];
  v19 = v18;
  if (v18)
  {
    v37 = v16;
    v38 = v11;
    v39 = typeCopy;
    v40 = nameCopy;
    objc_storeStrong(&v18->_rootLayer, rootLayer);
    v36 = rootLayer;
    [rootLayer frame];
    v19->_originalSize.width = v20;
    v19->_originalSize.height = v21;
    -[CALayer setGeometryFlipped:](v19->_rootLayer, "setGeometryFlipped:", [v15 isGeometryFlipped]);
    layer = [(ContinuityCaptureShieldUICAPackageView *)v19 layer];
    [layer addSublayer:v19->_rootLayer];

    publishedObjectNames = [v15 publishedObjectNames];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = [publishedObjectNames countByEnumeratingWithState:&v42 objects:v41 count:16];
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
            objc_enumerationMutation(publishedObjectNames);
          }

          v29 = *(*(&v42 + 1) + 8 * i);
          v30 = [v15 publishedObjectWithName:v29];
          if (v30)
          {
            if (!v26)
            {
              v26 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(publishedObjectNames, "count")}];
            }

            [v26 setObject:v30 forKey:v29];
          }
        }

        v25 = [publishedObjectNames countByEnumeratingWithState:&v42 objects:v41 count:16];
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
    typeCopy = v39;
    nameCopy = v40;
    v11 = v38;
    rootLayer = v36;
    v16 = v37;
  }

  return v19;
}

- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion
{
  animatedCopy = animated;
  stateCopy = state;
  layerCopy = layer;
  completionCopy = completion;
  if (stateCopy)
  {
    v16 = [layerCopy stateWithName:stateCopy];
    v18 = v16 != 0;
    if (v16)
    {
      if (animatedCopy)
      {
        if (completionCopy)
        {
          v19 = [(CAStateController *)self->_stateController stateOfLayer:layerCopy];
          name = [v19 name];
          [(ContinuityCaptureShieldUICAPackageView *)self _setPendingCompletion:completionCopy fromState:name toState:stateCopy];
        }

        *&v17 = speed;
        [(CAStateController *)self->_stateController setState:v16 ofLayer:layerCopy transitionSpeed:v17];
      }

      else
      {
        [(ContinuityCaptureShieldUICAPackageView *)self _clearPendingCompletion];
        [(CAStateController *)self->_stateController setState:v16 ofLayer:layerCopy];
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1);
        }
      }
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    *&v15 = speed;
    [(CAStateController *)self->_stateController setInitialStatesOfLayer:layerCopy transitionSpeed:v15];
    v18 = 1;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  return v18;
}

- (CAStateControllerDelegate)stateControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);

  return WeakRetained;
}

- (CGSize)sizeThatFits:(CGSize)fits
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

- (void)stateController:(id)controller didSetStateOfLayer:(id)layer
{
  controllerCopy = controller;
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained stateController:controllerCopy didSetStateOfLayer:layerCopy];
  }
}

- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed
{
  controllerCopy = controller;
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    *&v10 = speed;
    [WeakRetained stateController:controllerCopy transitionDidStart:startCopy speed:v10];
  }
}

- (void)_setPendingCompletion:(id)completion fromState:(id)state toState:(id)toState
{
  completionCopy = completion;
  stateCopy = state;
  toStateCopy = toState;
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, 0);
  }

  v11 = [completionCopy copy];
  v12 = self->_pendingCompletion;
  self->_pendingCompletion = v11;

  v13 = [stateCopy copy];
  pendingCompletionFromState = self->_pendingCompletionFromState;
  self->_pendingCompletionFromState = v13;

  v15 = [toStateCopy copy];
  pendingCompletionToState = self->_pendingCompletionToState;
  self->_pendingCompletionToState = v15;
}

@end