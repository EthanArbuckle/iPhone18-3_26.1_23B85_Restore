@interface CIQRCodeFeature
+ (CIQRCodeFeature)featureWithInternalRepresentation:(id *)a3;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)bounds;
- (CIQRCodeFeature)initWithCoder:(id)a3;
- (CIQRCodeFeature)initWithInternalRepresentation:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CIQRCodeFeature

- (CIQRCodeFeature)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = CIQRCodeFeature;
  v4 = [(CIFeature *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->bounds.origin.x = decodeRectForKey(a3, @"bounds");
    v5->bounds.origin.y = v6;
    v5->bounds.size.width = v7;
    v5->bounds.size.height = v8;
    v5->topLeft.x = decodePointForKey(a3, @"topLeft");
    v5->topLeft.y = v9;
    v5->topRight.x = decodePointForKey(a3, @"topRight");
    v5->topRight.y = v10;
    v5->bottomLeft.x = decodePointForKey(a3, @"bottomLeft");
    v5->bottomLeft.y = v11;
    v5->bottomRight.x = decodePointForKey(a3, @"bottomRight");
    v5->bottomRight.y = v12;
    v5->symbolDescriptor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"symbolDescriptor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  encodeRectForKey(a3, @"bounds", self->bounds.origin.x, self->bounds.origin.y, self->bounds.size.width, self->bounds.size.height);
  encodePointForKey(a3, @"topLeft", self->topLeft.x);
  encodePointForKey(a3, @"topRight", self->topRight.x);
  encodePointForKey(a3, @"bottomLeft", self->bottomLeft.x);
  encodePointForKey(a3, @"bottomRight", self->bottomRight.x);
  symbolDescriptor = self->symbolDescriptor;

  [a3 encodeObject:symbolDescriptor forKey:@"symbolDescriptor"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CIQRCodeFeature allocWithZone:?];
  v6 = [(CIQRCodeDescriptor *)self->symbolDescriptor copyWithZone:a3];
  size = self->bounds.size;
  topLeft = self->topLeft;
  v13[0] = self->bounds.origin;
  v13[1] = size;
  topRight = self->topRight;
  v13[2] = topLeft;
  v13[3] = topRight;
  bottomRight = self->bottomRight;
  v13[4] = self->bottomLeft;
  v13[5] = bottomRight;
  v14 = v6;
  v11 = [(CIQRCodeFeature *)v5 initWithInternalRepresentation:v13];

  return v11;
}

- (void)dealloc
{
  symbolDescriptor = self->symbolDescriptor;
  if (symbolDescriptor)
  {
  }

  v4.receiver = self;
  v4.super_class = CIQRCodeFeature;
  [(CIQRCodeFeature *)&v4 dealloc];
}

- (CIQRCodeFeature)initWithInternalRepresentation:(id *)a3
{
  v8.receiver = self;
  v8.super_class = CIQRCodeFeature;
  v4 = [(CIFeature *)&v8 init];
  v5 = v4;
  if (v4)
  {
    size = a3->var0.size;
    v4->bounds.origin = a3->var0.origin;
    v4->bounds.size = size;
    v4->topLeft = a3->var1;
    v4->topRight = a3->var2;
    v4->bottomLeft = a3->var3;
    v4->bottomRight = a3->var4;
    v4->symbolDescriptor = a3->var5;
  }

  return v5;
}

+ (CIQRCodeFeature)featureWithInternalRepresentation:(id *)a3
{
  v3 = [[CIQRCodeFeature alloc] initWithInternalRepresentation:a3];

  return v3;
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