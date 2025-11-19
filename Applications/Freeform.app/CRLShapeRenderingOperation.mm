@interface CRLShapeRenderingOperation
- (BOOL)needsPressedStateBackground;
- (CRLShapeRenderingOperation)initWithImageSize:(CGSize)a3 imageScale:(double)a4 shapeType:(int64_t)a5 shapePathSource:(id)a6 angle:(double)a7 editingCoordinator:(id)a8 swatchCacheRenderingContext:(id)a9;
- (UIEdgeInsets)swatchEdgeInsets;
- (void)doWorkWithReadLock;
@end

@implementation CRLShapeRenderingOperation

- (CRLShapeRenderingOperation)initWithImageSize:(CGSize)a3 imageScale:(double)a4 shapeType:(int64_t)a5 shapePathSource:(id)a6 angle:(double)a7 editingCoordinator:(id)a8 swatchCacheRenderingContext:(id)a9
{
  height = a3.height;
  width = a3.width;
  v18 = a6;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = CRLShapeRenderingOperation;
  v20 = [(CRLSwatchRenderingOperation *)&v23 initWithImageSize:a8 imageScale:width swatchFrame:height editingCoordinator:a4, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v21 = v20;
  if (v20)
  {
    v20->_shapeType = a5;
    objc_storeStrong(&v20->_shapePathSource, a6);
    v21->_angle = a7;
    objc_storeStrong(&v21->_swatchRenderingContext, a9);
  }

  return v21;
}

- (UIEdgeInsets)swatchEdgeInsets
{
  v2 = +[CRLSwatchCache swatchCache];
  [v2 shapeSwatchInset];
  v4 = v3;
  v6 = v5;

  v7 = v6;
  v8 = v4;
  v9 = v6;
  v10 = v6;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (BOOL)needsPressedStateBackground
{
  if (self->_shapeType == 3)
  {
    v2 = [(CRLSwatchRenderingOperation *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)doWorkWithReadLock
{
  [(CRLSwatchRenderingContext *)self->_swatchRenderingContext setRendersForWideGamut:[(CRLSwatchRenderingOperation *)self renderForWideGamut]];
  v3 = +[CRLSwatchCache swatchCache];
  [(CRLSwatchRenderingOperation *)self imageSize];
  v5 = v4;
  v7 = v6;
  [(CRLSwatchRenderingOperation *)self imageScale];
  v9 = v8;
  shapeType = self->_shapeType;
  shapePathSource = self->_shapePathSource;
  angle = self->_angle;
  v13 = [(CRLSwatchRenderingOperation *)self editingCoordinator];
  v14 = [v3 imageForShapeWithSize:shapeType imageScale:shapePathSource shapeType:v13 shapePathSource:self->_swatchRenderingContext angle:v5 editingCoordinator:v7 renderingContext:{v9, angle}];

  if ([(CRLSwatchRenderingOperation *)self deliversImageAutomatically])
  {
    -[CRLSwatchRenderingOperation deliverCGImage:](self, "deliverCGImage:", [v14 CGImage]);
  }

  else
  {
    [(CRLSwatchRenderingOperation *)self provideSwatchForLaterDelivery:v14];
  }
}

@end