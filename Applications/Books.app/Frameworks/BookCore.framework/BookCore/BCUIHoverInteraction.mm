@interface BCUIHoverInteraction
- (BCUIHoverInteraction)initWithDelegate:(id)a3 view:(id)a4;
- (BCUIHoverInteractionDelegate)delegate;
- (UIView)view;
- (void)_checkIfSettledWithTime:(unint64_t)a3;
- (void)_hoverGesture:(id)a3;
- (void)_updateSettled;
- (void)_updateState;
- (void)addRegionWithKey:(id)a3 rect:(CGRect)a4;
- (void)didMoveToView:(id)a3;
- (void)rebuildAllRegionsWithBlock:(id)a3;
- (void)rebuildRegionWithKey:(id)a3 block:(id)a4;
- (void)willMoveToView:(id)a3;
@end

@implementation BCUIHoverInteraction

- (BCUIHoverInteraction)initWithDelegate:(id)a3 view:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = BCUIHoverInteraction;
  v8 = [(BCUIHoverInteraction *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = objc_opt_new();
    regionBounds = v9->_regionBounds;
    v9->_regionBounds = v10;

    v12 = objc_opt_new();
    regionState = v9->_regionState;
    v9->_regionState = v12;

    objc_storeWeak(&v9->_targetView, v7);
    v9->_settleDuration = 0.25;
    v9->_lastUpdatedTime = 0;
    v9->_checkSettled = objc_opt_respondsToSelector() & 1;
  }

  return v9;
}

- (void)willMoveToView:(id)a3
{
  if (self->_gestureRecognizer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeGestureRecognizer:self->_gestureRecognizer];

    gestureRecognizer = self->_gestureRecognizer;
    self->_gestureRecognizer = 0;
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);
  v4 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:"_hoverGesture:"];
  gestureRecognizer = self->_gestureRecognizer;
  self->_gestureRecognizer = v4;

  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained addGestureRecognizer:self->_gestureRecognizer];
}

- (void)_hoverGesture:(id)a3
{
  if (self->_gestureRecognizer == a3)
  {
    [(BCUIHoverInteraction *)self _updateState];
  }
}

- (void)rebuildAllRegionsWithBlock:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_regionBounds removeAllObjects];
  if (v4)
  {
    v4[2](v4, self);
  }

  [(BCUIHoverInteraction *)self _updateState];
}

- (void)rebuildRegionWithKey:(id)a3 block:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_BCUIHoverRegionBuilder);
  if (v6)
  {
    v6[2](v6, v7);
  }

  v8 = [(_BCUIHoverRegionBuilder *)v7 bounds];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(_BCUIHoverRegionBuilder *)v7 bounds];
    [(NSMutableDictionary *)self->_regionBounds setObject:v10 forKeyedSubscript:v11];
  }

  else
  {
    [(NSMutableDictionary *)self->_regionBounds setObject:0 forKeyedSubscript:v11];
  }

  [(BCUIHoverInteraction *)self _updateState];
}

- (void)addRegionWithKey:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v9 = [(NSMutableDictionary *)self->_regionBounds objectForKeyedSubscript:?];
  if (!v9)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_regionBounds setObject:v9 forKeyedSubscript:v11];
  }

  v10 = [NSValue valueWithCGRect:x, y, width, height];
  [v9 addObject:v10];
}

- (void)_updateSettled
{
  if (self->_checkSettled)
  {
    v4 = dispatch_time(0, 0);
    self->_lastUpdatedTime = v4;

    [(BCUIHoverInteraction *)self _checkIfSettledWithTime:v4];
  }
}

- (void)_checkIfSettledWithTime:(unint64_t)a3
{
  if (!self->_settleCheckScheduled)
  {
    self->_settleCheckScheduled = 1;
    v5 = dispatch_time(a3, (self->_settleDuration * 1000000000.0));
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_166064;
    v6[3] = &unk_2C7D18;
    v6[4] = self;
    v6[5] = a3;
    dispatch_after(v5, &_dispatch_main_q, v6);
  }
}

- (void)_updateState
{
  v3 = [(BCUIHoverInteraction *)self isHovering];
  if ([(UIHoverGestureRecognizer *)self->_gestureRecognizer state]- 1 <= &dword_0 + 1)
  {
    [(BCUIHoverInteraction *)self _updateSettled];
  }

  v4 = objc_opt_new();
  if (v3)
  {
    gestureRecognizer = self->_gestureRecognizer;
    WeakRetained = objc_loadWeakRetained(&self->_targetView);
    [(UIHoverGestureRecognizer *)gestureRecognizer locationInView:WeakRetained];
    v8 = v7;
    v10 = v9;

    regionBounds = self->_regionBounds;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_166278;
    v16[3] = &unk_2CEA68;
    v18 = v8;
    v19 = v10;
    v17 = v4;
    [(NSMutableDictionary *)regionBounds enumerateKeysAndObjectsUsingBlock:v16];
  }

  v12 = [(NSSet *)self->_regionState mutableCopy];
  [v12 intersectSet:v4];
  v13 = [(NSSet *)self->_regionState mutableCopy];
  [v13 unionSet:v4];
  [v13 minusSet:v12];
  regionState = self->_regionState;
  self->_regionState = v4;

  if ([v13 count])
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 hoverInteraction:self didChangeStateForRegionWithKeys:v13];
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (BCUIHoverInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end