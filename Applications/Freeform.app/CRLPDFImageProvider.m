@interface CRLPDFImageProvider
- (BOOL)i_hasFlushableContent;
- (BOOL)isValid;
- (CGPDFDocument)CGPDFDocument;
- (CGPDFDocument)p_load;
- (CGSize)naturalSize;
- (int64_t)pageAngle;
- (unint64_t)i_flushableMemoryEstimate;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
- (void)flush;
- (void)i_commonInit;
- (void)p_loadIfNecessary;
@end

@implementation CRLPDFImageProvider

- (void)i_commonInit
{
  v10.receiver = self;
  v10.super_class = CRLPDFImageProvider;
  [(CRLImageProvider *)&v10 i_commonInit];
  if (self->_accessQueue)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101315D0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101315D34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101315DC8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPDFImageProvider i_commonInit]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPDFImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:41 isFatal:0 description:"called i_common init twice on same object!"];
  }

  v6 = dispatch_queue_create("com.apple.freeform.CRLPDFImageProvider", 0);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v6;

  v8 = dispatch_semaphore_create(1);
  flushableContentLock = self->_flushableContentLock;
  self->_flushableContentLock = v8;
}

- (void)dealloc
{
  CGPDFDocumentRelease(self->_PDFDocument);
  v3.receiver = self;
  v3.super_class = CRLPDFImageProvider;
  [(CRLImageProvider *)&v3 dealloc];
}

- (CGPDFDocument)CGPDFDocument
{
  [(CRLPDFImageProvider *)self p_loadIfNecessary];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BE2C;
  v7[3] = &unk_101839FF8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue, v7);
  v4 = v9[3];
  if (v4)
  {
    CFAutorelease(v4);
    v5 = v9[3];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int64_t)pageAngle
{
  result = [(CRLPDFImageProvider *)self CGPDFDocument];
  if (result)
  {
    result = CGPDFDocumentGetPage(result, 1uLL);
    if (result)
    {
      return CGPDFPageGetRotationAngle(result);
    }
  }

  return result;
}

- (CGSize)naturalSize
{
  [(CRLPDFImageProvider *)self p_loadIfNecessary];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = &unk_1016A8115;
  accessQueue = self->_accessQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010BF54;
  v8[3] = &unk_101839FF8;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(accessQueue, v8);
  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)i_hasFlushableContent
{
  dispatch_semaphore_wait(self->_flushableContentLock, 0xFFFFFFFFFFFFFFFFLL);
  hasFlushableContent = self->_hasFlushableContent;
  dispatch_semaphore_signal(self->_flushableContentLock);
  return hasFlushableContent;
}

- (unint64_t)i_flushableMemoryEstimate
{
  result = [(CRLPDFImageProvider *)self CGPDFDocument];
  if (result)
  {
    v4 = [(CRLImageProvider *)self imageData];
    v5 = [v4 length];

    return v5;
  }

  return result;
}

- (BOOL)isValid
{
  v2 = [(CRLPDFImageProvider *)self CGPDFDocument];
  if (v2)
  {
    LOBYTE(v2) = CGPDFDocumentGetPage(v2, 1uLL) != 0;
  }

  return v2;
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (![(CRLPDFImageProvider *)self isValid])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101315DF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101315E04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101315E98();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLPDFImageProvider drawImageInContext:rect:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPDFImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:104 isFatal:0 description:"shouldn't be drawing an invalid image provider"];
  }

  v13 = [(CRLPDFImageProvider *)self CGPDFDocument];
  if (v13)
  {
    Page = CGPDFDocumentGetPage(v13, 1uLL);
    if (Page)
    {
      v15 = Page;
      CGContextSaveGState(a3);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      MinY = CGRectGetMinY(v32);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      MaxY = CGRectGetMaxY(v33);
      CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
      CGContextScaleCTM(a3, 1.0, -1.0);
      memset(&v31, 0, sizeof(v31));
      v29 = 0.0;
      v30 = 0.0;
      v18 = sub_10050EBF0(v15, &v31, &v29);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if (!sub_10011FBD0(v21, v23) && (sub_10012287C() & 1) == 0)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = v31;
        v26 = 0u;
        sub_10050EFD0(&v25, &v26, v29, v30, x, y, width, height);
        *&v25.a = v26;
        *&v25.c = v27;
        *&v25.tx = v28;
        CGContextConcatCTM(a3, &v25);
        v34.origin.x = v18;
        v34.origin.y = v20;
        v34.size.width = v22;
        v34.size.height = v24;
        CGContextClipToRect(a3, v34);
        CGContextDrawPDFPage(a3, v15);
      }

      CGContextRestoreGState(a3);
    }
  }
}

- (void)flush
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C3E8;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)p_loadIfNecessary
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C4FC;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (CGPDFDocument)p_load
{
  v3 = [(CRLImageProvider *)self imageData];
  v4 = [v3 newCGDataProvider];

  if (!v4)
  {
    return 0;
  }

  v5 = CGPDFDocumentCreateWithProvider(v4);
  v6 = v5;
  if (v5)
  {
    Page = CGPDFDocumentGetPage(v5, 1uLL);
    if (Page)
    {
      v8 = Page;
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v52 = CGPDFPageGetBoxRect(v8, kCGPDFCropBox);
      v13 = v52.origin.x;
      v14 = v52.origin.y;
      v15 = v52.size.width;
      v16 = v52.size.height;
      v56 = CGPDFPageGetBoxRect(v8, kCGPDFArtBox);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      v57 = CGRectIntersection(v53, v56);
      v54.origin.x = v13;
      v54.origin.y = v14;
      v54.size.width = v15;
      v54.size.height = v16;
      v55 = CGRectIntersection(v54, v57);
      v17 = v55.size.width;
      v18 = v55.size.height;
      RotationAngle = CGPDFPageGetRotationAngle(v8);
      if (RotationAngle == 270 || RotationAngle == 90)
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
        v17 = v18;
      }

      v21 = fmax(v20, 0.01);
      v22 = fmax(v17, 0.01);
      if (v21 != v20 || v22 != v17)
      {
        v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101315EC0();
        }

        v25 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v32 = v25;
          v49.width = v20;
          v49.height = v17;
          v33 = NSStringFromCGSize(v49);
          v50.width = v21;
          v50.height = v22;
          v34 = NSStringFromCGSize(v50);
          *buf = 67110402;
          v36 = v24;
          v37 = 2082;
          v38 = "[CRLPDFImageProvider p_load]";
          v39 = 2082;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPDFImageProvider.m";
          v41 = 1024;
          v42 = 207;
          v43 = 2112;
          v44 = v33;
          v45 = 2112;
          v46 = v34;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d PDF image had zero-width or height size; was %@, capped to %@", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101315ED4();
        }

        v26 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v26);
        }

        v27 = [NSString stringWithUTF8String:"[CRLPDFImageProvider p_load]"];
        v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPDFImageProvider.m"];
        v47.width = v20;
        v47.height = v17;
        v29 = NSStringFromCGSize(v47);
        v48.width = v21;
        v48.height = v22;
        v30 = NSStringFromCGSize(v48);
        [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:207 isFatal:0 description:"PDF image had zero-width or height size; was %@, capped to %@", v29, v30];
      }

      self->_naturalSize.width = v21;
      self->_naturalSize.height = v22;
    }

    else
    {
      CGPDFDocumentRelease(v6);
      v6 = 0;
    }
  }

  CGDataProviderRelease(v4);
  return v6;
}

@end