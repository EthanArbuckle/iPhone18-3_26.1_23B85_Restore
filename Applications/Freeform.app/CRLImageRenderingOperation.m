@interface CRLImageRenderingOperation
- (CRLImageRenderingOperation)initWithImageSize:(CGSize)a3 imageScale:(double)a4 swatchFrame:(CGRect)a5 imageInfo:(id)a6 editingCoordinator:(id)a7;
- (void)doWorkWithReadLock;
@end

@implementation CRLImageRenderingOperation

- (CRLImageRenderingOperation)initWithImageSize:(CGSize)a3 imageScale:(double)a4 swatchFrame:(CGRect)a5 imageInfo:(id)a6 editingCoordinator:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a3.height;
  v15 = a3.width;
  v17 = a6;
  v21.receiver = self;
  v21.super_class = CRLImageRenderingOperation;
  v18 = [(CRLSwatchRenderingOperation *)&v21 initWithImageSize:a7 imageScale:v15 swatchFrame:v14 editingCoordinator:a4, x, y, width, height];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageInfo, a6);
  }

  return v19;
}

- (void)doWorkWithReadLock
{
  v3 = +[CRLSwatchCache swatchCache];
  [(CRLSwatchRenderingOperation *)self imageSize];
  v5 = v4;
  v7 = v6;
  [(CRLSwatchRenderingOperation *)self imageScale];
  v9 = v8;
  imageInfo = self->_imageInfo;
  v11 = [(CRLSwatchRenderingOperation *)self editingCoordinator];
  v12 = [v3 imageForImageWithSize:imageInfo imageScale:v11 imageInfo:-[CRLSwatchRenderingOperation renderForWideGamut](self editingCoordinator:"renderForWideGamut") renderForWideGamut:{v5, v7, v9}];

  -[CRLSwatchRenderingOperation deliverCGImage:](self, "deliverCGImage:", [v12 CGImage]);
}

@end