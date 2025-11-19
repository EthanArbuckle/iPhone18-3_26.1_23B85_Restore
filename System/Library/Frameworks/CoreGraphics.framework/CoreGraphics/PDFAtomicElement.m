@interface PDFAtomicElement
- (PDFAtomicElement)initWithType:(unsigned int)a3 boundingBox:(id)a4 layoutDirection:(unint64_t)a5;
- (PDFCRGroupRegion)parent;
@end

@implementation PDFAtomicElement

- (PDFCRGroupRegion)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (PDFAtomicElement)initWithType:(unsigned int)a3 boundingBox:(id)a4 layoutDirection:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PDFAtomicElement;
  v10 = [(PDFAtomicElement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_boundingQuad, a4);
    v11->_layoutDirection = a5;
    v11->_type = a3;
    objc_storeWeak(&v11->_parent, 0);
  }

  return v11;
}

@end