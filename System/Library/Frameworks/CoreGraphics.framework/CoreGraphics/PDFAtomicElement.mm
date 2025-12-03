@interface PDFAtomicElement
- (PDFAtomicElement)initWithType:(unsigned int)type boundingBox:(id)box layoutDirection:(unint64_t)direction;
- (PDFCRGroupRegion)parent;
@end

@implementation PDFAtomicElement

- (PDFCRGroupRegion)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (PDFAtomicElement)initWithType:(unsigned int)type boundingBox:(id)box layoutDirection:(unint64_t)direction
{
  boxCopy = box;
  v13.receiver = self;
  v13.super_class = PDFAtomicElement;
  v10 = [(PDFAtomicElement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_boundingQuad, box);
    v11->_layoutDirection = direction;
    v11->_type = type;
    objc_storeWeak(&v11->_parent, 0);
  }

  return v11;
}

@end