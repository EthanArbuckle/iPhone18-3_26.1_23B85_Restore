@interface SKRegion
+ (SKRegion)infiniteRegion;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isEqualToRegion:(id)region;
- (SKRegion)initWithCoder:(id)coder;
- (SKRegion)initWithPath:(CGPathRef)path;
- (SKRegion)initWithRadius:(float)radius;
- (SKRegion)initWithSize:(CGSize)size;
- (SKRegion)inverseRegion;
- (SKRegion)regionByDifferenceFromRegion:(SKRegion *)region;
- (SKRegion)regionByIntersectionWithRegion:(SKRegion *)region;
- (SKRegion)regionByUnionWithRegion:(SKRegion *)region;
- (id)copyWithZone:(_NSZone *)zone;
- (void)containsPoints:(const float *)points locationStride:(int64_t)stride results:(char *)results resultsStride:(int64_t)resultsStride count:(int)count;
- (void)encodeWithCoder:(id)coder;
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

    infiniteRegion = [MEMORY[0x277D3D178] infiniteRegion];
    v6 = *(sharedInfiniteRegion + 8);
    *(sharedInfiniteRegion + 8) = infiniteRegion;

    v2 = sharedInfiniteRegion;
  }

  return v2;
}

- (SKRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKRegion;
  v5 = [(SKRegion *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_region"];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  region = self->_region;
  if (region)
  {
    [coderCopy encodeObject:region forKey:@"_region"];
  }
}

- (BOOL)isEqualToRegion:(id)region
{
  region = self->_region;
  if (region == *(region + 1))
  {
    return 1;
  }

  else
  {
    return [(PKRegion *)region isEqualToRegion:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  inverseRegion = [v2[1] inverseRegion];
  v4 = v2[1];
  v2[1] = inverseRegion;

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

- (void)containsPoints:(const float *)points locationStride:(int64_t)stride results:(char *)results resultsStride:(int64_t)resultsStride count:(int)count
{
  if (count >= 1)
  {
    v21 = v12;
    v22 = v11;
    v23 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v7;
    v27 = v13;
    v28 = v14;
    countCopy = count;
    v20 = (points + 1);
    do
    {
      *results = [(SKRegion *)self containsPoint:*(v20 - 1), *v20, v21, v22, v23, v24, v25, v26, v27, v28];
      results += resultsStride;
      v20 = (v20 + stride);
      --countCopy;
    }

    while (countCopy);
  }
}

@end