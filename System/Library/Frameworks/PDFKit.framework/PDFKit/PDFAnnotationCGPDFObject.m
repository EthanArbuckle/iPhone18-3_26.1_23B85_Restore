@interface PDFAnnotationCGPDFObject
- (PDFAnnotationCGPDFObject)initWithCFObject:(void *)a3;
- (void)dealloc;
@end

@implementation PDFAnnotationCGPDFObject

- (PDFAnnotationCGPDFObject)initWithCFObject:(void *)a3
{
  v6.receiver = self;
  v6.super_class = PDFAnnotationCGPDFObject;
  v4 = [(PDFAnnotationCGPDFObject *)&v6 init];
  if (v4)
  {
    v4->cfValue = CFRetain(a3);
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