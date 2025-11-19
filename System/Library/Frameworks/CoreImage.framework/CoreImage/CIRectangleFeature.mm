@interface CIRectangleFeature
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)bounds;
- (CIRectangleFeature)initWithBounds:(CGRect)a3 topLeft:(CGPoint)a4 topRight:(CGPoint)a5 bottomLeft:(CGPoint)a6 bottomRight:(CGPoint)a7;
@end

@implementation CIRectangleFeature

- (CIRectangleFeature)initWithBounds:(CGRect)a3 topLeft:(CGPoint)a4 topRight:(CGPoint)a5 bottomLeft:(CGPoint)a6 bottomRight:(CGPoint)a7
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  v16.receiver = self;
  v16.super_class = CIRectangleFeature;
  result = [(CIFeature *)&v16 init:*&a6.x];
  if (result)
  {
    result->bounds.origin.x = v14;
    result->bounds.origin.y = v13;
    result->bounds.size.width = width;
    result->bounds.size.height = height;
    result->topLeft.x = v10;
    result->topLeft.y = v9;
    result->topRight.x = x;
    result->topRight.y = y;
    result->bottomLeft.x = v17;
    result->bottomLeft.y = v18;
    result->bottomRight.x = v19;
    result->bottomRight.y = v20;
  }

  return result;
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)topLeft
{
  objc_copyStruct(v4, &self->topLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topRight
{
  objc_copyStruct(v4, &self->topRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomLeft
{
  objc_copyStruct(v4, &self->bottomLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomRight
{
  objc_copyStruct(v4, &self->bottomRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end