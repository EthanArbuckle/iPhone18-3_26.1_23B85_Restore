@interface MTLIOAccelTextureLayout
- (MTLIOAccelTextureLayout)initWithDevice:(id)device descriptor:(id)descriptor;
@end

@implementation MTLIOAccelTextureLayout

- (MTLIOAccelTextureLayout)initWithDevice:(id)device descriptor:(id)descriptor
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelTextureLayout;
  return [(MTLIOAccelTextureLayout *)&v5 init:device];
}

@end