@interface SKRegion
+ (SKRegion)infiniteRegion;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isEqualToRegion:(id)a3;
- (SKRegion)initWithCoder:(id)a3;
- (SKRegion)initWithPath:(CGPathRef)path;
- (SKRegion)initWithRadius:(float)radius;
- (SKRegion)initWithSize:(CGSize)size;
- (SKRegion)inverseRegion;
- (SKRegion)regionByDifferenceFromRegion:(SKRegion *)region;
- (SKRegion)regionByIntersectionWithRegion:(SKRegion *)region;
- (SKRegion)regionByUnionWithRegion:(SKRegion *)region;
- (id)copyWithZone:(_NSZone *)a3;
- (void)containsPoints:(const float *)a3 locationStride:(int64_t)a4 results:(char *)a5 resultsStride:(int64_t)a6 count:(int)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRegion

+ (SKRegion)infiniteRegion
{
  v2 = sharedInfiniteRegion;
  if (!sharedInfiniteRegion)
  {
    v3 = objc_alloc_init(SKRegion);
    v4 = sharedInfiniteRegion;
    sharedInfiniteRegion = v3;

    v5 = [MEMORY[0x277D3D178] infiniteRegion];
    v6 = *(sharedInfiniteRegion + 8);
    *(sharedInfiniteRegion + 8) = v5;

    v2 = sharedInfiniteRegion;
  }

  return v2;
}

- (SKRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKRegion;
  v5 = [(SKRegion *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_region"];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  region = self->_region;
  if (region)
  {
    [v5 encodeObject:region forKey:@"_region"];
  }
}

- (BOOL)isEqualToRegion:(id)a3
{
  region = self->_region;
  if (region == *(a3 + 1))
  {
    return 1;
  }

  else
  {
    return [(PKRegion *)region isEqualToRegion:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_region);
  return v4;
}

- (SKRegion)initWithRadius:(float)radius
{
  v10.receiver = self;
  v10.super_class = SKRegion;
  v4 = [(SKRegion *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D3D178]);
    *&v6 = radius;
    v7 = [v5 initWithRadius:v6];
    region = v4->_region;
    v4->_region = v7;
  }

  return v4;
}

- (SKRegion)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SKRegion;
  v5 = [(SKRegion *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D3D178]) initWithSize:{width, height}];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (SKRegion)initWithPath:(CGPathRef)path
{
  v8.receiver = self;
  v8.super_class = SKRegion;
  v4 = [(SKRegion *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D3D178]) initWithPath:path];
    region = v4->_region;
    v4->_region = v5;
  }

  return v4;
}

- (SKRegion)inverseRegion
{
  v2 = [(SKRegion *)self copy];
  v3 = [v2[1] inverseRegion];
  v4 = v2[1];
  v2[1] = v3;

  return v2;
}

- (SKRegion)regionByUnionWithRegion:(SKRegion *)region
{
  v4 = region;
  v5 = [(SKRegion *)self copy];
  v6 = [v5[1] regionByUnionWithRegion:v4->_region];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (SKRegion)regionByDifferenceFromRegion:(SKRegion *)region
{
  v4 = region;
  v5 = [(SKRegion *)self copy];
  v6 = [v5[1] regionByDifferenceFromRegion:v4->_region];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (SKRegion)regionByIntersectionWithRegion:(SKRegion *)region
{
  v4 = region;
  v5 = [(SKRegion *)self copy];
  v6 = [v5[1] regionByIntersectionWithRegion:v4->_region];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)containsPoint:(CGPoint)point
{
  if (!self->_region)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  PKGet_INV_PTM_RATIO();
  v7 = v6;
  v8 = x * v6;
  v9 = y * v7;
  region = self->_region;

  return [(PKRegion *)region containsPoint:v8, v9];
}

- (void)containsPoints:(const float *)a3 locationStride:(int64_t)a4 results:(char *)a5 resultsStride:(int64_t)a6 count:(int)a7
{
  if (a7 >= 1)
  {
    v21 = v12;
    v22 = v11;
    v23 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v7;
    v27 = v13;
    v28 = v14;
    v15 = a7;
    v20 = (a3 + 1);
    do
    {
      *a5 = [(SKRegion *)self containsPoint:*(v20 - 1), *v20, v21, v22, v23, v24, v25, v26, v27, v28];
      a5 += a6;
      v20 = (v20 + a4);
      --v15;
    }

    while (v15);
  }
}

@end