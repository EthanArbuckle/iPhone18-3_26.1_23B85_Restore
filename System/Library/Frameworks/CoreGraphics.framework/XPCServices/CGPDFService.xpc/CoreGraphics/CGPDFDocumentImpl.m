@interface CGPDFDocumentImpl
- (CGPDFDocumentImpl)initWithData:(id)a3 requestQueue:(id)a4;
- (id).cxx_construct;
- (id)getPageAtIndex:(int64_t)a3;
- (void)getInfo:(id)a3;
- (void)getIsEncrypted:(id)a3;
- (void)getIsUnlocked:(id)a3;
- (void)getPageAtIndex:(int64_t)a3 completion:(id)a4;
- (void)getPageCount:(id)a3;
- (void)getVersion:(id)a3;
@end

@implementation CGPDFDocumentImpl

- (CGPDFDocumentImpl)initWithData:(id)a3 requestQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = CGPDFDocumentImpl;
  v8 = [(CGPDFDocumentImpl *)&v20 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v8->_requestQueue, a4);
  v10 = os_transaction_create();
  transaction = v9->_transaction;
  v9->_transaction = v10;

  v12 = CGDataProviderCreateWithCFData(v6);
  v13 = v12;
  v19[1] = v12;
  if (!v12)
  {
    NSLog(@"Failed to create CGDataProvoder");
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v14 = CGPDFDocumentCreateWithProvider(v12);
  mCFObject = v9->_cgDocument.mCFObject;
  v9->_cgDocument.mCFObject = v14;
  if (mCFObject)
  {
    CFRelease(mCFObject);
    v14 = v9->_cgDocument.mCFObject;
  }

  if (!v14)
  {
    NSLog(@"Failed to create CGPDFDocument");
    CFRelease(v13);
    goto LABEL_10;
  }

  NumberOfPages = CGPDFDocumentGetNumberOfPages(v14);
  v19[0] = 0;
  std::vector<CGPDFPageImpl * {__strong}>::resize(&v9->_pages.__begin_, NumberOfPages, v19);

  CFRelease(v13);
LABEL_7:
  v17 = v9;
LABEL_11:

  return v17;
}

- (id)getPageAtIndex:(int64_t)a3
{
  if (a3 < 0 || (begin = self->_pages.__begin_, a3 >= self->_pages.var0 - begin))
  {
    NSLog(@"Out of bounds page index", a2);
    Page = 0;
  }

  else
  {
    Page = begin[a3];
    if (!Page)
    {
      Page = CGPDFDocumentGetPage(self->_cgDocument.mCFObject, a3 + 1);
      if (Page)
      {
        Page = [[CGPDFPageImpl alloc] initWithCGPDFPage:Page requestQueue:self->_requestQueue];
        objc_storeStrong(&self->_pages.__begin_[a3], Page);
      }

      else
      {
        NSLog(@"Failed to create page at index: (%ld)", a3);
      }
    }
  }

  return Page;
}

- (void)getInfo:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__CGPDFDocumentImpl_getInfo___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

void __29__CGPDFDocumentImpl_getInfo___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = CGPDFDocumentCopyInfoDictionary();
  (*(*(a1 + 40) + 16))();
}

- (void)getVersion:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __32__CGPDFDocumentImpl_getVersion___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __32__CGPDFDocumentImpl_getVersion___block_invoke(uint64_t a1)
{
  majorVersion = 0;
  minorVersion = 0;
  CGPDFDocumentGetVersion(*(*(a1 + 32) + 24), &majorVersion, &minorVersion);
  return (*(*(a1 + 40) + 16))();
}

- (void)getIsUnlocked:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __35__CGPDFDocumentImpl_getIsUnlocked___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __35__CGPDFDocumentImpl_getIsUnlocked___block_invoke(uint64_t a1)
{
  CGPDFDocumentIsUnlocked(*(*(a1 + 32) + 24));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getIsEncrypted:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __36__CGPDFDocumentImpl_getIsEncrypted___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __36__CGPDFDocumentImpl_getIsEncrypted___block_invoke(uint64_t a1)
{
  CGPDFDocumentIsEncrypted(*(*(a1 + 32) + 24));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getPageCount:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __34__CGPDFDocumentImpl_getPageCount___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __34__CGPDFDocumentImpl_getPageCount___block_invoke(uint64_t a1)
{
  CGPDFDocumentGetNumberOfPages(*(*(a1 + 32) + 24));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getPageAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  requestQueue = self->_requestQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __47__CGPDFDocumentImpl_getPageAtIndex_completion___block_invoke;
  v9[3] = &unk_1000083A0;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v9];
}

void __47__CGPDFDocumentImpl_getPageAtIndex_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getPageAtIndex:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end