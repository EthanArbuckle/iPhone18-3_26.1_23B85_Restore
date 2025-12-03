@interface CRLShapeRenderingOperation
- (BOOL)needsPressedStateBackground;
- (CRLShapeRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale shapeType:(int64_t)type shapePathSource:(id)source angle:(double)angle editingCoordinator:(id)coordinator swatchCacheRenderingContext:(id)context;
- (UIEdgeInsets)swatchEdgeInsets;
- (void)doWorkWithReadLock;
@end

@implementation CRLShapeRenderingOperation

- (CRLShapeRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale shapeType:(int64_t)type shapePathSource:(id)source angle:(double)angle editingCoordinator:(id)coordinator swatchCacheRenderingContext:(id)context
{
  height = size.height;
  width = size.width;
  sourceCopy = source;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = CRLShapeRenderingOperation;
  v20 = [(CRLSwatchRenderingOperation *)&v23 initWithImageSize:coordinator imageScale:width swatchFrame:height editingCoordinator:scale, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v21 = v20;
  if (v20)
  {
    v20->_shapeType = type;
    objc_storeStrong(&v20->_shapePathSource, source);
    v21->_angle = angle;
    objc_storeStrong(&v21->_swatchRenderingContext, context);
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
    view = [(CRLSwatchRenderingOperation *)self view];
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
  editingCoordinator = [(CRLSwatchRenderingOperation *)self editingCoordinator];
  v14 = [v3 imageForShapeWithSize:shapeType imageScale:shapePathSource shapeType:editingCoordinator shapePathSource:self->_swatchRenderingContext angle:v5 editingCoordinator:v7 renderingContext:{v9, angle}];

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