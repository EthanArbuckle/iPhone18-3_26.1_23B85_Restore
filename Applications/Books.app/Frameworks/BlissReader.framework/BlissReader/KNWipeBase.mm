@interface KNWipeBase
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8;
- (KNWipeBase)initWithAnimationContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)dealloc;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)a3;
@end

@implementation KNWipeBase

- (KNWipeBase)initWithAnimationContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = KNWipeBase;
  v3 = [(KNAnimationEffect *)&v5 initWithAnimationContext:a3];
  if (v3)
  {
    v3->_parameterGroup = +[KNAnimParameterGroup parameterGroupForFile:](KNAnimParameterGroup, "parameterGroupForFile:", [KNBundle() pathForResource:@"Wipe" ofType:@"parameterGroup"]);
  }

  return v3;
}

- (void)p_teardown
{
  self->mWipeDataBuffer = 0;
  self->_quadMetalShader = 0;
  self->_quadDataBuffer = 0;
}

- (void)dealloc
{
  [(KNWipeBase *)self p_teardown];
  v3.receiver = self;
  v3.super_class = KNWipeBase;
  [(KNWipeBase *)&v3 dealloc];
}

- (void)animationWillBeginWithContext:(id)a3
{
  v5 = [a3 textures];
  v6 = [a3 direction];
  v7 = v6;
  if (self->_isBuildOut)
  {
    v7 = sub_91470(v6);
  }

  v8 = [v5 firstObject];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  [(KNAnimationEffect *)self mvpMatrixWithContext:a3];
  v9 = [a3 metalContext];
  v10 = [v9 device];
  v11 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v11 setPixelFormat:objc_msgSend(v9, "pixelFormat")];
  [v11 setBlendingEnabled:1];
  [v11 setDestinationRGBBlendFactor:5];
  [v11 setDestinationAlphaBlendFactor:5];
  [v8 frame];
  TSDRectWithSize();
  v12 = [KNWipeDataBuffer newWipeDataBufferWithVertexRect:"newWipeDataBufferWithVertexRect:textureRect:metalContext:colorAttachment:" textureRect:v9 metalContext:v11 colorAttachment:?];
  self->mWipeDataBuffer = v12;
  [(KNWipeDataBuffer *)v12 setDirection:v7];
  [(KNWipeDataBuffer *)self->mWipeDataBuffer setBlurFraction:*&kKNWipeDataBufferBlurFractionTransitionDefault];
  mWipeDataBuffer = self->mWipeDataBuffer;
  v17[4] = v22;
  v17[5] = v23;
  v17[6] = v24;
  v17[7] = v25;
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  [(KNWipeDataBuffer *)mWipeDataBuffer setMVPMatrix:v17];
  v14 = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v21);
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v23);
  v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v24), v25);
  *self->_anon_20 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v19);
  *&self->_anon_20[16] = v14;
  *&self->_anon_20[32] = v15;
  *&self->_anon_20[48] = v16;
  if ([a3 isTransition])
  {
    [v8 frame];
    TSDRectWithSize();
    self->_quadDataBuffer = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:v10 device:?];
    self->_quadMetalShader = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:v10 colorAttachment:v11];
  }
}

- (void)renderFrameWithContext:(id)a3
{
  v5 = [a3 textures];
  [a3 percent];
  if (self->_isBuildOut)
  {
    v7 = 1.0 - v6;
  }

  else
  {
    v7 = v6;
  }

  if ([v5 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndex:0];
  }

  v9 = [v5 lastObject];
  v10 = [a3 metalContext];
  v11 = [v10 device];
  v12 = [v10 commandBuffer];
  v13 = [v10 passDescriptor];
  v14 = [v10 renderEncoder];
  if (v11)
  {
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (v12)
    {
LABEL_9:
      if (v13)
      {
        goto LABEL_10;
      }

LABEL_19:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_20:
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_11:
  v15 = [v9 metalTexture];
  v16 = [v8 metalTexture];
  if ([a3 isTransition])
  {
    [(TSDMetalShader *)self->_quadMetalShader setPipelineStateWithEncoder:v14 vertexBytes:self->_anon_20];
    [v14 setFragmentTexture:v16 atIndex:0];
    [(TSDMTLDataBuffer *)self->_quadDataBuffer drawWithEncoder:v14 atIndex:0];
  }

  if (v15)
  {
    [v14 setFragmentTexture:v15 atIndex:0];
    mWipeDataBuffer = self->mWipeDataBuffer;
    [v9 singleTextureOpacity];

    [(KNWipeDataBuffer *)mWipeDataBuffer drawWipeWithPercent:v14 opacity:v7 renderEncoder:v18];
  }
}

+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8
{
  if (a8 <= 0x174876E7FFLL && a7)
  {
    v11 = @"KNTransitionAttributesDirection";
    if ([*a3 objectForKey:{@"KNTransitionAttributesDirection", a4, a5, *&a6, a7}] || objc_msgSend(*a3, "objectForKey:", @"KNBuildAttributesDirection"))
    {
      if (a6 != 3)
      {
        v11 = @"KNBuildAttributesDirection";
      }

      v12 = [objc_msgSend(*a3 objectForKey:{v11), "unsignedIntegerValue"}] - 21;
      if (v12 > 6)
      {
        v13 = 11;
      }

      else
      {
        v13 = qword_34A1D0[v12];
      }

      if (a6 == 2)
      {
        v13 = sub_91470(v13);
      }

      v14 = [*a3 mutableCopy];
      [v14 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v13), v11}];
      *a3 = v14;
    }
  }
}

+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8
{
  v8 = a8 > 0x174876E7FFLL || !a7;
  if (!v8 && [*a3 objectForKey:{@"direction", a4, a5, *&a6, a7}])
  {
    v11 = [objc_msgSend(*a3 objectForKey:{@"direction", "unsignedIntegerValue"}];
    if (a6 == 2)
    {
      v11 = sub_91470(v11);
    }

    if ((v11 - 12) > 0xC)
    {
      v12 = 20;
    }

    else
    {
      v12 = qword_34A208[(v11 - 12)];
    }

    v13 = [*a3 mutableCopy];
    [v13 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v12), @"direction"}];
    *a3 = v13;
  }
}

@end