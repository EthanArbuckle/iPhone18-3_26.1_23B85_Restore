@interface CRLSixChannelTilingLayer
- (CRLSixChannelTilingLayer)init;
- (id)p_createSublayerWithCompositingFilter:(id)a3;
- (id)p_internalSublayers;
- (void)crl_tilingSafeSetSublayers:(id)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)layoutSublayers;
- (void)setContentsScale:(double)a3;
- (void)setDrawsAsynchronously:(BOOL)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setShouldRasterize:(BOOL)a3;
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

    v8 = [(CRLSixChannelTilingLayer *)v3 p_internalSublayers];
    [(CRLSixChannelTilingLayer *)v3 setSublayers:v8];
  }

  return v3;
}

- (id)p_createSublayerWithCompositingFilter:(id)a3
{
  v4 = a3;
  v5 = +[CRLTilingLayer layer];
  [v5 setDelegate:self];
  [v5 setAllowsGroupOpacity:0];
  [v5 setAllowsGroupBlending:0];
  v6 = [CAFilter filterWithType:v4];

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

- (void)setDrawsAsynchronously:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CRLSixChannelTilingLayer;
  [(CRLSixChannelTilingLayer *)&v5 setDrawsAsynchronously:?];
  [(CRLTilingLayer *)self->_multiplyLayer setDrawsAsynchronously:v3];
  [(CRLTilingLayer *)self->_addLayer setDrawsAsynchronously:v3];
}

- (void)setShouldRasterize:(BOOL)a3
{
  v3 = a3;
  [(CRLTilingLayer *)self->_multiplyLayer setShouldRasterize:?];
  addLayer = self->_addLayer;

  [(CRLTilingLayer *)addLayer setShouldRasterize:v3];
}

- (void)setContentsScale:(double)a3
{
  v5.receiver = self;
  v5.super_class = CRLSixChannelTilingLayer;
  [(CRLSixChannelTilingLayer *)&v5 setContentsScale:?];
  [(CRLTilingLayer *)self->_multiplyLayer setContentsScale:a3];
  [(CRLTilingLayer *)self->_addLayer setContentsScale:a3];
}

- (void)crl_tilingSafeSetSublayers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 | self->_customSublayers)
  {
    v12 = v4;
    v6 = [v4 isEqual:?];
    v5 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [v12 copy];
      customSublayers = self->_customSublayers;
      self->_customSublayers = v7;

      v9 = [(CRLSixChannelTilingLayer *)self p_internalSublayers];
      v10 = v9;
      if (v12)
      {
        v11 = [v9 arrayByAddingObjectsFromArray:?];
        [(CRLSixChannelTilingLayer *)self setSublayers:v11];
      }

      else
      {
        [(CRLSixChannelTilingLayer *)self setSublayers:v9];
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

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = CRLSixChannelTilingLayer;
  [(CRLSixChannelTilingLayer *)&v8 setNeedsDisplayInRect:?];
  [(CRLSixChannelTilingLayer *)self convertRect:self->_multiplyLayer toLayer:x, y, width, height];
  [(CRLTilingLayer *)self->_multiplyLayer setNeedsDisplayInRect:?];
  [(CRLSixChannelTilingLayer *)self convertRect:self->_addLayer toLayer:x, y, width, height];
  [(CRLTilingLayer *)self->_addLayer setNeedsDisplayInRect:?];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_multiplyLayer == v6)
  {
    sub_10050F608(a4, 1);
LABEL_14:
    [(CRLSixChannelTilingLayer *)self drawInContext:a4];
    goto LABEL_15;
  }

  if (self->_addLayer == v6)
  {
    sub_10050F73C(a4, 1);
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