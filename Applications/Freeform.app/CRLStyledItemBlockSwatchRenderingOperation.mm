@interface CRLStyledItemBlockSwatchRenderingOperation
- (CRLStyledItemBlockSwatchRenderingOperation)initWithImageSize:(CGSize)a3 imageScale:(double)a4 swatchFrame:(CGRect)a5 editingCoordinator:(id)a6 styledInfoAspectRatio:(CGSize)a7 swatchInfoBlock:(id)a8;
- (void)doWorkWithReadLock;
@end

@implementation CRLStyledItemBlockSwatchRenderingOperation

- (CRLStyledItemBlockSwatchRenderingOperation)initWithImageSize:(CGSize)a3 imageScale:(double)a4 swatchFrame:(CGRect)a5 editingCoordinator:(id)a6 styledInfoAspectRatio:(CGSize)a7 swatchInfoBlock:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a3.height;
  v15 = a3.width;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = CRLStyledItemBlockSwatchRenderingOperation;
  v18 = [(CRLSwatchRenderingOperation *)&v23 initWithImageSize:a6 imageScale:v15 swatchFrame:v14 editingCoordinator:a4, x, y, width, height];
  v19 = v18;
  if (v18)
  {
    v18->_styledInfoAspectRatio = a7;
    v20 = [v17 copy];
    swatchInfoBlock = v19->_swatchInfoBlock;
    v19->_swatchInfoBlock = v20;
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
  v10 = [(CRLSwatchRenderingOperation *)self editingCoordinator];
  v11 = [v3 imageForStyledItemWithSize:v10 imageScale:-[CRLSwatchRenderingOperation renderForWideGamut](self editingCoordinator:"renderForWideGamut") renderForWideGamut:self->_swatchInfoBlock styledInfoAspectRatio:v5 usingSwatchInfoFromBlock:{v7, v9, self->_styledInfoAspectRatio.width, self->_styledInfoAspectRatio.height}];

  -[CRLSwatchRenderingOperation deliverCGImage:](self, "deliverCGImage:", [v11 CGImage]);
}

@end