@interface CMFacePose
- (__n128)rotation;
- (__n128)setRotation:(__n128)rotation;
@end

@implementation CMFacePose

- (__n128)rotation
{
  result = *(self + 128);
  v2 = *(self + 144);
  v3 = *(self + 160);
  return result;
}

- (__n128)setRotation:(__n128)rotation
{
  result[8] = a2;
  result[9] = rotation;
  result[10] = a4;
  return result;
}

@end