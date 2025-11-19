@interface AAUIMetalBadgeRendererDisplayLinkTarget
- (AAUIMetalBadgeRenderer)target;
- (id)_initWithTarget:(id)a3;
- (void)_drawBadgeFrameCallback;
@end

@implementation AAUIMetalBadgeRendererDisplayLinkTarget

- (id)_initWithTarget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AAUIMetalBadgeRendererDisplayLinkTarget;
  v5 = [(AAUIMetalBadgeRendererDisplayLinkTarget *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AAUIMetalBadgeRendererDisplayLinkTarget *)v5 setTarget:v4];
    v7 = v6;
  }

  return v6;
}

- (void)_drawBadgeFrameCallback
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained _drawBadgeFrameCallback];
}

- (AAUIMetalBadgeRenderer)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end