@interface TUILayoutContainer
- (BOOL)isDescendentOfLayout:(id)layout;
- (TUILayoutContainer)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (TUILayoutContaining)parent;
- (TUILayoutController)controller;
- (id)layout;
- (void)enumerateChildren:(id)children;
- (void)notifyChildrenScaleDidChange;
- (void)onChildInvalidate:(id)invalidate;
- (void)onChildInvalidateIntrinsicSize:(id)size;
- (void)onChildRenderModelInvalidate:(id)invalidate;
- (void)onChildTransformedSizeDidChange:(id)change;
- (void)onContainersUpdated;
- (void)onViewSafeAreaInsetsDidChange;
@end

@implementation TUILayoutContainer

- (TUILayoutContainer)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  modelCopy = model;
  parentCopy = parent;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = TUILayoutContainer;
  v12 = [(TUILayoutContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, model);
    objc_storeWeak(&v13->_parent, parentCopy);
    objc_storeWeak(&v13->_controller, controllerCopy);
  }

  return v13;
}

- (id)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  layout = [WeakRetained layout];

  return layout;
}

- (void)onContainersUpdated
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onContainersUpdated];
}

- (void)onChildInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildInvalidate:invalidateCopy];
}

- (void)onChildRenderModelInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildRenderModelInvalidate:invalidateCopy];
}

- (void)onChildInvalidateIntrinsicSize:(id)size
{
  sizeCopy = size;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildInvalidateIntrinsicSize:sizeCopy];
}

- (void)onChildTransformedSizeDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildTransformedSizeDidChange:changeCopy];
}

- (BOOL)isDescendentOfLayout:(id)layout
{
  layoutCopy = layout;
  parent = [(TUILayoutContainer *)self parent];
  if (parent == layoutCopy)
  {
    v7 = 1;
  }

  else
  {
    parent2 = [(TUILayoutContainer *)self parent];
    v7 = [parent2 isDescendentOfLayout:layoutCopy];
  }

  return v7;
}

- (void)notifyChildrenScaleDidChange
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_containers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) onComputedScaleDidChange];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)onViewSafeAreaInsetsDidChange
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_containers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) onViewSafeAreaInsetsDidChange];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)enumerateChildren:(id)children
{
  childrenCopy = children;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_containers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) enumerateLayout:{childrenCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (TUILayoutContaining)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (TUILayoutController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end