@interface BKPDFAnnotationCounter
- (BKPDFAnnotationCounter)initWithDocument:(CGPDFDocument *)a3;
- (id)countMarkupAnnotations;
- (void)_countMarkupAnnotationsInArray:(CGPDFArray *)a3 result:(id)a4;
- (void)_visitPageTree:(CGPDFDictionary *)a3 visitBlock:(id)a4;
- (void)countMarkupAnnotationsWithCompletion:(id)a3;
- (void)dealloc;
- (void)setDocument:(CGPDFDocument *)a3;
@end

@implementation BKPDFAnnotationCounter

- (BKPDFAnnotationCounter)initWithDocument:(CGPDFDocument *)a3
{
  v6.receiver = self;
  v6.super_class = BKPDFAnnotationCounter;
  v4 = [(BKPDFAnnotationCounter *)&v6 init];
  if (v4)
  {
    v4->_document = CGPDFDocumentRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CGPDFDocumentRelease(self->_document);
  v3.receiver = self;
  v3.super_class = BKPDFAnnotationCounter;
  [(BKPDFAnnotationCounter *)&v3 dealloc];
}

- (void)setDocument:(CGPDFDocument *)a3
{
  if (self->_document != a3)
  {
    CGPDFDocumentRetain(a3);
    CGPDFDocumentRelease(self->_document);
    self->_document = a3;
  }
}

- (id)countMarkupAnnotations
{
  v3 = objc_alloc_init(BKPDFAnnotationCounterResult);
  value = 0;
  Catalog = CGPDFDocumentGetCatalog(self->_document);
  if (CGPDFDictionaryGetDictionary(Catalog, "Pages", &value))
  {
    v5 = value;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_88C80;
    v7[3] = &unk_1E4C98;
    v7[4] = self;
    v8 = v3;
    [(BKPDFAnnotationCounter *)self _visitPageTree:v5 visitBlock:v7];
  }

  return v3;
}

- (void)countMarkupAnnotationsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_88DB4;
  block[3] = &unk_1E4010;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_visitPageTree:(CGPDFDictionary *)a3 visitBlock:(id)a4
{
  v5 = a4;
  if (v5)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v7 = Mutable;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_89034;
      v11[3] = &unk_1E4CC0;
      v12 = v5;
      v13 = v7;
      v8 = objc_retainBlock(v11);
      CFArrayAppendValue(v7, a3);
      while (CFArrayGetCount(v7))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        if (sub_8927C(ValueAtIndex, "Pages"))
        {
          value = 0;
          if (CGPDFDictionaryGetArray(ValueAtIndex, "Kids", &value))
          {
            CGPDFArrayApplyBlock(value, v8, 0);
          }
        }

        CFArrayRemoveValueAtIndex(v7, 0);
      }

      CFRelease(v7);
    }
  }
}

- (void)_countMarkupAnnotationsInArray:(CGPDFArray *)a3 result:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_89164;
  v7[3] = &unk_1E4CE8;
  v8 = a4;
  v5 = v8;
  v6 = objc_retainBlock(v7);
  CGPDFArrayApplyBlock(a3, v6, 0);
}

@end