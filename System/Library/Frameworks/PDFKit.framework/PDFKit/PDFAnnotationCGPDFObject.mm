@interface PDFAnnotationCGPDFObject
- (PDFAnnotationCGPDFObject)initWithCFObject:(void *)object;
- (void)dealloc;
@end

@implementation PDFAnnotationCGPDFObject

- (PDFAnnotationCGPDFObject)initWithCFObject:(void *)object
{
  v6.receiver = self;
  v6.super_class = PDFAnnotationCGPDFObject;
  v4 = [(PDFAnnotationCGPDFObject *)&v6 init];
  if (v4)
  {
    v4->cfValue = CFRetain(object);
  }

  return v4;
}

- (void)dealloc
{
  cfValue = self->cfValue;
  if (cfValue)
  {
    CFRelease(cfValue);
  }

  v4.receiver = self;
  v4.super_class = PDFAnnotationCGPDFObject;
  [(PDFAnnotationCGPDFObject *)&v4 dealloc];
}

@end