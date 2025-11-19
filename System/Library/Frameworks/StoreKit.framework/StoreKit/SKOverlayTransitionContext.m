@interface SKOverlayTransitionContext
- (CGRect)endFrame;
- (CGRect)startFrame;
- (SKOverlayTransitionContext)initWithASOOverlayTransitionContext:(id)a3;
- (void)addAnimationBlock:(void *)block;
@end

@implementation SKOverlayTransitionContext

- (SKOverlayTransitionContext)initWithASOOverlayTransitionContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKOverlayTransitionContext;
  v6 = [(SKOverlayTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backing, a3);
  }

  return v7;
}

- (CGRect)startFrame
{
  v2 = [(SKOverlayTransitionContext *)self backing];
  [v2 startFrame];
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
  v2 = [(SKOverlayTransitionContext *)self backing];
  [v2 endFrame];
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
  v5 = [(SKOverlayTransitionContext *)self backing];
  [v5 addAnimationBlock:v4];
}

@end