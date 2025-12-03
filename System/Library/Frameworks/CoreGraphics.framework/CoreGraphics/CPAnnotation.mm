@interface CPAnnotation
- (CPAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)annotation;
- (void)dealloc;
@end

@implementation CPAnnotation

- (void)dealloc
{
  cgAnnotation = self->_cgAnnotation;
  if (cgAnnotation)
  {
    CFRelease(cgAnnotation);
  }

  v4.receiver = self;
  v4.super_class = CPAnnotation;
  [(CPGraphicObject *)&v4 dealloc];
}

- (CPAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)annotation
{
  if (!annotation)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  if (!CGPDFDictionaryGetRect(*(annotation + 2), "Rect", &v10))
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = CPAnnotation;
  v5 = [(CPGraphicObject *)&v9 init];
  if (v5)
  {
    CFRetain(annotation);
    *(v5 + 21) = annotation;
    v6 = v11;
    *(v5 + 104) = v10;
    *(v5 + 120) = v6;
    v7 = v11;
    *(v5 + 3) = v10;
    *(v5 + 4) = v7;
  }

  return v5;
}

@end