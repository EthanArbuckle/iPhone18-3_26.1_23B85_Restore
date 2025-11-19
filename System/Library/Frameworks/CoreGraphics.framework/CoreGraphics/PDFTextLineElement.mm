@interface PDFTextLineElement
- (PDFTextLineElement)initWithTextLine:(const void *)a3 boundingBox:(id)a4;
- (id).cxx_construct;
- (shared_ptr<TextLine>)textLine;
@end

@implementation PDFTextLineElement

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

- (shared_ptr<TextLine>)textLine
{
  objc_copyCppObjectAtomic(v2, &self->_textLine, __copy_helper_atomic_property_);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (PDFTextLineElement)initWithTextLine:(const void *)a3 boundingBox:(id)a4
{
  v12.receiver = self;
  v12.super_class = PDFTextLineElement;
  v5 = [(PDFAtomicElement *)&v12 initWithType:1 boundingBox:a4 layoutDirection:1];
  v6 = v5;
  if (v5)
  {
    p_textLine = &v5->_textLine;
    v9 = *a3;
    v8 = *(a3 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v5->_textLine.__cntrl_;
    p_textLine->__ptr_ = v9;
    v6->_textLine.__cntrl_ = v8;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](cntrl);
    }
  }

  return v6;
}

@end