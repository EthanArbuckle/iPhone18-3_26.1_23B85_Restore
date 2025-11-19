@interface PDFViewLayoutPrivate
- (id).cxx_construct;
@end

@implementation PDFViewLayoutPrivate

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end