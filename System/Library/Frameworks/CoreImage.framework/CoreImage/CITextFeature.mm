@interface CITextFeature
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)bounds;
- (CITextFeature)initWithBounds:(CGRect)bounds topLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight subFeatures:(id)features messageString:(id)string;
- (void)dealloc;
@end

@implementation CITextFeature

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CITextFeature;
  [(CITextFeature *)&v3 dealloc];
}

- (CITextFeature)initWithBounds:(CGRect)bounds topLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight subFeatures:(id)features messageString:(id)string
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v11 = right.y;
  v12 = right.x;
  v13 = left.y;
  v14 = left.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v17 = bounds.origin.y;
  v18 = bounds.origin.x;
  v22.receiver = self;
  v22.super_class = CITextFeature;
  v19 = [(CIFeature *)&v22 init:*&bottomLeft.x];
  v20 = v19;
  if (v19)
  {
    v19->bounds.origin.x = v18;
    v19->bounds.origin.y = v17;
    v19->bounds.size.width = width;
    v19->bounds.size.height = height;
    v19->topLeft.x = v14;
    v19->topLeft.y = v13;
    v19->topRight.x = v12;
    v19->topRight.y = v11;
    v19->bottomLeft.x = v23;
    v19->bottomLeft.y = v24;
    v19->bottomRight.x = v25;
    v19->bottomRight.y = v26;
    v19->subFeatures = [*&x copy];
    v20->messageString = [*&y copy];
  }

  return v20;
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