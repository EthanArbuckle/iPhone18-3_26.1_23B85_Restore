@interface CRLCanvasRenderable
+ (id)renderable;
+ (id)renderableFromLayer:(id)a3;
- (BOOL)allowsGroupOpacity;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)contentsAreFlipped;
- (BOOL)crl_tilingSafeHasContents;
- (BOOL)isEqual:(id)a3;
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
- (CGPoint)convertPoint:(CGPoint)a3 fromLayer:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toLayer:(id)a4;
- (CGPoint)position;
- (CGRect)bounds;
- (CGRect)contentsRect;
- (CGRect)frame;
- (CGSize)preferredFrameSize;
- (CGSize)shadowOffset;
- (CRLCanvasRenderable)initWithCALayer:(id)a3;
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
- (id)animationForKey:(id)a3;
- (id)contents;
- (id)description;
- (unsigned)edgeAntialiasingMask;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addSublayer:(id)a3;
- (void)addSubrenderable:(id)a3;
- (void)crl_ignoreAccessibilityInvertColorsIfNeeded;
- (void)crl_ignoreAccessibilityInvertColorsIfNeeded:(BOOL)a3;
- (void)removeAnimationForKey:(id)a3;
- (void)removeFromSuperlayer;
- (void)replaceSubrenderable:(id)a3 withRenderable:(id)a4;
- (void)setAffineTransform:(CGAffineTransform *)a3;
- (void)setAllowsGroupOpacity:(BOOL)a3;
- (void)setAnchorPoint:(CGPoint)a3;
- (void)setBackgroundColor:(CGColor *)a3;
- (void)setBorderColor:(CGColor *)a3;
- (void)setBorderWidth:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContents:(id)a3;
- (void)setContentsGravity:(id)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setContentsScale:(double)a3;
- (void)setCornerCurve:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setEdgeAntialiasingMask:(unsigned int)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIfDifferentFrame:(CGRect)a3 orTransform:(CGAffineTransform *)a4;
- (void)setMagnificationFilter:(id)a3;
- (void)setMask:(id)a3;
- (void)setMaskRenderable:(id)a3;
- (void)setMasksToBounds:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setNeedsDisplay;
- (void)setOpacity:(float)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setRasterizationScale:(double)a3;
- (void)setShadowColor:(CGColor *)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowOpacity:(float)a3;
- (void)setShadowPath:(CGPath *)a3;
- (void)setShadowRadius:(double)a3;
- (void)setShouldRasterize:(BOOL)a3;
- (void)setSublayers:(id)a3;
- (void)setSubrenderables:(id)a3;
- (void)setZPosition:(double)a3;
@end

@implementation CRLCanvasRenderable

- (CRLCanvasRenderable)initWithCALayer:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_layer, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CALayer *)self->_layer isEqual:v4->_layer];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)renderableFromLayer:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "crl_renderableClass"))];

  return v4;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CALayer layer];
  v4 = [v2 initWithCALayer:v3];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLCanvasRenderable *)self layer];
  v6 = [NSString stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (void)addSubrenderable:(id)a3
{
  v4 = a3;
  v6 = [(CRLCanvasRenderable *)self layer];
  v5 = [v4 layer];

  [v6 addSublayer:v5];
}

- (void)setSubrenderables:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
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

          v11 = [*(*(&v14 + 1) + 8 * i) layer];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [(CRLCanvasRenderable *)self layer];
    [v12 setSublayers:v5];
  }

  else
  {
    v13 = [(CRLCanvasRenderable *)self layer];
    [v13 setSublayers:0];
  }
}

- (void)replaceSubrenderable:(id)a3 withRenderable:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(CRLCanvasRenderable *)self layer];
  v8 = [v7 layer];

  v9 = [v6 layer];

  [v10 replaceSublayer:v8 with:v9];
}

- (NSArray)subrenderables
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CRLCanvasRenderable *)self layer];
  v5 = [v4 sublayers];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [CRLCanvasRenderable renderableFromLayer:*(*(&v14 + 1) + 8 * v9)];
        [(NSArray *)v3 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setMaskRenderable:(id)a3
{
  v5 = [a3 layer];
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setMask:v5];
}

- (CRLCanvasRenderable)presentationRenderable
{
  v3 = [(CRLCanvasRenderable *)self layer];
  v4 = [v3 presentationLayer];

  if (v4)
  {
    v5 = [(CRLCanvasRenderable *)self layer];
    v6 = [v5 presentationLayer];
    v7 = [CRLCanvasRenderable renderableFromLayer:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CALayerDelegate)delegate
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setDelegate:v4];
}

- (id)contents
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 contents];

  return v3;
}

- (void)setContents:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setContents:v4];
}

- (CALayer)superlayer
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 superlayer];

  return v3;
}

- (NSArray)sublayers
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 sublayers];

  return v3;
}

- (void)setSublayers:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setSublayers:v4];
}

- (CGPoint)anchorPoint
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 anchorPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setAnchorPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setAnchorPoint:{x, y}];
}

- (CALayer)mask
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 mask];

  return v3;
}

- (void)setMask:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setMask:v4];
}

- (BOOL)isHidden
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setHidden:v3];
}

- (float)opacity
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 opacity];
  v4 = v3;

  return v4;
}

- (void)setOpacity:(float)a3
{
  v5 = [(CRLCanvasRenderable *)self layer];
  *&v4 = a3;
  [v5 setOpacity:v4];
}

- (CGRect)bounds
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 bounds];
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLCanvasRenderable *)self layer];
  [v7 setBounds:{x, y, width, height}];
}

- (CGRect)frame
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 frame];
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLCanvasRenderable *)self layer];
  [v7 setFrame:{x, y, width, height}];
}

- (CGPoint)position
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 position];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setPosition:{x, y}];
}

- (CGAffineTransform)affineTransform
{
  v4 = [(CRLCanvasRenderable *)self layer];
  if (v4)
  {
    v6 = v4;
    [v4 affineTransform];
    v4 = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setAffineTransform:(CGAffineTransform *)a3
{
  v3 = [(CRLCanvasRenderable *)self layer:*&a3->a];
  [v3 setAffineTransform:&v4];
}

- (double)contentsScale
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 contentsScale];
  v4 = v3;

  return v4;
}

- (void)setContentsScale:(double)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setContentsScale:a3];
}

- (CGColor)backgroundColor
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(CGColor *)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setBackgroundColor:a3];
}

- (double)cornerRadius
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setCornerRadius:a3];
}

- (NSString)cornerCurve
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 cornerCurve];

  return v3;
}

- (void)setCornerCurve:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setCornerCurve:v4];
}

- (unsigned)edgeAntialiasingMask
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 edgeAntialiasingMask];

  return v3;
}

- (void)setEdgeAntialiasingMask:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setEdgeAntialiasingMask:v3];
}

- (double)borderWidth
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setBorderWidth:a3];
}

- (CGColor)borderColor
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 borderColor];

  return v3;
}

- (void)setBorderColor:(CGColor *)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setBorderColor:a3];
}

- (NSString)name
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 name];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setName:v4];
}

- (CGRect)contentsRect
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 contentsRect];
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

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CRLCanvasRenderable *)self layer];
  [v7 setContentsRect:{x, y, width, height}];
}

- (BOOL)allowsGroupOpacity
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 allowsGroupOpacity];

  return v3;
}

- (void)setAllowsGroupOpacity:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setAllowsGroupOpacity:v3];
}

- (BOOL)masksToBounds
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 masksToBounds];

  return v3;
}

- (void)setMasksToBounds:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setMasksToBounds:v3];
}

- (NSString)magnificationFilter
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 magnificationFilter];

  return v3;
}

- (void)setMagnificationFilter:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setMagnificationFilter:v4];
}

- (double)zPosition
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 zPosition];
  v4 = v3;

  return v4;
}

- (void)setZPosition:(double)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setZPosition:a3];
}

- (NSString)contentsGravity
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 contentsGravity];

  return v3;
}

- (void)setContentsGravity:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setContentsGravity:v4];
}

- (CGColor)shadowColor
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 shadowColor];

  return v3;
}

- (void)setShadowColor:(CGColor *)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setShadowColor:a3];
}

- (float)shadowOpacity
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowOpacity:(float)a3
{
  v5 = [(CRLCanvasRenderable *)self layer];
  *&v4 = a3;
  [v5 setShadowOpacity:v4];
}

- (CGSize)shadowOffset
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 setShadowOffset:{width, height}];
}

- (double)shadowRadius
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowRadius:(double)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setShadowRadius:a3];
}

- (CGPath)shadowPath
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 shadowPath];

  return v3;
}

- (void)setShadowPath:(CGPath *)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setShadowPath:a3];
}

- (BOOL)shouldRasterize
{
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 shouldRasterize];

  return v3;
}

- (void)setShouldRasterize:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setShouldRasterize:v3];
}

- (double)rasterizationScale
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 rasterizationScale];
  v4 = v3;

  return v4;
}

- (void)setRasterizationScale:(double)a3
{
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 setRasterizationScale:a3];
}

- (CGSize)preferredFrameSize
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 preferredFrameSize];
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
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 crl_tilingSafeHasContents];

  return v3;
}

- (void)removeFromSuperlayer
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 removeFromSuperlayer];
}

- (void)setNeedsDisplay
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 setNeedsDisplay];
}

- (void)addSublayer:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 addSublayer:v4];
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLCanvasRenderable *)self layer];
  [v8 addAnimation:v7 forKey:v6];
}

- (id)animationForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  v6 = [v5 animationForKey:v4];

  return v6;
}

- (void)removeAnimationForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRenderable *)self layer];
  [v5 removeAnimationForKey:v4];
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasRenderable *)self layer];
  v6 = [v5 containsPoint:{x, y}];

  return v6;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CRLCanvasRenderable *)self layer];
  [v8 convertPoint:v7 fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CRLCanvasRenderable *)self layer];
  [v8 convertPoint:v7 toLayer:{x, y}];
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
  v2 = [(CRLCanvasRenderable *)self layer];
  v3 = [v2 contentsAreFlipped];

  return v3;
}

- (void)crl_ignoreAccessibilityInvertColorsIfNeeded
{
  v2 = [(CRLCanvasRenderable *)self layer];
  [v2 crl_ignoreAccessibilityInvertColorsIfNeeded];
}

- (void)crl_ignoreAccessibilityInvertColorsIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLCanvasRenderable *)self layer];
  [v4 crl_ignoreAccessibilityInvertColorsIfNeeded:v3];
}

- (void)setIfDifferentFrame:(CGRect)a3 orTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(CRLCanvasRenderable *)self layer];
  v10 = *&a4->c;
  v11[0] = *&a4->a;
  v11[1] = v10;
  v11[2] = *&a4->tx;
  [v9 crl_setIfDifferentFrame:v11 orTransform:{x, y, width, height}];
}

@end