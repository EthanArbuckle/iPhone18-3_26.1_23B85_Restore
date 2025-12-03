@interface MTKViewDisplayLinkTarget
- (MTKView)target;
- (MTKViewDisplayLinkTarget)initWithTarget:(id)target;
- (void)draw;
@end

@implementation MTKViewDisplayLinkTarget

- (MTKViewDisplayLinkTarget)initWithTarget:(id)target
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = MTKViewDisplayLinkTarget;
  v5 = [(MTKViewDisplayLinkTarget *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTKViewDisplayLinkTarget *)v5 setTarget:targetCopy];
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