@interface AEPdfPageRenderingCacheOperation
- (AEPdfPageRenderingCacheOperation)init;
- (id)callbackInvocationWithImage:(id)a3;
- (id)generateImage:(CGSize)a3;
@end

@implementation AEPdfPageRenderingCacheOperation

- (AEPdfPageRenderingCacheOperation)init
{
  v3.receiver = self;
  v3.super_class = AEPdfPageRenderingCacheOperation;
  return [(AEPdfPageRenderingCacheOperation *)&v3 initWithOptions:0];
}

- (id)callbackInvocationWithImage:(id)a3
{
  v4 = a3;
  v5 = [(AEPdfPageRenderingCacheOperation *)self renderingCacheCallbackInvocationWithImage:v4 pageNumber:[(AEPdfPageRenderingCacheOperation *)self pageNumber]];

  return v5;
}

- (id)generateImage:(CGSize)a3
{
  v4 = [BKPDFModernBookViewController pageIndexForPageNumber:[(AEPdfPageRenderingCacheOperation *)self pageNumber:a3.width]];
  v5 = +[AEPdfCache sharedInstance];
  v6 = [(AEPdfPageRenderingCacheOperation *)self url];
  v7 = [v5 copyCacheObjectForURL:v6];

  v8 = [v7 document];
  v9 = [(AEPdfPageRenderingCacheOperation *)self imageCache];
  [v9 primaryImageSize];
  v10 = [AEPDFPlugin generateImageForDocument:v8 pageIndex:v4 size:?];

  if (v10 && [v8 isLocked])
  {
    [(AEPdfPageRenderingCacheOperation *)self setSerializeFormat:0xFFFFFFFFLL];
  }

  return v10;
}

@end