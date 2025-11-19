@interface BETextDocumentRequest
- (CGRect)_documentRect;
- (id)_initWithUIKitDocumentRequest:(id)a3;
- (int64_t)options;
@end

@implementation BETextDocumentRequest

- (id)_initWithUIKitDocumentRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BETextDocumentRequest;
  v6 = [(BETextDocumentRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingDocumentRequest, a3);
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
  v2 = [(BETextDocumentRequest *)self backingDocumentRequest];
  v3 = [v2 flags];

  return v3;
}

@end