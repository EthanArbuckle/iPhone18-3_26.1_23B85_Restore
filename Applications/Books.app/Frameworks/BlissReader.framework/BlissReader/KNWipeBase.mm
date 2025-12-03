@interface KNWipeBase
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version;
- (KNWipeBase)initWithAnimationContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)dealloc;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)context;
@end

@implementation KNWipeBase

- (KNWipeBase)initWithAnimationContext:(id)context
{
  v5.receiver = self;
  v5.super_class = KNWipeBase;
  v3 = [(KNAnimationEffect *)&v5 initWithAnimationContext:context];
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

- (void)animationWillBeginWithContext:(id)context
{
  textures = [context textures];
  direction = [context direction];
  v7 = direction;
  if (self->_isBuildOut)
  {
    v7 = sub_91470(direction);
  }

  firstObject = [textures firstObject];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  [(KNAnimationEffect *)self mvpMatrixWithContext:context];
  metalContext = [context metalContext];
  device = [metalContext device];
  v11 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v11 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v11 setBlendingEnabled:1];
  [v11 setDestinationRGBBlendFactor:5];
  [v11 setDestinationAlphaBlendFactor:5];
  [firstObject frame];
  TSDRectWithSize();
  v12 = [KNWipeDataBuffer newWipeDataBufferWithVertexRect:"newWipeDataBufferWithVertexRect:textureRect:metalContext:colorAttachment:" textureRect:metalContext metalContext:v11 colorAttachment:?];
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
  if ([context isTransition])
  {
    [firstObject frame];
    TSDRectWithSize();
    self->_quadDataBuffer = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:device device:?];
    self->_quadMetalShader = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:device colorAttachment:v11];
  }
}

- (void)renderFrameWithContext:(id)context
{
  textures = [context textures];
  [context percent];
  if (self->_isBuildOut)
  {
    v7 = 1.0 - v6;
  }

  else
  {
    v7 = v6;
  }

  if ([textures count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [textures objectAtIndex:0];
  }

  lastObject = [textures lastObject];
  metalContext = [context metalContext];
  device = [metalContext device];
  commandBuffer = [metalContext commandBuffer];
  passDescriptor = [metalContext passDescriptor];
  renderEncoder = [metalContext renderEncoder];
  if (device)
  {
    if (commandBuffer)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (commandBuffer)
    {
LABEL_9:
      if (passDescriptor)
      {
        goto LABEL_10;
      }

LABEL_19:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      if (renderEncoder)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!passDescriptor)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (renderEncoder)
  {
    goto LABEL_11;
  }

LABEL_20:
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_11:
  metalTexture = [lastObject metalTexture];
  metalTexture2 = [v8 metalTexture];
  if ([context isTransition])
  {
    [(TSDMetalShader *)self->_quadMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_20];
    [renderEncoder setFragmentTexture:metalTexture2 atIndex:0];
    [(TSDMTLDataBuffer *)self->_quadDataBuffer drawWithEncoder:renderEncoder atIndex:0];
  }

  if (metalTexture)
  {
    [renderEncoder setFragmentTexture:metalTexture atIndex:0];
    mWipeDataBuffer = self->mWipeDataBuffer;
    [lastObject singleTextureOpacity];

    [(KNWipeDataBuffer *)mWipeDataBuffer drawWipeWithPercent:renderEncoder opacity:v7 renderEncoder:v18];
  }
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  if (version <= 0x174876E7FFLL && classic)
  {
    v11 = @"KNTransitionAttributesDirection";
    if ([*attributes objectForKey:{@"KNTransitionAttributesDirection", name, warning, *&type, classic}] || objc_msgSend(*attributes, "objectForKey:", @"KNBuildAttributesDirection"))
    {
      if (type != 3)
      {
        v11 = @"KNBuildAttributesDirection";
      }

      v12 = [objc_msgSend(*attributes objectForKey:{v11), "unsignedIntegerValue"}] - 21;
      if (v12 > 6)
      {
        v13 = 11;
      }

      else
      {
        v13 = qword_34A1D0[v12];
      }

      if (type == 2)
      {
        v13 = sub_91470(v13);
      }

      v14 = [*attributes mutableCopy];
      [v14 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v13), v11}];
      *attributes = v14;
    }
  }
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  v8 = version > 0x174876E7FFLL || !classic;
  if (!v8 && [*attributes objectForKey:{@"direction", name, warning, *&type, classic}])
  {
    v11 = [objc_msgSend(*attributes objectForKey:{@"direction", "unsignedIntegerValue"}];
    if (type == 2)
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

    v13 = [*attributes mutableCopy];
    [v13 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v12), @"direction"}];
    *attributes = v13;
  }
}

@end