@interface TUILayoutContainer
- (BOOL)isDescendentOfLayout:(id)a3;
- (TUILayoutContainer)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (TUILayoutContaining)parent;
- (TUILayoutController)controller;
- (id)layout;
- (void)enumerateChildren:(id)a3;
- (void)notifyChildrenScaleDidChange;
- (void)onChildInvalidate:(id)a3;
- (void)onChildInvalidateIntrinsicSize:(id)a3;
- (void)onChildRenderModelInvalidate:(id)a3;
- (void)onChildTransformedSizeDidChange:(id)a3;
- (void)onContainersUpdated;
- (void)onViewSafeAreaInsetsDidChange;
@end

@implementation TUILayoutContainer

- (TUILayoutContainer)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUILayoutContainer;
  v12 = [(TUILayoutContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, a3);
    objc_storeWeak(&v13->_parent, v10);
    objc_storeWeak(&v13->_controller, v11);
  }

  return v13;
}

- (id)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v3 = [WeakRetained layout];

  return v3;
}

- (void)onContainersUpdated
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onContainersUpdated];
}

- (void)onChildInvalidate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildInvalidate:v4];
}

- (void)onChildRenderModelInvalidate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildRenderModelInvalidate:v4];
}

- (void)onChildInvalidateIntrinsicSize:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildInvalidateIntrinsicSize:v4];
}

- (void)onChildTransformedSizeDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained onChildTransformedSizeDidChange:v4];
}

- (BOOL)isDescendentOfLayout:(id)a3
{
  v4 = a3;
  v5 = [(TUILayoutContainer *)self parent];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(TUILayoutContainer *)self parent];
    v7 = [v6 isDescendentOfLayout:v4];
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

- (void)enumerateChildren:(id)a3
{
  v4 = a3;
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

        [*(*(&v9 + 1) + 8 * v8) enumerateLayout:{v4, v9}];
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