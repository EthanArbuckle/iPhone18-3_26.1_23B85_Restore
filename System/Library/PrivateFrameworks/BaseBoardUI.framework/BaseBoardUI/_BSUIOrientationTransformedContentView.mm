@interface _BSUIOrientationTransformedContentView
- (_BSUIOrientationTransformedContentView)initWithFrame:(CGRect)a3;
- (id)description;
@end

@implementation _BSUIOrientationTransformedContentView

- (_BSUIOrientationTransformedContentView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _BSUIOrientationTransformedContentView;
  result = [(_BSUIOrientationTransformedContentView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v5 = [v2 appendSuper];
  v6 = [v2 build];

  return v6;
}

@end