@interface PDFDocumentViewPrivate
- (id).cxx_construct;
@end

@implementation PDFDocumentViewPrivate

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end