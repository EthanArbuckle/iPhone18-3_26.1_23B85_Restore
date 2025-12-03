@interface TCCircleCollider
- (BOOL)containsPoint:(CGPoint)point;
- (TCCircleCollider)initWithControlLayout:(id)layout;
@end

@implementation TCCircleCollider

- (TCCircleCollider)initWithControlLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = TCCircleCollider;
  v5 = [(TCCircleCollider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_enabled = 1;
    objc_storeWeak(&v5->_controlLayout, layoutCopy);
  }

  return v6;
}

- (BOOL)containsPoint:(CGPoint)point
{
  if (!self->_enabled)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_controlLayout);
  [WeakRetained size];
  v8 = v7;
  v9 = objc_loadWeakRetained(&self->_controlLayout);
  [v9 size];
  v11 = v10;
  v12 = objc_loadWeakRetained(&self->_controlLayout);
  [v12 size];
  v14 = v13;
  v16 = v15;

  if (v8 <= v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;

  v19 = objc_loadWeakRetained(&self->_controlLayout);
  [v19 position];
  v21 = v20 - x;

  v22 = objc_loadWeakRetained(&self->_controlLayout);
  [v22 position];
  v24 = v23 - y;

  return ((v24 * v24) + (v21 * v21)) < ((v18 * 0.5) * (v18 * 0.5));
}

@end