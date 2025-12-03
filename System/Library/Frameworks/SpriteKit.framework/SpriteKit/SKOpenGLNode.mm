@interface SKOpenGLNode
+ (id)openGLNodeWithViewportSize:(CGSize)size;
- (CGSize)viewportSize;
- (SKOpenGLNode)init;
- (SKOpenGLNode)initWithCoder:(id)coder;
- (SKOpenGLNode)initWithViewportSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
- (void)renderForTime:(double)time;
@end

@implementation SKOpenGLNode

- (SKOpenGLNode)init
{
  v3.receiver = self;
  v3.super_class = SKOpenGLNode;
  return [(SKNode *)&v3 init];
}

- (SKOpenGLNode)initWithViewportSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = SKOpenGLNode;
  return [(SKNode *)&v4 init:size.width];
}

- (SKOpenGLNode)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SKOpenGLNode;
  return [(SKNode *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = SKOpenGLNode;
  [(SKNode *)&v5 encodeWithCoder:coderCopy];
  [(SKOpenGLNode *)self viewportSize];
  [coderCopy encodeCGSize:@"viewportSize" forKey:?];
}

- (CGSize)viewportSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)openGLNodeWithViewportSize:(CGSize)size
{
  v3 = [[SKOpenGLNode alloc] initWithViewportSize:size.width, size.height];

  return v3;
}

- (void)renderForTime:(double)time
{
  glClearColor(0.0, 0.0, 0.0, 0.0);

  glClear(0x4400u);
}

@end