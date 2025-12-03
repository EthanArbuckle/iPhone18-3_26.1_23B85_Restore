@interface CRLSixChannelTilingLayer
- (CRLSixChannelTilingLayer)init;
- (id)p_createSublayerWithCompositingFilter:(id)filter;
- (id)p_internalSublayers;
- (void)crl_tilingSafeSetSublayers:(id)sublayers;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)setContentsScale:(double)scale;
- (void)setDrawsAsynchronously:(BOOL)asynchronously;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setShouldRasterize:(BOOL)rasterize;
@end

@implementation CRLSixChannelTilingLayer

- (CRLSixChannelTilingLayer)init
{
  v10.receiver = self;
  v10.super_class = CRLSixChannelTilingLayer;
  v2 = [(CRLSixChannelTilingLayer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(CRLSixChannelTilingLayer *)v2 setAllowsGroupOpacity:0];
    [(CRLSixChannelTilingLayer *)v3 setAllowsGroupBlending:0];
    v4 = [(CRLSixChannelTilingLayer *)v3 p_createSublayerWithCompositingFilter:kCAFilterMultiplyBlendMode];
    multiplyLayer = v3->_multiplyLayer;
    v3->_multiplyLayer = v4;

    v6 = [(CRLSixChannelTilingLayer *)v3 p_createSublayerWithCompositingFilter:kCAFilterLinearDodgeBlendMode];
    addLayer = v3->_addLayer;
    v3->_addLayer = v6;

    p_internalSublayers = [(CRLSixChannelTilingLayer *)v3 p_internalSublayers];
    [(CRLSixChannelTilingLayer *)v3 setSublayers:p_internalSublayers];
  }

  return v3;
}

- (id)p_createSublayerWithCompositingFilter:(id)filter
{
  filterCopy = filter;
  v5 = +[CRLTilingLayer layer];
  [v5 setDelegate:self];
  [v5 setAllowsGroupOpacity:0];
  [v5 setAllowsGroupBlending:0];
  v6 = [CAFilter filterWithType:filterCopy];

  [v5 setCompositingFilter:v6];

  return v5;
}

- (id)p_internalSublayers
{
  addLayer = self->_addLayer;
  v5[0] = self->_multiplyLayer;
  v5[1] = addLayer;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (void)setDrawsAsynchronously:(BOOL)asynchronously
{
  asynchronouslyCopy = asynchronously;
  v5.receiver = self;
  v5.super_class = CRLSixChannelTilingLayer;
  [(CRLSixChannelTilingLayer *)&v5 setDrawsAsynchronously:?];
  [(CRLTilingLayer *)self->_multiplyLayer setDrawsAsynchronously:asynchronouslyCopy];
  [(CRLTilingLayer *)self->_addLayer setDrawsAsynchronously:asynchronouslyCopy];
}

- (void)setShouldRasterize:(BOOL)rasterize
{
  rasterizeCopy = rasterize;
  [(CRLTilingLayer *)self->_multiplyLayer setShouldRasterize:?];
  addLayer = self->_addLayer;

  [(CRLTilingLayer *)addLayer setShouldRasterize:rasterizeCopy];
}

- (void)setContentsScale:(double)scale
{
  v5.receiver = self;
  v5.super_class = CRLSixChannelTilingLayer;
  [(CRLSixChannelTilingLayer *)&v5 setContentsScale:?];
  [(CRLTilingLayer *)self->_multiplyLayer setContentsScale:scale];
  [(CRLTilingLayer *)self->_addLayer setContentsScale:scale];
}

- (void)crl_tilingSafeSetSublayers:(id)sublayers
{
  sublayersCopy = sublayers;
  v5 = sublayersCopy;
  if (sublayersCopy | self->_customSublayers)
  {
    v12 = sublayersCopy;
    v6 = [sublayersCopy isEqual:?];
    v5 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [v12 copy];
      customSublayers = self->_customSublayers;
      self->_customSublayers = v7;

      p_internalSublayers = [(CRLSixChannelTilingLayer *)self p_internalSublayers];
      v10 = p_internalSublayers;
      if (v12)
      {
        v11 = [p_internalSublayers arrayByAddingObjectsFromArray:?];
        [(CRLSixChannelTilingLayer *)self setSublayers:v11];
      }

      else
      {
        [(CRLSixChannelTilingLayer *)self setSublayers:p_internalSublayers];
      }

      v5 = v12;
    }
  }
}

- (void)layoutSublayers
{
  v3.receiver = self;
  v3.super_class = CRLSixChannelTilingLayer;
  [(CRLSixChannelTilingLayer *)&v3 layoutSublayers];
  [(CRLSixChannelTilingLayer *)self bounds];
  [(CRLTilingLayer *)self->_multiplyLayer setFrame:?];
  [(CRLTilingLayer *)self->_multiplyLayer setNeedsLayout];
  [(CRLSixChannelTilingLayer *)self bounds];
  [(CRLTilingLayer *)self->_addLayer setFrame:?];
  [(CRLTilingLayer *)self->_addLayer setNeedsLayout];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = CRLSixChannelTilingLayer;
  [(CRLSixChannelTilingLayer *)&v8 setNeedsDisplayInRect:?];
  [(CRLSixChannelTilingLayer *)self convertRect:self->_multiplyLayer toLayer:x, y, width, height];
  [(CRLTilingLayer *)self->_multiplyLayer setNeedsDisplayInRect:?];
  [(CRLSixChannelTilingLayer *)self convertRect:self->_addLayer toLayer:x, y, width, height];
  [(CRLTilingLayer *)self->_addLayer setNeedsDisplayInRect:?];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  layerCopy = layer;
  v7 = layerCopy;
  if (self->_multiplyLayer == layerCopy)
  {
    sub_10050F608(context, 1);
LABEL_14:
    [(CRLSixChannelTilingLayer *)self drawInContext:context];
    goto LABEL_15;
  }

  if (self->_addLayer == layerCopy)
  {
    sub_10050F73C(context, 1);
    goto LABEL_14;
  }

  v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013336C0();
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013336D4(v7, v8, v9);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101333790();
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v10, v8);
  }

  v11 = [NSString stringWithUTF8String:"[CRLSixChannelTilingLayer drawLayer:inContext:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSixChannelTilingLayer.m"];
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:216 isFatal:0 description:"Unexpected delegate call for layer %@", v7];

LABEL_15:
}

@end