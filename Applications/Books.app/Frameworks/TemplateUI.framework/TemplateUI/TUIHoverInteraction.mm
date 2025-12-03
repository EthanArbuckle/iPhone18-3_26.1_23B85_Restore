@interface TUIHoverInteraction
- (TUIHoverInteraction)initWithDelegate:(id)delegate view:(id)view;
- (TUIHoverInteractionDelegate)delegate;
- (UIView)view;
- (id)activeRegions;
- (void)_checkIfSettledWithTime:(unint64_t)time;
- (void)_hoverGesture:(id)gesture;
- (void)_updateSettled;
- (void)_updateState;
- (void)addRegionWithKey:(id)key rect:(CGRect)rect;
- (void)didMoveToView:(id)view;
- (void)rebuildAllRegionsWithBlock:(id)block;
- (void)rebuildRegionWithKey:(id)key block:(id)block;
- (void)willMoveToView:(id)view;
@end

@implementation TUIHoverInteraction

- (TUIHoverInteraction)initWithDelegate:(id)delegate view:(id)view
{
  delegateCopy = delegate;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = TUIHoverInteraction;
  v8 = [(TUIHoverInteraction *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = objc_opt_new();
    regionBounds = v9->_regionBounds;
    v9->_regionBounds = v10;

    v12 = objc_opt_new();
    regionState = v9->_regionState;
    v9->_regionState = v12;

    objc_storeWeak(&v9->_targetView, viewCopy);
    v9->_settleDuration = 0.25;
    v9->_lastUpdatedTime = 0;
    v9->_checkSettled = objc_opt_respondsToSelector() & 1;
  }

  return v9;
}

- (void)willMoveToView:(id)view
{
  if (self->_gestureRecognizer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeGestureRecognizer:self->_gestureRecognizer];

    gestureRecognizer = self->_gestureRecognizer;
    self->_gestureRecognizer = 0;
  }

  v6 = objc_loadWeakRetained(&self->_view);
  [v6 setBackgroundColor:0];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);
  v4 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:"_hoverGesture:"];
  gestureRecognizer = self->_gestureRecognizer;
  self->_gestureRecognizer = v4;

  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained addGestureRecognizer:self->_gestureRecognizer];
}

- (void)_hoverGesture:(id)gesture
{
  if (self->_gestureRecognizer == gesture)
  {
    [(TUIHoverInteraction *)self _updateState];
  }
}

- (id)activeRegions
{
  allObjects = [(NSSet *)self->_regionState allObjects];
  v3 = [NSSet setWithArray:allObjects];

  return v3;
}

- (void)rebuildAllRegionsWithBlock:(id)block
{
  blockCopy = block;
  [(NSMutableDictionary *)self->_regionBounds removeAllObjects];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, self);
  }

  [(TUIHoverInteraction *)self _updateState];
}

- (void)rebuildRegionWithKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v7 = objc_alloc_init(_TUIHoverRegionBuilder);
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v7);
  }

  bounds = [(_TUIHoverRegionBuilder *)v7 bounds];
  v9 = [bounds count];

  if (v9)
  {
    bounds2 = [(_TUIHoverRegionBuilder *)v7 bounds];
    [(NSMutableDictionary *)self->_regionBounds setObject:bounds2 forKeyedSubscript:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_regionBounds setObject:0 forKeyedSubscript:keyCopy];
  }

  [(TUIHoverInteraction *)self _updateState];
}

- (void)addRegionWithKey:(id)key rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  keyCopy = key;
  v9 = [(NSMutableDictionary *)self->_regionBounds objectForKeyedSubscript:?];
  if (!v9)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_regionBounds setObject:v9 forKeyedSubscript:keyCopy];
  }

  height = [NSValue valueWithCGRect:x, y, width, height];
  [v9 addObject:height];
}

- (void)_updateSettled
{
  if (self->_checkSettled)
  {
    v4 = dispatch_time(0, 0);
    self->_lastUpdatedTime = v4;

    [(TUIHoverInteraction *)self _checkIfSettledWithTime:v4];
  }
}

- (void)_checkIfSettledWithTime:(unint64_t)time
{
  if (!self->_settleCheckScheduled)
  {
    self->_settleCheckScheduled = 1;
    v5 = dispatch_time(time, (self->_settleDuration * 1000000000.0));
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_6CA14;
    v6[3] = &unk_25DED0;
    v6[4] = self;
    v6[5] = time;
    dispatch_after(v5, &_dispatch_main_q, v6);
  }
}

- (void)_updateState
{
  isHovering = [(TUIHoverInteraction *)self isHovering];
  if ([(UIHoverGestureRecognizer *)self->_gestureRecognizer state]- 1 <= &dword_0 + 1)
  {
    [(TUIHoverInteraction *)self _updateSettled];
  }

  v4 = objc_opt_new();
  if (isHovering)
  {
    gestureRecognizer = self->_gestureRecognizer;
    WeakRetained = objc_loadWeakRetained(&self->_targetView);
    [(UIHoverGestureRecognizer *)gestureRecognizer locationInView:WeakRetained];
    v8 = v7;
    v10 = v9;

    regionBounds = self->_regionBounds;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_6CC28;
    v16[3] = &unk_25F778;
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

- (TUIHoverInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end