@interface PDFListItemElement
- (PDFListItemElement)initWithTextLines:(const void *)lines boundingBox:(id)box;
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

- (PDFListItemElement)initWithTextLines:(const void *)lines boundingBox:(id)box
{
  boxCopy = box;
  v11.receiver = self;
  v11.super_class = PDFListItemElement;
  v7 = [(PDFAtomicElement *)&v11 initWithType:4 boundingBox:boxCopy layoutDirection:1];
  v8 = v7;
  if (v7)
  {
    p_textLines = &v7->_textLines;
    if (&v8->_textLines != lines)
    {
      std::vector<std::shared_ptr<TextLine>>::__assign_with_size[abi:fe200100]<std::shared_ptr<TextLine>*,std::shared_ptr<TextLine>*>(p_textLines, *lines, *(lines + 1), (*(lines + 1) - *lines) >> 4);
    }
  }

  return v8;
}

@end