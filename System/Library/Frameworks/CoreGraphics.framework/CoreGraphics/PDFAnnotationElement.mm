@interface PDFAnnotationElement
- (PDFAnnotationElement)initWithAnnotation:(CGPDFAnnotation *)a3 boundingBox:(id)a4;
@end

@implementation PDFAnnotationElement

- (PDFAnnotationElement)initWithAnnotation:(CGPDFAnnotation *)a3 boundingBox:(id)a4
{
  v6.receiver = self;
  v6.super_class = PDFAnnotationElement;
  result = [(PDFAtomicElement *)&v6 initWithType:2 boundingBox:a4 layoutDirection:1];
  if (result)
  {
    result->_annotation = a3;
  }

  return result;
}

@end