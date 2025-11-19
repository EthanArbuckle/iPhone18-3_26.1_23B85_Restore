@interface CGPDFService
- (CGPDFService)init;
- (void)newPDFDocumentWithData:(id)a3 withReply:(id)a4;
@end

@implementation CGPDFService

- (CGPDFService)init
{
  v6.receiver = self;
  v6.super_class = CGPDFService;
  v2 = [(CGPDFService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;

    [(NSOperationQueue *)v2->_requestQueue setMaxConcurrentOperationCount:4];
  }

  return v2;
}

- (void)newPDFDocumentWithData:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __49__CGPDFService_newPDFDocumentWithData_withReply___block_invoke;
  v11[3] = &unk_1000083C8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v11];
}

void __49__CGPDFService_newPDFDocumentWithData_withReply___block_invoke(void *a1)
{
  v2 = [[CGPDFDocumentImpl alloc] initWithData:a1[4] requestQueue:*(a1[5] + 8)];
  (*(a1[6] + 16))();
}

@end