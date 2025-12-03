@interface CGPDFDocumentImpl
- (CGPDFDocumentImpl)initWithData:(id)data requestQueue:(id)queue;
- (id).cxx_construct;
- (id)getPageAtIndex:(int64_t)index;
- (void)getInfo:(id)info;
- (void)getIsEncrypted:(id)encrypted;
- (void)getIsUnlocked:(id)unlocked;
- (void)getPageAtIndex:(int64_t)index completion:(id)completion;
- (void)getPageCount:(id)count;
- (void)getVersion:(id)version;
@end

@implementation CGPDFDocumentImpl

- (CGPDFDocumentImpl)initWithData:(id)data requestQueue:(id)queue
{
  dataCopy = data;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = CGPDFDocumentImpl;
  v8 = [(CGPDFDocumentImpl *)&v20 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v8->_requestQueue, queue);
  v10 = os_transaction_create();
  transaction = v9->_transaction;
  v9->_transaction = v10;

  v12 = CGDataProviderCreateWithCFData(dataCopy);
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

- (id)getPageAtIndex:(int64_t)index
{
  if (index < 0 || (begin = self->_pages.__begin_, index >= self->_pages.var0 - begin))
  {
    NSLog(@"Out of bounds page index", a2);
    Page = 0;
  }

  else
  {
    Page = begin[index];
    if (!Page)
    {
      Page = CGPDFDocumentGetPage(self->_cgDocument.mCFObject, index + 1);
      if (Page)
      {
        Page = [[CGPDFPageImpl alloc] initWithCGPDFPage:Page requestQueue:self->_requestQueue];
        objc_storeStrong(&self->_pages.__begin_[index], Page);
      }

      else
      {
        NSLog(@"Failed to create page at index: (%ld)", index);
      }
    }
  }

  return Page;
}

- (void)getInfo:(id)info
{
  infoCopy = info;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__CGPDFDocumentImpl_getInfo___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

void __29__CGPDFDocumentImpl_getInfo___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = CGPDFDocumentCopyInfoDictionary();
  (*(*(a1 + 40) + 16))();
}

- (void)getVersion:(id)version
{
  versionCopy = version;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __32__CGPDFDocumentImpl_getVersion___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = versionCopy;
  v6 = versionCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __32__CGPDFDocumentImpl_getVersion___block_invoke(uint64_t a1)
{
  majorVersion = 0;
  minorVersion = 0;
  CGPDFDocumentGetVersion(*(*(a1 + 32) + 24), &majorVersion, &minorVersion);
  return (*(*(a1 + 40) + 16))();
}

- (void)getIsUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __35__CGPDFDocumentImpl_getIsUnlocked___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = unlockedCopy;
  v6 = unlockedCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __35__CGPDFDocumentImpl_getIsUnlocked___block_invoke(uint64_t a1)
{
  CGPDFDocumentIsUnlocked(*(*(a1 + 32) + 24));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getIsEncrypted:(id)encrypted
{
  encryptedCopy = encrypted;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __36__CGPDFDocumentImpl_getIsEncrypted___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = encryptedCopy;
  v6 = encryptedCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __36__CGPDFDocumentImpl_getIsEncrypted___block_invoke(uint64_t a1)
{
  CGPDFDocumentIsEncrypted(*(*(a1 + 32) + 24));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getPageCount:(id)count
{
  countCopy = count;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __34__CGPDFDocumentImpl_getPageCount___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = countCopy;
  v6 = countCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __34__CGPDFDocumentImpl_getPageCount___block_invoke(uint64_t a1)
{
  CGPDFDocumentGetNumberOfPages(*(*(a1 + 32) + 24));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getPageAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  requestQueue = self->_requestQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __47__CGPDFDocumentImpl_getPageAtIndex_completion___block_invoke;
  v9[3] = &unk_1000083A0;
  v10 = completionCopy;
  indexCopy = index;
  v9[4] = self;
  v8 = completionCopy;
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