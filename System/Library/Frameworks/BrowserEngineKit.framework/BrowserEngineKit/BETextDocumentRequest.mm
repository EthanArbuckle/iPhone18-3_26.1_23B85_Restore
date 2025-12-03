@interface BETextDocumentRequest
- (CGRect)_documentRect;
- (id)_initWithUIKitDocumentRequest:(id)request;
- (int64_t)options;
@end

@implementation BETextDocumentRequest

- (id)_initWithUIKitDocumentRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = BETextDocumentRequest;
  v6 = [(BETextDocumentRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingDocumentRequest, request);
  }

  return v7;
}

- (CGRect)_documentRect
{
  [(UIWKDocumentRequest *)self->_backingDocumentRequest documentRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (int64_t)options
{
  backingDocumentRequest = [(BETextDocumentRequest *)self backingDocumentRequest];
  flags = [backingDocumentRequest flags];

  return flags;
}

@end