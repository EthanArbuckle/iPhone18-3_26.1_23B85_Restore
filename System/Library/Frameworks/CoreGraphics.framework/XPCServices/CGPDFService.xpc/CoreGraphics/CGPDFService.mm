@interface CGPDFService
- (CGPDFService)init;
- (void)newPDFDocumentWithData:(id)data withReply:(id)reply;
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

- (void)newPDFDocumentWithData:(id)data withReply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  requestQueue = self->_requestQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __49__CGPDFService_newPDFDocumentWithData_withReply___block_invoke;
  v11[3] = &unk_1000083C8;
  v12 = dataCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = dataCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v11];
}

void __49__CGPDFService_newPDFDocumentWithData_withReply___block_invoke(void *a1)
{
  v2 = [[CGPDFDocumentImpl alloc] initWithData:a1[4] requestQueue:*(a1[5] + 8)];
  (*(a1[6] + 16))();
}

@end