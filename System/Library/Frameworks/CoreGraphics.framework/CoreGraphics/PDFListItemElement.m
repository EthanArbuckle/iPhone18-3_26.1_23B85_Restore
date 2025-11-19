@interface PDFListItemElement
- (PDFListItemElement)initWithTextLines:(const void *)a3 boundingBox:(id)a4;
- (id).cxx_construct;
@end

@implementation PDFListItemElement

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

- (PDFListItemElement)initWithTextLines:(const void *)a3 boundingBox:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PDFListItemElement;
  v7 = [(PDFAtomicElement *)&v11 initWithType:4 boundingBox:v6 layoutDirection:1];
  v8 = v7;
  if (v7)
  {
    p_textLines = &v7->_textLines;
    if (&v8->_textLines != a3)
    {
      std::vector<std::shared_ptr<TextLine>>::__assign_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(p_textLines, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
    }
  }

  return v8;
}

@end