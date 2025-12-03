@interface SKWarpGeometry
- (SKWarpGeometry)initWithCoder:(id)coder;
@end

@implementation SKWarpGeometry

- (SKWarpGeometry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SKWarpGeometry;
  return [(SKWarpGeometry *)&v4 init];
}

@end