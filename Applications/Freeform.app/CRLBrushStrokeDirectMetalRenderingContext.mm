@interface CRLBrushStrokeDirectMetalRenderingContext
- (CGAffineTransform)transform;
- (CGRect)frame;
- (CRLBrushStrokeDirectMetalRenderingContext)initWithMetalDrawable:(id)drawable frame:(CGRect)frame transform:(CGAffineTransform *)transform contentsScale:(double)scale destinationColorSpaceOverride:(CGColorSpace *)override metalDeviceOverride:(id)deviceOverride;
- (void)dealloc;
@end

@implementation CRLBrushStrokeDirectMetalRenderingContext

- (CRLBrushStrokeDirectMetalRenderingContext)initWithMetalDrawable:(id)drawable frame:(CGRect)frame transform:(CGAffineTransform *)transform contentsScale:(double)scale destinationColorSpaceOverride:(CGColorSpace *)override metalDeviceOverride:(id)deviceOverride
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  drawableCopy = drawable;
  deviceOverrideCopy = deviceOverride;
  v25.receiver = self;
  v25.super_class = CRLBrushStrokeDirectMetalRenderingContext;
  v20 = [(CRLBrushStrokeDirectMetalRenderingContext *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_metalDrawable, drawable);
    v21->_frame.origin.x = x;
    v21->_frame.origin.y = y;
    v21->_frame.size.width = width;
    v21->_frame.size.height = height;
    v22 = *&transform->a;
    v23 = *&transform->c;
    *&v21->_transform.tx = *&transform->tx;
    *&v21->_transform.c = v23;
    *&v21->_transform.a = v22;
    v21->_contentsScale = scale;
    v21->_destinationColorSpaceOverride = CGColorSpaceRetain(override);
    objc_storeStrong(&v21->_metalDeviceOverride, deviceOverride);
  }

  return v21;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_destinationColorSpaceOverride);
  v3.receiver = self;
  v3.super_class = CRLBrushStrokeDirectMetalRenderingContext;
  [(CRLBrushStrokeDirectMetalRenderingContext *)&v3 dealloc];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

@end