@interface GeometryInstance
- (__n128)initWithGeometry:(__n128)geometry transform:(__n128)transform mask:(__n128)mask;
- (__n128)transform;
@end

@implementation GeometryInstance

- (__n128)initWithGeometry:(__n128)geometry transform:(__n128)transform mask:(__n128)mask
{
  v11 = a7;
  v19.receiver = self;
  v19.super_class = GeometryInstance;
  v12 = [(GeometryInstance *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_geometry, a7);
    v13[2] = a2;
    v13[3] = geometry;
    v13[4] = transform;
    v13[5] = mask;
    v13->n128_u32[2] = a8;
  }

  return v13;
}

- (__n128)transform
{
  result = *(self + 32);
  v2 = *(self + 48);
  v3 = *(self + 64);
  v4 = *(self + 80);
  return result;
}

@end