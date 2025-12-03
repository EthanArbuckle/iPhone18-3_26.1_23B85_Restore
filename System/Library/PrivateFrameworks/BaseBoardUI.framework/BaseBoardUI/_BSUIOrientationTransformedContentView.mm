@interface _BSUIOrientationTransformedContentView
- (_BSUIOrientationTransformedContentView)initWithFrame:(CGRect)frame;
- (id)description;
@end

@implementation _BSUIOrientationTransformedContentView

- (_BSUIOrientationTransformedContentView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _BSUIOrientationTransformedContentView;
  result = [(_BSUIOrientationTransformedContentView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_contentOrientation = 1;
  }

  return result;
}

- (id)description
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:self];
  v3 = BSInterfaceOrientationDescription();
  v4 = [v2 appendObject:v3 withName:@"content"];

  appendSuper = [v2 appendSuper];
  build = [v2 build];

  return build;
}

@end