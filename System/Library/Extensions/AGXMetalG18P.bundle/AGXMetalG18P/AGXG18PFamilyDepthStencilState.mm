@interface AGXG18PFamilyDepthStencilState
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyDepthStencilState

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 6) = 469819399;
  *(self + 14) = -1;
  *(self + 30) = -1;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 2) = 0uLL;
  *(self + 9) |= 0xE0000000E000000uLL;
  return self;
}

@end