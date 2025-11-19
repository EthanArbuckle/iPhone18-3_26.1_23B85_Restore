@interface AGXG18PFamilyIntersectionProgram
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyIntersectionProgram

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 40) = 0u;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  *(self + 540) = 0;
  *(self + 68) = 0u;
  *(self + 276) = 0;
  return self;
}

@end