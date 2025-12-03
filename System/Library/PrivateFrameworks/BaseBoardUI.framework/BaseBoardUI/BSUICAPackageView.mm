@interface BSUICAPackageView
- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion;
- (BSUICAPackageView)initWithPackageName:(id)name inBundle:(id)bundle;
- (BSUICAPackageView)initWithURL:(id)l;
- (CAStateControllerDelegate)stateControllerDelegate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)publishedObjectWithName:(id)name;
- (void)_setPendingCompletion:(void *)completion fromState:(void *)state toState:;
- (void)layoutSubviews;
- (void)stateController:(id)controller didSetStateOfLayer:(id)layer;
- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
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

- (BSUICAPackageView)initWithPackageName:(id)name inBundle:(id)bundle
{
  v5 = [bundle URLForResource:name withExtension:@"ca"];
  v6 = [(BSUICAPackageView *)self initWithURL:v5];

  return v6;
}

- (BSUICAPackageView)initWithURL:(id)l
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0;
  lCopy = l;
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
    layer = [(BSUICAPackageView *)v25 layer];
    [layer addSublayer:v25->_rootLayer];

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

- (id)publishedObjectWithName:(id)name
{
  v3 = [(NSDictionary *)self->_publishedObjectMap objectForKey:name];

  return v3;
}

- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion
{
  animatedCopy = animated;
  stateCopy = state;
  layerCopy = layer;
  completionCopy = completion;
  v15 = [layerCopy stateWithName:stateCopy];
  if (v15)
  {
    if (animatedCopy)
    {
      if (completionCopy)
      {
        v17 = [(CAStateController *)self->_stateController stateOfLayer:layerCopy];
        name = [v17 name];
        [(BSUICAPackageView *)self _setPendingCompletion:completionCopy fromState:name toState:stateCopy];
      }

      *&v16 = speed;
      [(CAStateController *)self->_stateController setState:v15 ofLayer:layerCopy transitionSpeed:v16];
      goto LABEL_11;
    }

    if (self)
    {
      [(BSUICAPackageView *)self _setPendingCompletion:0 fromState:0 toState:?];
    }

    [(CAStateController *)self->_stateController setState:v15 ofLayer:layerCopy];
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v15 != 0);
  }

LABEL_11:

  return v15 != 0;
}

- (void)_setPendingCompletion:(void *)completion fromState:(void *)state toState:
{
  v16 = a2;
  completionCopy = completion;
  stateCopy = state;
  if (self)
  {
    v9 = self[58];
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }

    v10 = [v16 copy];
    v11 = self[58];
    self[58] = v10;

    v12 = [completionCopy copy];
    v13 = self[57];
    self[57] = v12;

    v14 = [stateCopy copy];
    v15 = self[56];
    self[56] = v14;
  }
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

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  completedCopy = completed;
  controllerCopy = controller;
  stopCopy = stop;
  v9 = stopCopy;
  if (self->_pendingCompletion)
  {
    toState = [stopCopy toState];
    v11 = [toState isEqualToString:self->_pendingCompletionToState];

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
    [WeakRetained stateController:controllerCopy transitionDidStop:v9 completed:completedCopy];
  }
}

@end