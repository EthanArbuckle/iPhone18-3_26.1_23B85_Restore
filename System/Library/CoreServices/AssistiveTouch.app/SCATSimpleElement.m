@interface SCATSimpleElement
- (BOOL)scatIsMemberOfGroup;
- (BOOL)scatIsOnScreen;
- (CGPoint)scatCenterPoint;
- (CGPoint)scatScreenPointForOperations;
- (CGRect)scatFrame;
- (CGRect)scatTextCursorFrame;
- (id)highestAncestorGroup;
@end

@implementation SCATSimpleElement

- (CGPoint)scatCenterPoint
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)scatScreenPointForOperations
{
  [(SCATSimpleElement *)self scatFrame];
  sub_1000427AC(v2, v3, v4, v5);

  AX_CGRectGetCenter();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)scatFrame
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)scatTextCursorFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)scatIsMemberOfGroup
{
  v2 = [(SCATSimpleElement *)self parentGroup];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)scatIsOnScreen
{
  [(SCATSimpleElement *)self frame];
  MinX = CGRectGetMinX(v13);
  [(SCATSimpleElement *)self frame];
  MaxX = CGRectGetMaxX(v14);
  [(SCATSimpleElement *)self frame];
  MinY = CGRectGetMinY(v15);
  [(SCATSimpleElement *)self frame];
  MaxY = CGRectGetMaxY(v16);
  [HNDHandManager screenFrame:]_0();
  v8 = v7;
  [HNDHandManager screenFrame:]_0();
  v9 = fmin(MinX, MinY);
  v10 = MaxX <= v8;
  if (MaxY > v11)
  {
    v10 = 0;
  }

  return v9 >= 0.0 && v10;
}

- (id)highestAncestorGroup
{
  v2 = [(SCATSimpleElement *)self parentGroup];
  v3 = [v2 highestAncestorGroup];

  return v3;
}

@end