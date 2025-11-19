@interface SKOpenGLNode
+ (id)openGLNodeWithViewportSize:(CGSize)a3;
- (CGSize)viewportSize;
- (SKOpenGLNode)init;
- (SKOpenGLNode)initWithCoder:(id)a3;
- (SKOpenGLNode)initWithViewportSize:(CGSize)a3;
- (void)encodeWithCoder:(id)a3;
- (void)renderForTime:(double)a3;
@end

@implementation SKOpenGLNode

- (SKOpenGLNode)init
{
  v3.receiver = self;
  v3.super_class = SKOpenGLNode;
  return [(SKNode *)&v3 init];
}

- (SKOpenGLNode)initWithViewportSize:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = SKOpenGLNode;
  return [(SKNode *)&v4 init:a3.width];
}

- (SKOpenGLNode)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKOpenGLNode;
  return [(SKNode *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKOpenGLNode;
  [(SKNode *)&v5 encodeWithCoder:v4];
  [(SKOpenGLNode *)self viewportSize];
  [v4 encodeCGSize:@"viewportSize" forKey:?];
}

- (CGSize)viewportSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)openGLNodeWithViewportSize:(CGSize)a3
{
  v3 = [[SKOpenGLNode alloc] initWithViewportSize:a3.width, a3.height];

  return v3;
}

- (void)renderForTime:(double)a3
{
  glClearColor(0.0, 0.0, 0.0, 0.0);

  glClear(0x4400u);
}

@end