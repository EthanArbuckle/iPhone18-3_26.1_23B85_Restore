@interface PDFAnnotationElement
- (PDFAnnotationElement)initWithAnnotation:(CGPDFAnnotation *)annotation boundingBox:(id)box;
@end

@implementation PDFAnnotationElement

- (PDFAnnotationElement)initWithAnnotation:(CGPDFAnnotation *)annotation boundingBox:(id)box
{
  v6.receiver = self;
  v6.super_class = PDFAnnotationElement;
  result = [(PDFAtomicElement *)&v6 initWithType:2 boundingBox:box layoutDirection:1];
  if (result)
  {
    result->_annotation = annotation;
  }

  return result;
}

@end