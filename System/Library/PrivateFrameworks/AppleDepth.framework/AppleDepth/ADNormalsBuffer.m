@interface ADNormalsBuffer
- (id).cxx_construct;
@end

@implementation ADNormalsBuffer

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end