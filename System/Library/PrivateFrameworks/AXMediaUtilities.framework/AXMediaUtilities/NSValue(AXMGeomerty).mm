@interface NSValue(AXMGeomerty)
+ (id)axmValueWithCGPoint:()AXMGeomerty;
+ (id)axmValueWithCGRect:()AXMGeomerty;
+ (id)axmValueWithCGSize:()AXMGeomerty;
+ (id)axmValueWithCGVector:()AXMGeomerty;
- (double)AXMPointValue;
- (double)AXMRectValue;
- (double)AXMSizeValue;
- (double)AXMVectorValue;
- (uint64_t)AXMAffineTransformValue;
@end

@implementation NSValue(AXMGeomerty)

+ (id)axmValueWithCGPoint:()AXMGeomerty
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

+ (id)axmValueWithCGVector:()AXMGeomerty
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGVector=dd}"];

  return v2;
}

+ (id)axmValueWithCGSize:()AXMGeomerty
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGSize=dd}"];

  return v2;
}

+ (id)axmValueWithCGRect:()AXMGeomerty
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

- (double)AXMPointValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2];
  return *v2;
}

- (double)AXMVectorValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2];
  return *v2;
}

- (double)AXMSizeValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2];
  return *v2;
}

- (double)AXMRectValue
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2];
  return *v2;
}

- (uint64_t)AXMAffineTransformValue
{
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [self getValue:x8_0];
}

@end