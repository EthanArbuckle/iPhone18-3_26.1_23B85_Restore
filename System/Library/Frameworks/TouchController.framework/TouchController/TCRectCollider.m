@interface TCRectCollider
- (BOOL)containsPoint:(CGPoint)a3;
- (TCRectCollider)initWithControlLayout:(id)a3;
@end

@implementation TCRectCollider

- (TCRectCollider)initWithControlLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TCRectCollider;
  v5 = [(TCRectCollider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_enabled = 1;
    objc_storeWeak(&v5->_controlLayout, v4);
  }

  return v6;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  if (!self->_enabled)
  {
    return 0;
  }

  x = a3.x;
  y = a3.y;
  WeakRetained = objc_loadWeakRetained(&self->_controlLayout);
  [WeakRetained size];
  v8 = v7;

  v9 = objc_loadWeakRetained(&self->_controlLayout);
  [v9 size];
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_controlLayout);
  [v12 position];
  v14 = v13 - v8 * 0.5;

  v15 = objc_loadWeakRetained(&self->_controlLayout);
  [v15 position];
  v17 = v16 - v11 * 0.5;

  return x >= v14 && (v8 + v14) >= x && y >= v17 && (v11 + v17) >= y;
}

@end