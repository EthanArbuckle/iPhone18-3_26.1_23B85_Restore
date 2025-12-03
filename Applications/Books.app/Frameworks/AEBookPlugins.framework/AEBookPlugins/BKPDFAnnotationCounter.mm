@interface BKPDFAnnotationCounter
- (BKPDFAnnotationCounter)initWithDocument:(CGPDFDocument *)document;
- (id)countMarkupAnnotations;
- (void)_countMarkupAnnotationsInArray:(CGPDFArray *)array result:(id)result;
- (void)_visitPageTree:(CGPDFDictionary *)tree visitBlock:(id)block;
- (void)countMarkupAnnotationsWithCompletion:(id)completion;
- (void)dealloc;
- (void)setDocument:(CGPDFDocument *)document;
@end

@implementation BKPDFAnnotationCounter

- (BKPDFAnnotationCounter)initWithDocument:(CGPDFDocument *)document
{
  v6.receiver = self;
  v6.super_class = BKPDFAnnotationCounter;
  v4 = [(BKPDFAnnotationCounter *)&v6 init];
  if (v4)
  {
    v4->_document = CGPDFDocumentRetain(document);
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

- (void)setDocument:(CGPDFDocument *)document
{
  if (self->_document != document)
  {
    CGPDFDocumentRetain(document);
    CGPDFDocumentRelease(self->_document);
    self->_document = document;
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

- (void)countMarkupAnnotationsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_88DB4;
  block[3] = &unk_1E4010;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_visitPageTree:(CGPDFDictionary *)tree visitBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v7 = Mutable;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_89034;
      v11[3] = &unk_1E4CC0;
      v12 = blockCopy;
      v13 = v7;
      v8 = objc_retainBlock(v11);
      CFArrayAppendValue(v7, tree);
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

- (void)_countMarkupAnnotationsInArray:(CGPDFArray *)array result:(id)result
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_89164;
  v7[3] = &unk_1E4CE8;
  resultCopy = result;
  v5 = resultCopy;
  v6 = objc_retainBlock(v7);
  CGPDFArrayApplyBlock(array, v6, 0);
}

@end