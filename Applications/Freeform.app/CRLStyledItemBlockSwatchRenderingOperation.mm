@interface CRLStyledItemBlockSwatchRenderingOperation
- (CRLStyledItemBlockSwatchRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame editingCoordinator:(id)coordinator styledInfoAspectRatio:(CGSize)ratio swatchInfoBlock:(id)block;
- (void)doWorkWithReadLock;
@end

@implementation CRLStyledItemBlockSwatchRenderingOperation

- (CRLStyledItemBlockSwatchRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame editingCoordinator:(id)coordinator styledInfoAspectRatio:(CGSize)ratio swatchInfoBlock:(id)block
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14 = size.height;
  v15 = size.width;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = CRLStyledItemBlockSwatchRenderingOperation;
  height = [(CRLSwatchRenderingOperation *)&v23 initWithImageSize:coordinator imageScale:v15 swatchFrame:v14 editingCoordinator:scale, x, y, width, height];
  v19 = height;
  if (height)
  {
    height->_styledInfoAspectRatio = ratio;
    v20 = [blockCopy copy];
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
  editingCoordinator = [(CRLSwatchRenderingOperation *)self editingCoordinator];
  v11 = [v3 imageForStyledItemWithSize:editingCoordinator imageScale:-[CRLSwatchRenderingOperation renderForWideGamut](self editingCoordinator:"renderForWideGamut") renderForWideGamut:self->_swatchInfoBlock styledInfoAspectRatio:v5 usingSwatchInfoFromBlock:{v7, v9, self->_styledInfoAspectRatio.width, self->_styledInfoAspectRatio.height}];

  -[CRLSwatchRenderingOperation deliverCGImage:](self, "deliverCGImage:", [v11 CGImage]);
}

@end