@interface CRLCanvasRenderable
+ (id)renderable;
+ (id)renderableFromLayer:(id)layer;
- (BOOL)allowsGroupOpacity;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)contentsAreFlipped;
- (BOOL)crl_tilingSafeHasContents;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHidden;
- (BOOL)masksToBounds;
- (BOOL)shouldRasterize;
- (CALayer)mask;
- (CALayer)superlayer;
- (CALayerDelegate)delegate;
- (CGAffineTransform)affineTransform;
- (CGColor)backgroundColor;
- (CGColor)borderColor;
- (CGColor)shadowColor;
- (CGPath)shadowPath;
- (CGPoint)anchorPoint;
- (CGPoint)convertPoint:(CGPoint)point fromLayer:(id)layer;
- (CGPoint)convertPoint:(CGPoint)point toLayer:(id)layer;
- (CGPoint)position;
- (CGRect)bounds;
- (CGRect)contentsRect;
- (CGRect)frame;
- (CGSize)preferredFrameSize;
- (CGSize)shadowOffset;
- (CRLCanvasRenderable)initWithCALayer:(id)layer;
- (CRLCanvasRenderable)presentationRenderable;
- (NSArray)sublayers;
- (NSArray)subrenderables;
- (NSString)contentsGravity;
- (NSString)cornerCurve;
- (NSString)magnificationFilter;
- (NSString)name;
- (double)borderWidth;
- (double)contentsScale;
- (double)cornerRadius;
- (double)rasterizationScale;
- (double)shadowRadius;
- (double)zPosition;
- (float)opacity;
- (float)shadowOpacity;
- (id)animationForKey:(id)key;
- (id)contents;
- (id)description;
- (unsigned)edgeAntialiasingMask;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addSublayer:(id)sublayer;
- (void)addSubrenderable:(id)subrenderable;
- (void)crl_ignoreAccessibilityInvertColorsIfNeeded;
- (void)crl_ignoreAccessibilityInvertColorsIfNeeded:(BOOL)needed;
- (void)removeAnimationForKey:(id)key;
- (void)removeFromSuperlayer;
- (void)replaceSubrenderable:(id)subrenderable withRenderable:(id)renderable;
- (void)setAffineTransform:(CGAffineTransform *)transform;
- (void)setAllowsGroupOpacity:(BOOL)opacity;
- (void)setAnchorPoint:(CGPoint)point;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setBorderColor:(CGColor *)color;
- (void)setBorderWidth:(double)width;
- (void)setBounds:(CGRect)bounds;
- (void)setContents:(id)contents;
- (void)setContentsGravity:(id)gravity;
- (void)setContentsRect:(CGRect)rect;
- (void)setContentsScale:(double)scale;
- (void)setCornerCurve:(id)curve;
- (void)setCornerRadius:(double)radius;
- (void)setDelegate:(id)delegate;
- (void)setEdgeAntialiasingMask:(unsigned int)mask;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setIfDifferentFrame:(CGRect)frame orTransform:(CGAffineTransform *)transform;
- (void)setMagnificationFilter:(id)filter;
- (void)setMask:(id)mask;
- (void)setMaskRenderable:(id)renderable;
- (void)setMasksToBounds:(BOOL)bounds;
- (void)setName:(id)name;
- (void)setNeedsDisplay;
- (void)setOpacity:(float)opacity;
- (void)setPosition:(CGPoint)position;
- (void)setRasterizationScale:(double)scale;
- (void)setShadowColor:(CGColor *)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(float)opacity;
- (void)setShadowPath:(CGPath *)path;
- (void)setShadowRadius:(double)radius;
- (void)setShouldRasterize:(BOOL)rasterize;
- (void)setSublayers:(id)sublayers;
- (void)setSubrenderables:(id)subrenderables;
- (void)setZPosition:(double)position;
@end

@implementation CRLCanvasRenderable

- (CRLCanvasRenderable)initWithCALayer:(id)layer
{
  layerCopy = layer;
  if ((-[CRLCanvasRenderable isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() crl_renderableClass]) & 1) == 0)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101330CAC();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 67110402;
      v38 = v9;
      v39 = 2082;
      v40 = "[CRLCanvasRenderable initWithCALayer:]";
      v41 = 2082;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRenderable.m";
      v43 = 1024;
      v44 = 22;
      v45 = 2114;
      v46 = v13;
      v47 = 2114;
      v48 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Wrong renderable class (%{public}@) for layer class (%{public}@)!", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101330CC0();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v16, v9);
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = objc_opt_class();
    v35 = NSStringFromClass(v19);
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Wrong renderable class (%{public}@) for layer class (%{public}@)!", v20, v21, v22, v23, v24, v25, v26, "[CRLCanvasRenderable initWithCALayer:]");

    v27 = [NSString stringWithUTF8String:"[CRLCanvasRenderable initWithCALayer:]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRenderable.m"];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:22 isFatal:1 description:"Wrong renderable class (%{public}@) for layer class (%{public}@)!", v30, v32, 22, v18, v35];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v33, v34);
    abort();
  }

  v36.receiver = self;
  v36.super_class = CRLCanvasRenderable;
  v6 = [(CRLCanvasRenderable *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layer, layer);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CALayer *)self->_layer isEqual:equalCopy->_layer];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)renderableFromLayer:(id)layer
{
  layerCopy = layer;
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "crl_renderableClass"))];

  return v4;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CALayer layer];
  v4 = [v2 initWithCALayer:v3];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  layer = [(CRLCanvasRenderable *)self layer];
  v6 = [NSString stringWithFormat:@"<%@: %@>", v4, layer];

  return v6;
}

- (void)addSubrenderable:(id)subrenderable
{
  subrenderableCopy = subrenderable;
  layer = [(CRLCanvasRenderable *)self layer];
  layer2 = [subrenderableCopy layer];

  [layer addSublayer:layer2];
}

- (void)setSubrenderables:(id)subrenderables
{
  subrenderablesCopy = subrenderables;
  if (subrenderablesCopy)
  {
    v5 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = subrenderablesCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          layer = [*(*(&v14 + 1) + 8 * i) layer];
          [v5 addObject:layer];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    layer2 = [(CRLCanvasRenderable *)self layer];
    [layer2 setSublayers:v5];
  }

  else
  {
    layer3 = [(CRLCanvasRenderable *)self layer];
    [layer3 setSublayers:0];
  }
}

- (void)replaceSubrenderable:(id)subrenderable withRenderable:(id)renderable
{
  renderableCopy = renderable;
  subrenderableCopy = subrenderable;
  layer = [(CRLCanvasRenderable *)self layer];
  layer2 = [subrenderableCopy layer];

  layer3 = [renderableCopy layer];

  [layer replaceSublayer:layer2 with:layer3];
}

- (NSArray)subrenderables
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layer = [(CRLCanvasRenderable *)self layer];
  sublayers = [layer sublayers];

  v6 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        v10 = [CRLCanvasRenderable renderableFromLayer:*(*(&v14 + 1) + 8 * v9)];
        [(NSArray *)v3 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([(NSArray *)v3 count])
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (void)setMaskRenderable:(id)renderable
{
  layer = [renderable layer];
  layer2 = [(CRLCanvasRenderable *)self layer];
  [layer2 setMask:layer];
}

- (CRLCanvasRenderable)presentationRenderable
{
  layer = [(CRLCanvasRenderable *)self layer];
  presentationLayer = [layer presentationLayer];

  if (presentationLayer)
  {
    layer2 = [(CRLCanvasRenderable *)self layer];
    presentationLayer2 = [layer2 presentationLayer];
    v7 = [CRLCanvasRenderable renderableFromLayer:presentationLayer2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CALayerDelegate)delegate
{
  layer = [(CRLCanvasRenderable *)self layer];
  delegate = [layer delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setDelegate:delegateCopy];
}

- (id)contents
{
  layer = [(CRLCanvasRenderable *)self layer];
  contents = [layer contents];

  return contents;
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setContents:contentsCopy];
}

- (CALayer)superlayer
{
  layer = [(CRLCanvasRenderable *)self layer];
  superlayer = [layer superlayer];

  return superlayer;
}

- (NSArray)sublayers
{
  layer = [(CRLCanvasRenderable *)self layer];
  sublayers = [layer sublayers];

  return sublayers;
}

- (void)setSublayers:(id)sublayers
{
  sublayersCopy = sublayers;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setSublayers:sublayersCopy];
}

- (CGPoint)anchorPoint
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer anchorPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setAnchorPoint:{x, y}];
}

- (CALayer)mask
{
  layer = [(CRLCanvasRenderable *)self layer];
  mask = [layer mask];

  return mask;
}

- (void)setMask:(id)mask
{
  maskCopy = mask;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setMask:maskCopy];
}

- (BOOL)isHidden
{
  layer = [(CRLCanvasRenderable *)self layer];
  isHidden = [layer isHidden];

  return isHidden;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setHidden:hiddenCopy];
}

- (float)opacity
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer opacity];
  v4 = v3;

  return v4;
}

- (void)setOpacity:(float)opacity
{
  layer = [(CRLCanvasRenderable *)self layer];
  *&v4 = opacity;
  [layer setOpacity:v4];
}

- (CGRect)bounds
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setBounds:{x, y, width, height}];
}

- (CGRect)frame
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setFrame:{x, y, width, height}];
}

- (CGPoint)position
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer position];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setPosition:{x, y}];
}

- (CGAffineTransform)affineTransform
{
  layer = [(CRLCanvasRenderable *)self layer];
  if (layer)
  {
    v6 = layer;
    [layer affineTransform];
    layer = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setAffineTransform:(CGAffineTransform *)transform
{
  v3 = [(CRLCanvasRenderable *)self layer:*&transform->a];
  [v3 setAffineTransform:&v4];
}

- (double)contentsScale
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer contentsScale];
  v4 = v3;

  return v4;
}

- (void)setContentsScale:(double)scale
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setContentsScale:scale];
}

- (CGColor)backgroundColor
{
  layer = [(CRLCanvasRenderable *)self layer];
  backgroundColor = [layer backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(CGColor *)color
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setBackgroundColor:color];
}

- (double)cornerRadius
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setCornerRadius:radius];
}

- (NSString)cornerCurve
{
  layer = [(CRLCanvasRenderable *)self layer];
  cornerCurve = [layer cornerCurve];

  return cornerCurve;
}

- (void)setCornerCurve:(id)curve
{
  curveCopy = curve;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setCornerCurve:curveCopy];
}

- (unsigned)edgeAntialiasingMask
{
  layer = [(CRLCanvasRenderable *)self layer];
  edgeAntialiasingMask = [layer edgeAntialiasingMask];

  return edgeAntialiasingMask;
}

- (void)setEdgeAntialiasingMask:(unsigned int)mask
{
  v3 = *&mask;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setEdgeAntialiasingMask:v3];
}

- (double)borderWidth
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)width
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setBorderWidth:width];
}

- (CGColor)borderColor
{
  layer = [(CRLCanvasRenderable *)self layer];
  borderColor = [layer borderColor];

  return borderColor;
}

- (void)setBorderColor:(CGColor *)color
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setBorderColor:color];
}

- (NSString)name
{
  layer = [(CRLCanvasRenderable *)self layer];
  name = [layer name];

  return name;
}

- (void)setName:(id)name
{
  nameCopy = name;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setName:nameCopy];
}

- (CGRect)contentsRect
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setContentsRect:{x, y, width, height}];
}

- (BOOL)allowsGroupOpacity
{
  layer = [(CRLCanvasRenderable *)self layer];
  allowsGroupOpacity = [layer allowsGroupOpacity];

  return allowsGroupOpacity;
}

- (void)setAllowsGroupOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setAllowsGroupOpacity:opacityCopy];
}

- (BOOL)masksToBounds
{
  layer = [(CRLCanvasRenderable *)self layer];
  masksToBounds = [layer masksToBounds];

  return masksToBounds;
}

- (void)setMasksToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setMasksToBounds:boundsCopy];
}

- (NSString)magnificationFilter
{
  layer = [(CRLCanvasRenderable *)self layer];
  magnificationFilter = [layer magnificationFilter];

  return magnificationFilter;
}

- (void)setMagnificationFilter:(id)filter
{
  filterCopy = filter;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setMagnificationFilter:filterCopy];
}

- (double)zPosition
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer zPosition];
  v4 = v3;

  return v4;
}

- (void)setZPosition:(double)position
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setZPosition:position];
}

- (NSString)contentsGravity
{
  layer = [(CRLCanvasRenderable *)self layer];
  contentsGravity = [layer contentsGravity];

  return contentsGravity;
}

- (void)setContentsGravity:(id)gravity
{
  gravityCopy = gravity;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setContentsGravity:gravityCopy];
}

- (CGColor)shadowColor
{
  layer = [(CRLCanvasRenderable *)self layer];
  shadowColor = [layer shadowColor];

  return shadowColor;
}

- (void)setShadowColor:(CGColor *)color
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setShadowColor:color];
}

- (float)shadowOpacity
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowOpacity:(float)opacity
{
  layer = [(CRLCanvasRenderable *)self layer];
  *&v4 = opacity;
  [layer setShadowOpacity:v4];
}

- (CGSize)shadowOffset
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setShadowOffset:{width, height}];
}

- (double)shadowRadius
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowRadius:(double)radius
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setShadowRadius:radius];
}

- (CGPath)shadowPath
{
  layer = [(CRLCanvasRenderable *)self layer];
  shadowPath = [layer shadowPath];

  return shadowPath;
}

- (void)setShadowPath:(CGPath *)path
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setShadowPath:path];
}

- (BOOL)shouldRasterize
{
  layer = [(CRLCanvasRenderable *)self layer];
  shouldRasterize = [layer shouldRasterize];

  return shouldRasterize;
}

- (void)setShouldRasterize:(BOOL)rasterize
{
  rasterizeCopy = rasterize;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setShouldRasterize:rasterizeCopy];
}

- (double)rasterizationScale
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer rasterizationScale];
  v4 = v3;

  return v4;
}

- (void)setRasterizationScale:(double)scale
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setRasterizationScale:scale];
}

- (CGSize)preferredFrameSize
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer preferredFrameSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)crl_tilingSafeHasContents
{
  layer = [(CRLCanvasRenderable *)self layer];
  crl_tilingSafeHasContents = [layer crl_tilingSafeHasContents];

  return crl_tilingSafeHasContents;
}

- (void)removeFromSuperlayer
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer removeFromSuperlayer];
}

- (void)setNeedsDisplay
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer setNeedsDisplay];
}

- (void)addSublayer:(id)sublayer
{
  sublayerCopy = sublayer;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer addSublayer:sublayerCopy];
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  keyCopy = key;
  animationCopy = animation;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer addAnimation:animationCopy forKey:keyCopy];
}

- (id)animationForKey:(id)key
{
  keyCopy = key;
  layer = [(CRLCanvasRenderable *)self layer];
  v6 = [layer animationForKey:keyCopy];

  return v6;
}

- (void)removeAnimationForKey:(id)key
{
  keyCopy = key;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer removeAnimationForKey:keyCopy];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(CRLCanvasRenderable *)self layer];
  v6 = [layer containsPoint:{x, y}];

  return v6;
}

- (CGPoint)convertPoint:(CGPoint)point fromLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer convertPoint:layerCopy toLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)contentsAreFlipped
{
  layer = [(CRLCanvasRenderable *)self layer];
  contentsAreFlipped = [layer contentsAreFlipped];

  return contentsAreFlipped;
}

- (void)crl_ignoreAccessibilityInvertColorsIfNeeded
{
  layer = [(CRLCanvasRenderable *)self layer];
  [layer crl_ignoreAccessibilityInvertColorsIfNeeded];
}

- (void)crl_ignoreAccessibilityInvertColorsIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer crl_ignoreAccessibilityInvertColorsIfNeeded:neededCopy];
}

- (void)setIfDifferentFrame:(CGRect)frame orTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layer = [(CRLCanvasRenderable *)self layer];
  v10 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v10;
  v11[2] = *&transform->tx;
  [layer crl_setIfDifferentFrame:v11 orTransform:{x, y, width, height}];
}

@end