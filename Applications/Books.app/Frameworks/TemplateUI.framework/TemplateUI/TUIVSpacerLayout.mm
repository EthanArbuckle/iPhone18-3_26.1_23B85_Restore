@interface TUIVSpacerLayout
- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)flags;
@end

@implementation TUIVSpacerLayout

- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)flags
{
  if ((flags & 2) != 0)
  {
    v10 = v3;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = TUIVSpacerLayout;
    [(TUILayout *)&v9 computedBoundsPrimitiveWithFlags:?];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end