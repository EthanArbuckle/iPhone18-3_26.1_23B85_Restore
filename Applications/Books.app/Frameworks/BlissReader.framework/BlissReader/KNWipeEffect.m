@interface KNWipeEffect
- (CATransform3D)MVPMatrix;
- (KNWipeEffect)initWithContext:(id)a3;
- (double)p_animationPercentWithPercent:(double)a3;
- (void)renderEffectAtPercent:(double)a3 atBufferIndex:(unint64_t)a4 withEncoder:(id)a5;
- (void)setMVPMatrix:(CATransform3D *)a3;
- (void)setTexture:(id)a3;
- (void)setupEffectIfNecessary;
@end

@implementation KNWipeEffect

- (KNWipeEffect)initWithContext:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = KNWipeEffect;
  v5 = [(KNWipeEffect *)&v17 init];
  if (v5)
  {
    v6 = [v4 metalContext];
    v7 = *(v5 + 8);
    *(v5 + 8) = v6;

    *(v5 + 4) = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    v8 = [v4 animatedBuild];
    v5[8] = [v8 isBuildIn];

    v9 = [v4 animatedBuild];
    *(v5 + 9) = [v9 direction];

    v10 = [v4 animatedBuild];
    [v10 duration];
    *(v5 + 10) = v11;

    v12 = *&CATransform3DIdentity.m33;
    *(v5 + 152) = *&CATransform3DIdentity.m31;
    *(v5 + 168) = v12;
    v13 = *&CATransform3DIdentity.m43;
    *(v5 + 184) = *&CATransform3DIdentity.m41;
    *(v5 + 200) = v13;
    v14 = *&CATransform3DIdentity.m13;
    *(v5 + 88) = *&CATransform3DIdentity.m11;
    *(v5 + 104) = v14;
    v15 = *&CATransform3DIdentity.m23;
    *(v5 + 120) = *&CATransform3DIdentity.m21;
    *(v5 + 136) = v15;
    *(v5 + 3) = 0x3FF0000000000000;
  }

  return v5;
}

- (void)setTexture:(id)a3
{
  self->_texture = a3;
  [a3 singleTextureOpacity];
  self->_opacity = v4;
}

- (void)setMVPMatrix:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m21;
  *&self->_MVPMatrix.m23 = *&a3->m23;
  *&self->_MVPMatrix.m21 = v5;
  *&self->_MVPMatrix.m13 = v4;
  *&self->_MVPMatrix.m11 = v3;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m41;
  *&self->_MVPMatrix.m43 = *&a3->m43;
  *&self->_MVPMatrix.m41 = v8;
  *&self->_MVPMatrix.m33 = v7;
  *&self->_MVPMatrix.m31 = v6;
  wipeDataBuffer = self->_wipeDataBuffer;
  if (wipeDataBuffer)
  {
    v10 = *&a3->m33;
    v14[4] = *&a3->m31;
    v14[5] = v10;
    v11 = *&a3->m43;
    v14[6] = *&a3->m41;
    v14[7] = v11;
    v12 = *&a3->m13;
    v14[0] = *&a3->m11;
    v14[1] = v12;
    v13 = *&a3->m23;
    v14[2] = *&a3->m21;
    v14[3] = v13;
    [(KNWipeDataBuffer *)wipeDataBuffer setMVPMatrix:v14];
  }
}

- (double)p_animationPercentWithPercent:(double)a3
{
  TSUClamp();
  v5 = fmin(fmax((v4 - self->_startWipeAtPercent) / (self->_stopWipeAtPercent - self->_startWipeAtPercent), 0.0), 1.0);
  if (!self->_isBuildIn)
  {
    v5 = 1.0 - v5;
  }

  timingFunction = self->_timingFunction;

  [(CAMediaTimingFunction *)timingFunction TSD_valueAtPercent:v5];
  return result;
}

- (void)setupEffectIfNecessary
{
  if (!self->_texture)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[KNWipeEffect setupEffectIfNecessary]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNWipeDataBuffer.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:509 description:{@"invalid nil value for '%s'", "_texture"}];
  }

  if (self->_metalContext)
  {
    v6 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v6 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
    [v6 setBlendingEnabled:1];
    [v6 setDestinationRGBBlendFactor:5];
    [v6 setDestinationAlphaBlendFactor:5];
    [(TSDTexturedRectangle *)self->_texture frame];
    TSDRectWithSize();
    v7 = [KNWipeDataBuffer newWipeDataBufferWithVertexRect:"newWipeDataBufferWithVertexRect:textureRect:metalContext:colorAttachment:" textureRect:self->_metalContext metalContext:v6 colorAttachment:?];
    wipeDataBuffer = self->_wipeDataBuffer;
    self->_wipeDataBuffer = v7;
  }

  v9 = 11;
  if (self->_direction == 11)
  {
    v9 = 12;
  }

  if (self->_isBuildIn)
  {
    direction = self->_direction;
  }

  else
  {
    direction = v9;
  }

  [(KNWipeDataBuffer *)self->_wipeDataBuffer setDirection:direction];
  [(KNWipeDataBuffer *)self->_wipeDataBuffer setBlurFraction:*&kKNWipeDataBufferBlurFractionTransitionDefault];
  v11 = *&self->_MVPMatrix.m33;
  v15[4] = *&self->_MVPMatrix.m31;
  v15[5] = v11;
  v12 = *&self->_MVPMatrix.m43;
  v15[6] = *&self->_MVPMatrix.m41;
  v15[7] = v12;
  v13 = *&self->_MVPMatrix.m13;
  v15[0] = *&self->_MVPMatrix.m11;
  v15[1] = v13;
  v14 = *&self->_MVPMatrix.m23;
  v15[2] = *&self->_MVPMatrix.m21;
  v15[3] = v14;
  [(KNWipeDataBuffer *)self->_wipeDataBuffer setMVPMatrix:v15];
}

- (void)renderEffectAtPercent:(double)a3 atBufferIndex:(unint64_t)a4 withEncoder:(id)a5
{
  v16 = a5;
  if (!self->_metalContext)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[KNWipeEffect renderEffectAtPercent:atBufferIndex:withEncoder:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNWipeDataBuffer.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:537 description:{@"invalid nil value for '%s'", "_metalContext"}];
  }

  texture = self->_texture;
  if (!texture)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [NSString stringWithUTF8String:"[KNWipeEffect renderEffectAtPercent:atBufferIndex:withEncoder:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNWipeDataBuffer.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:538 description:{@"invalid nil value for '%s'", "_texture"}];

    texture = self->_texture;
  }

  v14 = [(TSDTexturedRectangle *)texture metalTexture];
  [v16 setFragmentTexture:v14 atIndex:0];

  wipeDataBuffer = self->_wipeDataBuffer;
  [(KNWipeEffect *)self p_animationPercentWithPercent:a3];
  [KNWipeDataBuffer drawWipeWithPercent:"drawWipeWithPercent:opacity:renderEncoder:" opacity:v16 renderEncoder:?];
}

- (CATransform3D)MVPMatrix
{
  v3 = *&self[1].m22;
  *&retstr->m31 = *&self[1].m14;
  *&retstr->m33 = v3;
  v4 = *&self[1].m32;
  *&retstr->m41 = *&self[1].m24;
  *&retstr->m43 = v4;
  v5 = *&self->m42;
  *&retstr->m11 = *&self->m34;
  *&retstr->m13 = v5;
  v6 = *&self[1].m12;
  *&retstr->m21 = *&self->m44;
  *&retstr->m23 = v6;
  return self;
}

@end