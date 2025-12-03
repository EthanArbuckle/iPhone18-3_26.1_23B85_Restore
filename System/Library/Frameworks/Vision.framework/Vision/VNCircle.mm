@interface VNCircle
+ (VNCircle)zeroCircle;
- (BOOL)containsPoint:(VNPoint *)point;
- (BOOL)containsPoint:(VNPoint *)point inCircumferentialRingOfWidth:(double)ringWidth;
- (BOOL)isEqual:(id)equal;
- (VNCircle)init;
- (VNCircle)initWithCenter:(VNPoint *)center radius:(double)radius;
- (VNCircle)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNCircle

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  center = [(VNCircle *)self center];
  [(VNCircle *)self radius];
  v6 = v5;
  [(VNCircle *)self diameter];
  v8 = [v3 initWithFormat:@"center = %@; radius = %f (diameter = %f)", center, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    center = [(VNCircle *)self center];
    center2 = [v5 center];
    v8 = VisionCoreEqualOrNilObjects();

    if (v8)
    {
      [(VNCircle *)self radius];
      v10 = v9;
      [v5 radius];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VNCircle;
  v3 = [(VNCircle *)&v9 hash];
  center = [(VNCircle *)self center];
  v5 = [center hash] ^ __ROR8__(v3, 51);

  [(VNCircle *)self radius];
  v7 = v6;
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  return *&v7 ^ __ROR8__(v5, 51);
}

- (BOOL)containsPoint:(VNPoint *)point inCircumferentialRingOfWidth:(double)ringWidth
{
  v6 = point;
  if (ringWidth >= 0.0)
  {
    center = [(VNCircle *)self center];
    v9 = [VNVector alloc];
    [(VNPoint *)v6 x];
    v11 = v10;
    [center x];
    v13 = v12;
    [(VNPoint *)v6 y];
    v15 = v14;
    [center y];
    v17 = [(VNVector *)v9 initWithXComponent:v11 - v13 yComponent:v15 - v16];
    [(VNVector *)v17 length];
    v19 = v18;
    [(VNCircle *)self radius];
    v20 = ringWidth * 0.5;
    if (v19 <= ringWidth * 0.5 + v21)
    {
      [(VNVector *)v17 length];
      v23 = v22;
      [(VNCircle *)self radius];
      v7 = v23 >= v24 - v20;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsPoint:(VNPoint *)point
{
  v4 = point;
  center = [(VNCircle *)self center];
  v6 = [VNVector alloc];
  [(VNPoint *)v4 x];
  v8 = v7;
  [center x];
  v10 = v9;
  [(VNPoint *)v4 y];
  v12 = v11;
  [center y];
  v14 = [(VNVector *)v6 initWithXComponent:v8 - v10 yComponent:v12 - v13];
  [(VNVector *)v14 length];
  v16 = v15;
  [(VNCircle *)self radius];
  LOBYTE(self) = v16 <= v17;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_center forKey:@"ctr"];
  [coderCopy encodeDouble:@"rds" forKey:self->_radius];
}

- (VNCircle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ctr"];
  v6 = [v5 copy];

  [coderCopy decodeDoubleForKey:@"rds"];
  v7 = [(VNCircle *)self initWithCenter:v6 radius:?];

  return v7;
}

- (VNCircle)initWithCenter:(VNPoint *)center radius:(double)radius
{
  v6 = center;
  v14.receiver = self;
  v14.super_class = VNCircle;
  v7 = [(VNCircle *)&v14 init];
  v8 = v7;
  v9 = 0;
  v10 = fabs(radius) == INFINITY;
  if (radius >= 0.0 && !v10 && v7)
  {
    v11 = [(VNPoint *)v6 copy];
    v12 = v8->_center;
    v8->_center = v11;

    v8->_radius = radius;
    v9 = v8;
  }

  return v9;
}

- (VNCircle)init
{
  v3 = +[VNPoint zeroPoint];
  v4 = [(VNCircle *)self initWithCenter:v3 radius:0.0];

  return v4;
}

+ (VNCircle)zeroCircle
{
  if (+[VNCircle zeroCircle]::onceToken != -1)
  {
    dispatch_once(&+[VNCircle zeroCircle]::onceToken, &__block_literal_global_37736);
  }

  v3 = +[VNCircle zeroCircle]::zeroCircle;

  return v3;
}

void __22__VNCircle_zeroCircle__block_invoke()
{
  v0 = [VNCircle alloc];
  v3 = +[VNPoint zeroPoint];
  v1 = [(VNCircle *)v0 initWithCenter:0.0 radius:?];
  v2 = +[VNCircle zeroCircle]::zeroCircle;
  +[VNCircle zeroCircle]::zeroCircle = v1;
}

@end