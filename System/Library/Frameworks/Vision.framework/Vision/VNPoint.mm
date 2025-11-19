@interface VNPoint
+ (VNPoint)pointByApplyingVector:(VNVector *)vector toPoint:(VNPoint *)point;
+ (VNPoint)zeroPoint;
- (BOOL)isEqual:(id)a3;
- (CGPoint)location;
- (VNPoint)initWithCoder:(id)a3;
- (VNPoint)initWithX:(double)x y:(double)y;
- (double)distanceToPoint:(VNPoint *)point;
- (id)description;
- (id)transformedWith:(CGAffineTransform *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNPoint

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(VNPoint *)self x];
  v5 = v4;
  [(VNPoint *)self y];
  v7 = [v3 initWithFormat:@"[%f; %f]", v5, v6];

  return v7;
}

- (unint64_t)hash
{
  x = self->_x;
  if (x == 0.0)
  {
    x = 0.0;
  }

  y = self->_y;
  if (y == 0.0)
  {
    y = 0.0;
  }

  return *&y ^ __ROR8__(*&x, 51);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(VNPoint *)self x];
    v7 = v6;
    [v5 x];
    if (v7 == v8)
    {
      [(VNPoint *)self y];
      v11 = v10;
      [v5 y];
      v9 = v11 == v12;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)transformedWith:(CGAffineTransform *)a3
{
  [(VNPoint *)self location];
  v6 = [objc_alloc(objc_opt_class()) initWithLocation:{vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v4), *&a3->a, v5))}];

  return v6;
}

- (CGPoint)location
{
  [(VNPoint *)self x];
  v4 = v3;
  [(VNPoint *)self y];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeDouble:@"x" forKey:self->_x];
  [v4 encodeDouble:@"y" forKey:self->_y];
}

- (VNPoint)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"x"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"y"];
  v8 = [(VNPoint *)self initWithX:v6 y:v7];

  return v8;
}

- (VNPoint)initWithX:(double)x y:(double)y
{
  v11.receiver = self;
  v11.super_class = VNPoint;
  v6 = [(VNPoint *)&v11 init];
  v7 = v6;
  v8 = 0;
  v9 = fabs(x) == INFINITY;
  if (fabs(y) != INFINITY && !v9 && v6)
  {
    v6->_x = x;
    v6->_y = y;
    v8 = v6;
  }

  return v8;
}

- (double)distanceToPoint:(VNPoint *)point
{
  v4 = point;
  v5 = [[VNVector alloc] initWithVectorHead:self tail:v4];
  [(VNVector *)v5 length];
  v7 = v6;

  return v7;
}

+ (VNPoint)pointByApplyingVector:(VNVector *)vector toPoint:(VNPoint *)point
{
  v5 = vector;
  v6 = point;
  v7 = [VNPoint alloc];
  [(VNPoint *)v6 x];
  v9 = v8;
  [(VNVector *)v5 x];
  v11 = v10;
  [(VNPoint *)v6 y];
  v13 = v12;
  [(VNVector *)v5 y];
  v15 = [(VNPoint *)v7 initWithLocation:v9 + v11, v13 + v14];

  return v15;
}

+ (VNPoint)zeroPoint
{
  if (+[VNPoint zeroPoint]::onceToken != -1)
  {
    dispatch_once(&+[VNPoint zeroPoint]::onceToken, &__block_literal_global_5600);
  }

  v3 = +[VNPoint zeroPoint]::zeroPoint;

  return v3;
}

uint64_t __20__VNPoint_zeroPoint__block_invoke()
{
  v0 = [VNPoint alloc];
  +[VNPoint zeroPoint]::zeroPoint = [(VNPoint *)v0 initWithLocation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  return MEMORY[0x1EEE66BB8]();
}

@end