@interface AEPdfPageRenderingCacheOperation
- (AEPdfPageRenderingCacheOperation)init;
- (id)callbackInvocationWithImage:(id)image;
- (id)generateImage:(CGSize)image;
@end

@implementation AEPdfPageRenderingCacheOperation

- (AEPdfPageRenderingCacheOperation)init
{
  v3.receiver = self;
  v3.super_class = AEPdfPageRenderingCacheOperation;
  return [(AEPdfPageRenderingCacheOperation *)&v3 initWithOptions:0];
}

- (id)callbackInvocationWithImage:(id)image
{
  imageCopy = image;
  v5 = [(AEPdfPageRenderingCacheOperation *)self renderingCacheCallbackInvocationWithImage:imageCopy pageNumber:[(AEPdfPageRenderingCacheOperation *)self pageNumber]];

  return v5;
}

- (id)generateImage:(CGSize)image
{
  v4 = [BKPDFModernBookViewController pageIndexForPageNumber:[(AEPdfPageRenderingCacheOperation *)self pageNumber:image.width]];
  v5 = +[AEPdfCache sharedInstance];
  v6 = [(AEPdfPageRenderingCacheOperation *)self url];
  v7 = [v5 copyCacheObjectForURL:v6];

  document = [v7 document];
  imageCache = [(AEPdfPageRenderingCacheOperation *)self imageCache];
  [imageCache primaryImageSize];
  v10 = [AEPDFPlugin generateImageForDocument:document pageIndex:v4 size:?];

  if (v10 && [document isLocked])
  {
    [(AEPdfPageRenderingCacheOperation *)self setSerializeFormat:0xFFFFFFFFLL];
  }

  return v10;
}

@end