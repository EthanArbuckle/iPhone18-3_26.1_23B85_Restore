@interface CRLHighlightController
- (CALayer)layerToAnimate;
- (CGAffineTransform)transform;
- (CGRect)rectToAnimate;
- (void)buildLayersForPath:(CGPath *)a3 withImage:(id)a4;
- (void)createLayerWithZOrder:(double)a3 contentsScaleForLayers:(double)a4;
- (void)dealloc;
- (void)p_buildLayersForPath:(CGPath *)a3 withImage:(id)a4;
- (void)p_buildLayersWithBackgroundForPath:(CGPath *)a3 withImage:(id)a4;
- (void)reset;
- (void)setBackgroundColor:(CGColor *)a3;
- (void)setPath:(CGPath *)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation CRLHighlightController

- (CALayer)layerToAnimate
{
  v3 = [(CRLHighlightController *)self shouldCreateBackground];
  v4 = 24;
  if (v3)
  {
    v4 = 56;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (void)setPath:(CGPath *)a3
{
  path = self->_path;
  if (path != a3)
  {
    if (path)
    {
      CGPathRelease(path);
    }

    self->_path = CGPathRetain(a3);
  }
}

- (void)setBackgroundColor:(CGColor *)a3
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != a3)
  {
    if (backgroundColor)
    {
      CGColorRelease(backgroundColor);
    }

    self->_backgroundColor = CGColorRetain(a3);
  }
}

- (void)dealloc
{
  [(CRLHighlightController *)self reset];
  [(CRLHighlightController *)self setPath:0];
  [(CRLHighlightController *)self setBackgroundColor:0];
  v3.receiver = self;
  v3.super_class = CRLHighlightController;
  [(CRLHighlightController *)&v3 dealloc];
}

- (void)reset
{
  size = CGRectZero.size;
  self->_rectToAnimate.origin = CGRectZero.origin;
  self->_rectToAnimate.size = size;
  [(CRLHighlightController *)self setImage:0];
  [(CRLHighlightController *)self setPath:0];
  [(CALayer *)self->_layer setDelegate:0];
  v4 = [(CALayer *)self->_layer sublayers];
  [v4 makeObjectsPerformSelector:"setDelegate:" withObject:0];

  layer = self->_layer;
  self->_layer = 0;
}

- (void)createLayerWithZOrder:(double)a3 contentsScaleForLayers:(double)a4
{
  if (self->_layer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013421C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013421D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134226C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLHighlightController createLayerWithZOrder:contentsScaleForLayers:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHighlightController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:99 isFatal:0 description:"Shouldn't be creating _layer again"];

    [(CRLHighlightController *)self reset];
  }

  if (a4 <= 0.0)
  {
    a4 = 1.0;
  }

  v10 = objc_alloc_init(CALayer);
  layer = self->_layer;
  self->_layer = v10;

  y = CGPointZero.y;
  [(CALayer *)self->_layer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)self->_layer setEdgeAntialiasingMask:0];
  [(CALayer *)self->_layer setContentsScale:a4];
  [(CALayer *)self->_layer setZPosition:a3];
  [(CALayer *)self->_layer setDelegate:self];
  v13 = objc_alloc_init(CALayer);
  imageLayer = self->_imageLayer;
  self->_imageLayer = v13;

  [(CALayer *)self->_imageLayer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)self->_imageLayer setEdgeAntialiasingMask:0];
  [(CALayer *)self->_imageLayer setContentsScale:a4];
  [(CALayer *)self->_layer addSublayer:self->_imageLayer];
  [(CALayer *)self->_imageLayer setDelegate:self];
  [(CALayer *)self->_imageLayer setZPosition:1.0];
}

- (void)p_buildLayersForPath:(CGPath *)a3 withImage:(id)a4
{
  v6 = a4;
  size = CGRectZero.size;
  self->_rectToAnimate.origin = CGRectZero.origin;
  self->_rectToAnimate.size = size;
  [(CRLHighlightController *)self setImage:v6];
  [(CRLHighlightController *)self setPath:a3];
  if (a3)
  {
    BoundingBox = CGPathGetBoundingBox(a3);
    v8 = *&self->_transform.c;
    *&v33.a = *&self->_transform.a;
    *&v33.c = v8;
    *&v33.tx = *&self->_transform.tx;
    v35 = CGRectApplyAffineTransform(BoundingBox, &v33);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    if (sub_1001207D0(v35.origin.x, v35.origin.y, v35.size.width, v35.size.height))
    {
      [(CRLHighlightController *)self viewScale];
      if (v13 != 0.0)
      {
        [(CRLHighlightController *)self viewScale];
        v15 = v14;
        [(CRLHighlightController *)self viewScale];
        CGAffineTransformMakeScale(&v33, v15, v16);
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v37 = CGRectApplyAffineTransform(v36, &v33);
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
      }

      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      self->_rectToAnimate = CGRectIntegral(v38);
      [(CALayer *)self->_layer setFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v17 = self->_rectToAnimate.origin.x;
      v18 = self->_rectToAnimate.origin.y;
      v19 = self->_rectToAnimate.size.width;
      v20 = self->_rectToAnimate.size.height;
      [v6 size];
      v22 = v21;
      v24 = v23;
      *&v21 = (v23 - v20) * 0.5;
      v25 = roundf(*&v21);
      *&v23 = (v22 - v19) * 0.5;
      v26 = v17 - roundf(*&v23);
      v27 = v18 - v25;
      LODWORD(v25) = 0.75;
      [(CALayer *)self->_imageLayer setShadowOpacity:v25];
      [(CALayer *)self->_imageLayer setShadowRadius:1.0];
      [(CALayer *)self->_imageLayer setShadowOffset:0.0, 0.0];
      [(CALayer *)self->_imageLayer setContents:[(CRLImage *)self->_image CGImage]];
      [(CALayer *)self->_imageLayer setFrame:v26, v27, v22, v24];
      [(CALayer *)self->_imageLayer setContentsGravity:kCAGravityCenter];
      v28 = *&self->_transform.c;
      *&v33.a = *&self->_transform.a;
      *&v33.c = v28;
      *&v33.tx = *&self->_transform.tx;
      v29 = sub_100139A14(&v33.a);
      memset(&v33, 0, sizeof(v33));
      CGAffineTransformMakeScale(&v33, v29, v30);
      v31 = v33;
      sub_100139EB4(&v31, &v32, v22 * -0.5, v24 * -0.5);
      v33 = v32;
      [(CALayer *)self->_imageLayer setAffineTransform:&v32];
      [(CALayer *)self->_layer setHidden:0];
    }
  }
}

- (void)p_buildLayersWithBackgroundForPath:(CGPath *)a3 withImage:(id)a4
{
  v6 = a4;
  [(CRLHighlightController *)self setImage:v6];
  [(CRLHighlightController *)self setPath:a3];
  if (a3)
  {
    v7 = objc_alloc_init(CAShapeLayer);
    backgroundLayer = self->_backgroundLayer;
    self->_backgroundLayer = v7;

    [(CAShapeLayer *)self->_backgroundLayer setAnchorPoint:CGPointZero.x, CGPointZero.y];
    [(CAShapeLayer *)self->_backgroundLayer setEdgeAntialiasingMask:0];
    [(CALayer *)self->_imageLayer contentsScale];
    [(CAShapeLayer *)self->_backgroundLayer setContentsScale:?];
    [(CALayer *)self->_layer addSublayer:self->_backgroundLayer];
    [(CAShapeLayer *)self->_backgroundLayer setDelegate:self];
    [(CAShapeLayer *)self->_backgroundLayer setZPosition:-1.0];
    LODWORD(v9) = 0.75;
    [(CAShapeLayer *)self->_backgroundLayer setShadowOpacity:v9];
    [(CAShapeLayer *)self->_backgroundLayer setShadowRadius:1.0];
    [(CAShapeLayer *)self->_backgroundLayer setShadowOffset:0.0, 0.0];
    [(CRLHighlightController *)self p_buildLayersForPath:a3 withImage:v6];
    [(CALayer *)self->_imageLayer setShadowOpacity:0.0];
    [(CALayer *)self->_layer setFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    BoundingBox = CGPathGetBoundingBox(a3);
    v10 = *&self->_transform.c;
    *&transform.a = *&self->_transform.a;
    *&transform.c = v10;
    *&transform.tx = *&self->_transform.tx;
    v32 = CGRectApplyAffineTransform(BoundingBox, &transform);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    [(CRLHighlightController *)self viewScale];
    if (v15 == 0.0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101342294();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013422BC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101342350();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLHighlightController p_buildLayersWithBackgroundForPath:withImage:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHighlightController.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:209 isFatal:0 description:"viewScale must be set before calling this method!"];
    }

    memset(&transform, 0, sizeof(transform));
    [(CRLHighlightController *)self viewScale];
    v20 = v19;
    [(CRLHighlightController *)self viewScale];
    CGAffineTransformMakeScale(&transform, v20, v21);
    [(CRLHighlightController *)self viewScale];
    if (v22 != 0.0)
    {
      v29 = transform;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectApplyAffineTransform(v33, &v29);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    self->_rectToAnimate = CGRectIntegral(v35);
    CopyByTransformingPath = CGPathCreateCopyByTransformingPath(a3, &self->_transform);
    v24 = CGPathCreateCopyByTransformingPath(CopyByTransformingPath, &transform);
    [(CAShapeLayer *)self->_backgroundLayer setPath:v24];
    backgroundColor = self->_backgroundColor;
    if (!backgroundColor)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101342378();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013423A0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101342450();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v26);
      }

      v27 = [NSString stringWithUTF8String:"[CRLHighlightController p_buildLayersWithBackgroundForPath:withImage:]"];
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLHighlightController.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:218 isFatal:0 description:"invalid nil value for '%{public}s'", "_backgroundColor"];

      backgroundColor = self->_backgroundColor;
    }

    [(CAShapeLayer *)self->_backgroundLayer setFillColor:backgroundColor];
    [(CAShapeLayer *)self->_backgroundLayer setContentsGravity:kCAGravityCenter];
    CGPathRelease(v24);
    CGPathRelease(CopyByTransformingPath);
    [(CALayer *)self->_layer setHidden:0];
  }
}

- (void)buildLayersForPath:(CGPath *)a3 withImage:(id)a4
{
  v6 = a4;
  if ([(CRLHighlightController *)self shouldCreateBackground])
  {
    [(CRLHighlightController *)self p_buildLayersWithBackgroundForPath:a3 withImage:v6];
  }

  else
  {
    [(CRLHighlightController *)self p_buildLayersForPath:a3 withImage:v6];
  }
}

- (CGAffineTransform)transform
{
  v3 = *&self[2].d;
  *&retstr->a = *&self[2].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].ty;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_transform.tx = *&a3->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

- (CGRect)rectToAnimate
{
  x = self->_rectToAnimate.origin.x;
  y = self->_rectToAnimate.origin.y;
  width = self->_rectToAnimate.size.width;
  height = self->_rectToAnimate.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end