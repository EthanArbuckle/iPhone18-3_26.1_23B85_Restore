@interface _TUIHStackSpacer
- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)a3;
@end

@implementation _TUIHStackSpacer

- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)a3
{
  if ((a3 & 2) != 0)
  {
    v10 = v3;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = _TUIHStackSpacer;
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