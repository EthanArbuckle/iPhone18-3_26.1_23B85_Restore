@interface CMFacePose
- (__n128)rotation;
- (__n128)setRotation:(__n128)a3;
@end

@implementation CMFacePose

- (__n128)rotation
{
  result = *(a1 + 128);
  v2 = *(a1 + 144);
  v3 = *(a1 + 160);
  return result;
}

- (__n128)setRotation:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  return result;
}

@end