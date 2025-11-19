@interface VNVector
+ (VNVector)unitVectorForVector:(VNVector *)vector;
+ (VNVector)vectorByAddingVector:(VNVector *)v1 toVector:(VNVector *)v2;
+ (VNVector)vectorByMultiplyingVector:(VNVector *)vector byScalar:(double)scalar;
+ (VNVector)vectorBySubtractingVector:(VNVector *)v1 fromVector:(VNVector *)v2;
+ (VNVector)zeroVector;
+ (double)dotProductOfVector:(VNVector *)v1 vector:(VNVector *)v2;
- (BOOL)isEqual:(id)a3;
- (VNVector)initWithCoder:(id)a3;
- (VNVector)initWithR:(double)r theta:(double)theta;
- (VNVector)initWithVectorHead:(VNPoint *)head tail:(VNPoint *)tail;
- (VNVector)initWithXComponent:(double)x yComponent:(double)y;
- (double)squaredLength;
- (double)theta;
- (id)description;
- (unint64_t)hash;
@end

@implementation VNVector

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(VNVector *)self x];
  v5 = v4;
  [(VNVector *)self y];
  v7 = v6;
  [(VNVector *)self r];
  v9 = v8;
  [(VNVector *)self theta];
  v11 = [v3 initWithFormat:@"(x; y) = (%f; %f); (r; theta) = (%f; %f)", v5, v7, v9, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_vectorProjections;
    v6 = VisionCoreEqualOrNilObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNVector;
  return [(VNPoint *)self->_vectorProjections hash]^ __ROR8__([(VNVector *)&v3 hash], 51);
}

- (double)squaredLength
{
  [(VNVector *)self x];
  v4 = v3 * v3;
  [(VNVector *)self y];
  return v4 + v5 * v5;
}

- (double)theta
{
  [(VNPoint *)self->_vectorProjections y];
  v4 = v3;
  [(VNPoint *)self->_vectorProjections x];
  v6 = v4 / v5;

  return atan(v6);
}

- (VNVector)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vproj"];
  v6 = [v5 copy];

  [v6 x];
  v8 = v7;
  [v6 y];
  v10 = [(VNVector *)self initWithXComponent:v8 yComponent:v9];

  return v10;
}

- (VNVector)initWithVectorHead:(VNPoint *)head tail:(VNPoint *)tail
{
  v6 = head;
  v7 = tail;
  [(VNPoint *)v7 x];
  v9 = v8;
  [(VNPoint *)v6 x];
  v11 = v10;
  [(VNPoint *)v7 y];
  v13 = v12;
  [(VNPoint *)v6 y];
  v15 = [(VNVector *)self initWithXComponent:v9 - v11 yComponent:v13 - v14];

  return v15;
}

- (VNVector)initWithR:(double)r theta:(double)theta
{
  v6 = 0;
  v7 = fabs(theta) == INFINITY;
  if ((*&r & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v7)
  {
    v8 = __sincos_stret(theta);
    self = [(VNVector *)self initWithXComponent:v8.__cosval * r yComponent:v8.__sinval * r];
    v6 = self;
  }

  return v6;
}

- (VNVector)initWithXComponent:(double)x yComponent:(double)y
{
  v13.receiver = self;
  v13.super_class = VNVector;
  v6 = [(VNVector *)&v13 init];
  v7 = v6;
  v8 = 0;
  v9 = fabs(x) == INFINITY;
  if (fabs(y) != INFINITY && !v9 && v6)
  {
    v10 = [[VNPoint alloc] initWithX:x y:y];
    vectorProjections = v7->_vectorProjections;
    v7->_vectorProjections = v10;

    v8 = v7;
  }

  return v8;
}

+ (double)dotProductOfVector:(VNVector *)v1 vector:(VNVector *)v2
{
  v5 = v1;
  v6 = v2;
  [(VNVector *)v5 x];
  v8 = v7;
  [(VNVector *)v6 x];
  v10 = v9;
  [(VNVector *)v5 y];
  v12 = v11;
  [(VNVector *)v6 y];
  v14 = v12 * v13 + v8 * v10;

  return v14;
}

+ (VNVector)vectorBySubtractingVector:(VNVector *)v1 fromVector:(VNVector *)v2
{
  v5 = v1;
  v6 = v2;
  v7 = [VNVector alloc];
  [(VNVector *)v6 x];
  v9 = v8;
  [(VNVector *)v5 x];
  v11 = v10;
  [(VNVector *)v6 y];
  v13 = v12;
  [(VNVector *)v5 y];
  v15 = [(VNVector *)v7 initWithXComponent:v9 - v11 yComponent:v13 - v14];

  return v15;
}

+ (VNVector)vectorByAddingVector:(VNVector *)v1 toVector:(VNVector *)v2
{
  v5 = v1;
  v6 = v2;
  v7 = [VNVector alloc];
  [(VNVector *)v5 x];
  v9 = v8;
  [(VNVector *)v6 x];
  v11 = v10;
  [(VNVector *)v5 y];
  v13 = v12;
  [(VNVector *)v6 y];
  v15 = [(VNVector *)v7 initWithXComponent:v9 + v11 yComponent:v13 + v14];

  return v15;
}

+ (VNVector)vectorByMultiplyingVector:(VNVector *)vector byScalar:(double)scalar
{
  v5 = vector;
  v6 = [VNVector alloc];
  [(VNVector *)v5 x];
  v8 = v7;
  [(VNVector *)v5 y];
  v10 = [(VNVector *)v6 initWithXComponent:v8 * scalar yComponent:v9 * scalar];

  return v10;
}

+ (VNVector)unitVectorForVector:(VNVector *)vector
{
  v4 = vector;
  [(VNVector *)v4 length];
  v6 = v5;
  if (v5 == 0.0)
  {
    v7 = [a1 copy];
  }

  else
  {
    v8 = [VNVector alloc];
    [(VNVector *)v4 x];
    v10 = v9;
    [(VNVector *)v4 y];
    v7 = [(VNVector *)v8 initWithXComponent:v10 / v6 yComponent:v11 / v6];
  }

  v12 = v7;

  return v12;
}

+ (VNVector)zeroVector
{
  if (+[VNVector zeroVector]::onceToken != -1)
  {
    dispatch_once(&+[VNVector zeroVector]::onceToken, &__block_literal_global_26391);
  }

  v3 = +[VNVector zeroVector]::zeroVector;

  return v3;
}

uint64_t __22__VNVector_zeroVector__block_invoke()
{
  +[VNVector zeroVector]::zeroVector = [[VNVector alloc] initWithXComponent:0.0 yComponent:0.0];

  return MEMORY[0x1EEE66BB8]();
}

@end