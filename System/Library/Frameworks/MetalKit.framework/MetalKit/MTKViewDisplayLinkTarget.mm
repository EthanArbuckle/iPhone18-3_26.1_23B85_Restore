@interface MTKViewDisplayLinkTarget
- (MTKView)target;
- (MTKViewDisplayLinkTarget)initWithTarget:(id)a3;
- (void)draw;
@end

@implementation MTKViewDisplayLinkTarget

- (MTKViewDisplayLinkTarget)initWithTarget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTKViewDisplayLinkTarget;
  v5 = [(MTKViewDisplayLinkTarget *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTKViewDisplayLinkTarget *)v5 setTarget:v4];
    v7 = v6;
  }

  return v6;
}

- (void)draw
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained draw];
}

- (MTKView)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end