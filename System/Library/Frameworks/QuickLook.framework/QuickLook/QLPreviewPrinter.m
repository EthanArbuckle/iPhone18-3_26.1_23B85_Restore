@interface QLPreviewPrinter
- (QLPreviewPrinter)initWithPreviewPrinter:(id)a3;
- (int64_t)numberOfPages;
- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)prepareForDrawingPages:(_NSRange)a3;
@end

@implementation QLPreviewPrinter

- (QLPreviewPrinter)initWithPreviewPrinter:(id)a3
{
  v5 = a3;
  if (v5 && (v9.receiver = self, v9.super_class = QLPreviewPrinter, v6 = [(QLPreviewPrinter *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_printer, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)numberOfPages
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(QLPreviewPrinter *)self printer];
  [(UIPrintPageRenderer *)self printableRect];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__QLPreviewPrinter_numberOfPages__block_invoke;
  v8[3] = &unk_278B58260;
  v8[4] = &v9;
  [v3 numberOfPagesWithSize:v8 completionHandler:{v4, v5}];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)prepareForDrawingPages:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v8 = [(QLPreviewPrinter *)self printer];
  [(UIPrintPageRenderer *)self printableRect];
  [v8 prepareForDrawingPages:location ofSize:{length, v6, v7}];
}

- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v6 = [(QLPreviewPrinter *)self printer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__QLPreviewPrinter_drawPageAtIndex_inRect___block_invoke;
  v15[3] = &unk_278B58288;
  v15[4] = &v16;
  [v6 pdfDataForPageAtIndex:a3 withCompletionHandler:v15];

  if (v17[5])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    [(UIPrintPageRenderer *)self paperRect];
    CGContextTranslateCTM(CurrentContext, 0.0, v8);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    [(UIPrintPageRenderer *)self printableRect];
    v10 = v9;
    [(UIPrintPageRenderer *)self printableRect];
    CGContextTranslateCTM(CurrentContext, v10, v11);
    v12 = CGDataProviderCreateWithCFData(v17[5]);
    v13 = CGPDFDocumentCreateWithProvider(v12);
    Page = CGPDFDocumentGetPage(v13, 1uLL);
    CGContextDrawPDFPage(CurrentContext, Page);
    CGPDFDocumentRelease(v13);
    CGDataProviderRelease(v12);
    CGContextRestoreGState(CurrentContext);
  }

  _Block_object_dispose(&v16, 8);
}

@end