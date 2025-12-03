@interface SKOverlayTransitionContext
- (CGRect)endFrame;
- (CGRect)startFrame;
- (SKOverlayTransitionContext)initWithASOOverlayTransitionContext:(id)context;
- (void)addAnimationBlock:(void *)block;
@end

@implementation SKOverlayTransitionContext

- (SKOverlayTransitionContext)initWithASOOverlayTransitionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SKOverlayTransitionContext;
  v6 = [(SKOverlayTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backing, context);
  }

  return v7;
}

- (CGRect)startFrame
{
  backing = [(SKOverlayTransitionContext *)self backing];
  [backing startFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)endFrame
{
  backing = [(SKOverlayTransitionContext *)self backing];
  [backing endFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)addAnimationBlock:(void *)block
{
  v4 = block;
  backing = [(SKOverlayTransitionContext *)self backing];
  [backing addAnimationBlock:v4];
}

@end