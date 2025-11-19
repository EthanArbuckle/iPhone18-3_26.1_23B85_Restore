@interface _WKWebViewPrintFormatter
- (BOOL)requiresMainThread;
- (CGImage)_printPreviewImage;
- (CGPDFDocument)_printedDocument;
- (CGRect)rectForPageAtIndex:(int64_t)a3;
- (id).cxx_construct;
- (int64_t)_recalcPageCount;
- (void)_drawInRectUsingBitmap:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)_drawInRectUsingPDF:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)_invalidatePrintRenderingState;
- (void)_setNeedsRecalc;
- (void)_setPrintPreviewImage:(CGImage *)a3;
- (void)_setPrintedDocument:(CGPDFDocument *)a3;
- (void)_setSnapshotPaperRect:(CGRect)a3;
- (void)_waitForPrintedDocumentOrImage;
- (void)drawInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)setFrameToPrint:(id)a3;
@end

@implementation _WKWebViewPrintFormatter

- (BOOL)requiresMainThread
{
  v2 = [-[_WKWebViewPrintFormatter _webView](self "_webView")];

  return [v2 _wk_printFormatterRequiresMainThread];
}

- (void)setFrameToPrint:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_frameToPrint.m_ptr;
  self->_frameToPrint.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (CGPDFDocument)_printedDocument
{
  if ([(_WKWebViewPrintFormatter *)self requiresMainThread])
  {
    return self->_printedDocument.m_ptr;
  }

  v4 = 0;
  p_printLock = &self->_printLock;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(&self->_printLock, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30]();
    v6 = 1;
    p_printLock = &self->_printLock;
  }

  m_ptr = self->_printedDocument.m_ptr;
  atomic_compare_exchange_strong_explicit(p_printLock, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    WTF::Lock::unlockSlow(p_printLock);
  }

  return m_ptr;
}

- (void)_setPrintedDocument:(CGPDFDocument *)a3
{
  if ([(_WKWebViewPrintFormatter *)self requiresMainThread])
  {
    if (a3)
    {
      CFRetain(a3);
    }

    m_ptr = self->_printedDocument.m_ptr;
    self->_printedDocument.m_ptr = a3;
    if (m_ptr)
    {

      CFRelease(m_ptr);
    }
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(&self->_printLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x19EB01E30](&self->_printLock);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v7 = self->_printedDocument.m_ptr;
    self->_printedDocument.m_ptr = a3;
    if (v7)
    {
      CFRelease(v7);
    }

    WTF::Condition::notifyOne(&self->_printCompletionCondition);
    v8 = 1;
    atomic_compare_exchange_strong_explicit(&self->_printLock, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {

      WTF::Lock::unlockSlow(&self->_printLock);
    }
  }
}

- (CGImage)_printPreviewImage
{
  if ([(_WKWebViewPrintFormatter *)self requiresMainThread])
  {
    return self->_printPreviewImage.m_ptr;
  }

  v4 = 0;
  p_printLock = &self->_printLock;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(&self->_printLock, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30]();
    v6 = 1;
    p_printLock = &self->_printLock;
  }

  m_ptr = self->_printPreviewImage.m_ptr;
  atomic_compare_exchange_strong_explicit(p_printLock, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    WTF::Lock::unlockSlow(p_printLock);
  }

  return m_ptr;
}

- (void)_setPrintPreviewImage:(CGImage *)a3
{
  if ([(_WKWebViewPrintFormatter *)self requiresMainThread])
  {
    if (a3)
    {
      CFRetain(a3);
    }

    m_ptr = self->_printPreviewImage.m_ptr;
    self->_printPreviewImage.m_ptr = a3;
    if (m_ptr)
    {

      CFRelease(m_ptr);
    }
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(&self->_printLock, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      MEMORY[0x19EB01E30](&self->_printLock);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v7 = self->_printPreviewImage.m_ptr;
    self->_printPreviewImage.m_ptr = a3;
    if (v7)
    {
      CFRelease(v7);
    }

    WTF::Condition::notifyOne(&self->_printCompletionCondition);
    v8 = 1;
    atomic_compare_exchange_strong_explicit(&self->_printLock, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {

      WTF::Lock::unlockSlow(&self->_printLock);
    }
  }
}

- (void)_waitForPrintedDocumentOrImage
{
  v3 = 0;
  p_printLock = &self->_printLock;
  atomic_compare_exchange_strong_explicit(&self->_printLock, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](&self->_printLock, a2);
  }

  v6 = 0x7FF0000000000000;
  v7 = 0;
  WTF::Condition::waitUntilUnchecked<WTF::Lock>(&self->_printCompletionCondition, p_printLock, &v6);
  v5 = 1;
  atomic_compare_exchange_strong_explicit(p_printLock, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(p_printLock);
  }
}

- (void)_setSnapshotPaperRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  suppressPageCountRecalc = self->_suppressPageCountRecalc;
  self->_suppressPageCountRecalc = 1;
  v9 = [(UIPrintFormatter *)self printPageRenderer];
  [(UIPrintPageRenderer *)v9 setPaperRect:x, y, width, height];
  [(UIPrintPageRenderer *)v9 setPrintableRect:x, y, width, height];
  self->_suppressPageCountRecalc = suppressPageCountRecalc;
}

- (void)_invalidatePrintRenderingState
{
  [(_WKWebViewPrintFormatter *)self _setPrintPreviewImage:0];

  [(_WKWebViewPrintFormatter *)self _setPrintedDocument:0];
}

- (int64_t)_recalcPageCount
{
  v8 = *MEMORY[0x1E69E9840];
  [(_WKWebViewPrintFormatter *)self _invalidatePrintRenderingState];
  v3 = [objc_msgSend(-[_WKWebViewPrintFormatter _webView](self "_webView")];
  v4 = qword_1ED640FB8;
  if (os_log_type_enabled(qword_1ED640FB8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Recalculated page count. Page count = %zu", &v6, 0xCu);
  }

  if (v3 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

- (void)_setNeedsRecalc
{
  if (!self->_suppressPageCountRecalc)
  {
    v2.receiver = self;
    v2.super_class = _WKWebViewPrintFormatter;
    [(UIPrintFormatter *)&v2 _setNeedsRecalc];
  }
}

- (CGRect)rectForPageAtIndex:(int64_t)a3
{
  if ([(_WKWebViewPrintFormatter *)self snapshotFirstPage])
  {
    [(UIPrintPageRenderer *)[(UIPrintFormatter *)self printPageRenderer] paperRect];
  }

  else
  {
    [(UIPrintFormatter *)self _pageContentRect:[(UIPrintFormatter *)self startPage]== a3];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)drawInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(_WKWebViewPrintFormatter *)self _shouldDrawUsingBitmap])
  {

    [(_WKWebViewPrintFormatter *)self _drawInRectUsingBitmap:a4 forPageAtIndex:x, y, width, height];
  }

  else
  {

    [(_WKWebViewPrintFormatter *)self _drawInRectUsingPDF:a4 forPageAtIndex:x, y, width, height];
  }
}

- (void)_drawInRectUsingBitmap:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(_WKWebViewPrintFormatter *)self _printPreviewImage];
  if (v10 || ([objc_msgSend(-[_WKWebViewPrintFormatter _webView](self "_webView")], (v10 = -[_WKWebViewPrintFormatter _printPreviewImage](self, "_printPreviewImage")) != 0))
  {
    v11 = v10;
    CFRetain(v10);
    if ([(UIPrintFormatter *)self pageCount])
    {
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      m_ptr = self->_printPreviewImage.m_ptr;
      v14 = CGImageGetWidth(m_ptr);
      v15 = CGImageGetHeight(m_ptr);
      v16 = [(UIPrintFormatter *)self pageCount];
      if (v14 && v16 <= v15)
      {
        v17 = (v15 / v16);
        v24.origin.y = a4 * v17;
        v24.origin.x = 0.0;
        v24.size.width = v14;
        v24.size.height = v17;
        v18 = CGImageCreateWithImageInRect(m_ptr, v24);
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        MinX = CGRectGetMinX(v25);
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        MaxY = CGRectGetMaxY(v26);
        CGContextTranslateCTM(CurrentContext, MinX, MaxY);
        CGContextScaleCTM(CurrentContext, 1.0, -1.0);
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        v21 = CGRectGetWidth(v27);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v22 = CGRectGetHeight(v28);
        CGContextScaleCTM(CurrentContext, v21 / v14, v22 / v17);
        v29.origin.x = 0.0;
        v29.origin.y = 0.0;
        v29.size.width = v14;
        v29.size.height = v17;
        CGContextDrawImage(CurrentContext, v29, v18);
        CGContextRestoreGState(CurrentContext);
        if (v18)
        {
          CFRelease(v18);
        }
      }

      else
      {
        CGContextRestoreGState(CurrentContext);
      }
    }

    CFRelease(v11);
  }
}

- (void)_drawInRectUsingPDF:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(_WKWebViewPrintFormatter *)self _printedDocument];
  if (v10 || ([objc_msgSend(-[_WKWebViewPrintFormatter _webView](self "_webView")], (v10 = -[_WKWebViewPrintFormatter _printedDocument](self, "_printedDocument")) != 0))
  {
    v11 = v10;
    CFRetain(v10);
    v12 = a4 - [(UIPrintFormatter *)self startPage];
    if (v12 >= 0)
    {
      Page = CGPDFDocumentGetPage(v11, v12 + 1);
      if (Page)
      {
        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(CurrentContext);
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        MinX = CGRectGetMinX(v19);
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        MaxY = CGRectGetMaxY(v20);
        CGContextTranslateCTM(CurrentContext, MinX, MaxY);
        CGContextScaleCTM(CurrentContext, 1.0, -1.0);
        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        v17 = CGRectGetWidth(v21);
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v23.size.height = CGRectGetHeight(v22);
        v23.origin.x = 0.0;
        v23.origin.y = 0.0;
        v23.size.width = v17;
        CGPDFPageGetDrawingTransform(&v18, Page, kCGPDFCropBox, v23, 0, 1);
        CGContextConcatCTM(CurrentContext, &v18);
        BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
        CGContextClipToRect(CurrentContext, BoxRect);
        CGContextDrawPDFPage(CurrentContext, Page);
        CGContextRestoreGState(CurrentContext);
      }
    }

    CFRelease(v11);
  }
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 137) = 0;
  *(self + 138) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  return self;
}

@end