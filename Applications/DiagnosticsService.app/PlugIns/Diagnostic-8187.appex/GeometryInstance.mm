@interface GeometryInstance
- (__n128)initWithGeometry:(__n128)a3 transform:(__n128)a4 mask:(__n128)a5;
- (__n128)transform;
@end

@implementation GeometryInstance

- (__n128)initWithGeometry:(__n128)a3 transform:(__n128)a4 mask:(__n128)a5
{
  v11 = a7;
  v19.receiver = a1;
  v19.super_class = GeometryInstance;
  v12 = [(GeometryInstance *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_geometry, a7);
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a5;
    v13->n128_u32[2] = a8;
  }

  return v13;
}

- (__n128)transform
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  return result;
}

@end