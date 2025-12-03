@interface KNTransitionDroplet
+ (id)defaultAttributes;
- (KNTransitionDroplet)initWithAnimationContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)dealloc;
- (void)p_drawWithMetalContext:(id)context renderEncoder:(id)encoder;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)context;
@end

@implementation KNTransitionDroplet

- (KNTransitionDroplet)initWithAnimationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = KNTransitionDroplet;
  return [(KNAnimationEffect *)&v4 initWithAnimationContext:context];
}

- (void)p_teardown
{
  self->_metalDrawBuffer = 0;

  self->_rippleShader = 0;
}

- (void)dealloc
{
  [(KNTransitionDroplet *)self p_teardown];
  v3.receiver = self;
  v3.super_class = KNTransitionDroplet;
  [(KNTransitionDroplet *)&v3 dealloc];
}

+ (id)defaultAttributes
{
  v3 = @"KNTransitionAttributesDuration";
  v4 = &off_49CF60;
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (void)animationWillBeginWithContext:(id)context
{
  textures = [context textures];
  v6 = [objc_msgSend(context "metalContext")];
  v7 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v7 setPixelFormat:objc_msgSend(objc_msgSend(context, "metalContext"), "pixelFormat")];
  self->_rippleShader = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"transitionDropletVertexShader" fragmentShader:@"transitionDropletFragmentShader" device:v6 library:@"KeynoteMetalLibrary" colorAttachment:v7];
  v8 = [textures objectAtIndexedSubscript:0];
  [v8 size];
  TSDRectWithSize();
  self->_metalDrawBuffer = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:v6 device:?];
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
    v10 = vcvt_hight_f32_f64(vcvt_f32_f64(v24), v25);
    v11 = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v23);
    v12 = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v21);
    v13 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v19);
  }

  else
  {
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  *self->_anon_70 = v13;
  *&self->_anon_70[16] = v12;
  *&self->_anon_70[32] = v11;
  *&self->_anon_70[48] = v10;
  [v8 size];
  *&v14 = v14;
  anon_b0 = self->_anon_b0;
  *anon_b0 = LODWORD(v14);
  [v8 size];
  v17 = v16;
  *(anon_b0 + 1) = v17;
  *(anon_b0 + 8) = xmmword_34A990;
  *(anon_b0 + 3) = 0x40C0000041200000;
}

- (void)p_drawWithMetalContext:(id)context renderEncoder:(id)encoder
{
  textures = [context textures];
  [context percent];
  v9 = v8;
  v10 = [objc_msgSend(textures objectAtIndexedSubscript:{1), "metalTexture"}];
  v11 = [objc_msgSend(textures objectAtIndexedSubscript:{0), "metalTexture"}];
  v12 = [objc_msgSend(context "metalContext")];
  v13 = v9;
  self->_fragmentInput[v12].percent = v13;
  [encoder setFragmentBytes:? length:? atIndex:?];
  [encoder setFragmentTexture:v11 atIndex:0];
  [encoder setFragmentTexture:v10 atIndex:1];
  metalDrawBuffer = self->_metalDrawBuffer;

  [(TSDMTLDataBuffer *)metalDrawBuffer drawWithEncoder:encoder atIndex:0];
}

- (void)renderFrameWithContext:(id)context
{
  metalContext = [context metalContext];
  device = [metalContext device];
  commandBuffer = [metalContext commandBuffer];
  passDescriptor = [metalContext passDescriptor];
  renderEncoder = [metalContext renderEncoder];
  if (device)
  {
    if (commandBuffer)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (commandBuffer)
    {
LABEL_3:
      if (passDescriptor)
      {
        goto LABEL_4;
      }

LABEL_10:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      if (renderEncoder)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!passDescriptor)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (renderEncoder)
  {
    goto LABEL_5;
  }

LABEL_11:
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_5:
  [(TSDMetalShader *)self->_rippleShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_70 fragmentBytes:self->_anon_b0];

  [(KNTransitionDroplet *)self p_drawWithMetalContext:context renderEncoder:renderEncoder];
}

@end