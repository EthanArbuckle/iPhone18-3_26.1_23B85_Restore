@interface KNShimmerEffect
- (KNAnimationRandomGenerator)randomGenerator;
- (KNShimmerEffect)initWithAnimationContext:(id)context texture:(id)texture destinationRect:(CGRect)rect translate:(CATransform3D *)translate duration:(double)duration direction:(unint64_t)direction buildType:(int)type metalContext:(id)self0 randomGenerator:(id)self1;
- (id)objectSystemForTR:(id)r slideRect:(CGRect)rect duration:(double)duration;
- (id)particleSystemForTR:(id)r slideRect:(CGRect)rect duration:(double)duration;
- (unint64_t)p_numberOfParticlesForTR:(id)r slideRect:(CGRect)rect duration:(double)duration;
- (void)p_renderEffectAtPercent:(double)percent withContext:(id)context;
- (void)setupEffectIfNecessary;
- (void)setupMetalEffectIfNecessary;
- (void)teardown;
@end

@implementation KNShimmerEffect

- (void)setupEffectIfNecessary
{
  if (self->_metalContext)
  {
    [(KNShimmerEffect *)self setupMetalEffectIfNecessary];
  }
}

- (void)setupMetalEffectIfNecessary
{
  if (!self->_isSetup)
  {
    device = [(TSDMetalContext *)self->_metalContext device];
    v4 = KNBundle();
    v5 = [v4 pathForResource:@"KNBuildShimmer" ofType:@"png"];

    v6 = [NSData dataWithContentsOfFile:v5];
    v7 = CGDataProviderCreateWithCFData(v6);

    v8 = CGImageCreateWithPNGDataProvider(v7, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v7);
    v9 = [[TSDTexturedRectangle alloc] initWithCGImage:v8];
    shimmerTexturedRect = self->_shimmerTexturedRect;
    self->_shimmerTexturedRect = v9;

    v11 = self->_shimmerTexturedRect;
    device2 = [(TSDMetalContext *)self->_metalContext device];
    [(TSDTexturedRectangle *)v11 setupMetalTextureForDevice:device2];

    CGImageRelease(v8);
    v39 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_translate.m11), *&self->_translate.m13);
    v37 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_translate.m21), *&self->_translate.m23);
    v35 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_translate.m31), *&self->_translate.m33);
    v33 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_translate.m41), *&self->_translate.m43);
    v13 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v13 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
    [v13 setBlendingEnabled:1];
    [v13 setDestinationRGBBlendFactor:5];
    [v13 setDestinationAlphaBlendFactor:5];
    v14 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildShimmerObjectVertexShader" fragmentShader:@"buildShimmerFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v13];
    objectSystemMetalShader = self->_objectSystemMetalShader;
    self->_objectSystemMetalShader = v14;

    texture = self->_texture;
    [(KNAnimationContext *)self->_animationContext slideRect];
    v17 = [KNShimmerEffect objectSystemForTR:"objectSystemForTR:slideRect:duration:" slideRect:texture duration:?];
    objectSystem = self->_objectSystem;
    self->_objectSystem = v17;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v19 = self->_objectSystem;
    if (v19)
    {
      [(KNShimmerObjectSystem *)v19 vertexUniforms];
      v19 = self->_objectSystem;
    }

    else
    {
      v65 = 0uLL;
      v66 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v62 = 0uLL;
    }

    v58 = v39;
    v59 = v37;
    v60 = v35;
    v61 = v33;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v44 = v35;
    v45 = v33;
    v46 = v62;
    v47 = v63;
    v42 = v39;
    v43 = v37;
    [(KNShimmerObjectSystem *)v19 setVertexUniforms:&v42, *&v33, *&v35, *&v37, *&v39];
    if ([(KNShimmerObjectSystem *)self->_objectSystem shouldDraw])
    {
      v20 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildShimmerParticleVertexShader" fragmentShader:@"buildShimmerFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v13];
      particleSystemMetalShader = self->_particleSystemMetalShader;
      self->_particleSystemMetalShader = v20;

      v22 = self->_texture;
      [(KNAnimationContext *)self->_animationContext slideRect];
      v23 = [KNShimmerEffect particleSystemForTR:"particleSystemForTR:slideRect:duration:" slideRect:v22 duration:?];
      particleSystem = self->_particleSystem;
      self->_particleSystem = v23;

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v25 = self->_particleSystem;
      if (v25)
      {
        [(KNShimmerParticleSystem *)v25 vertexUniforms];
        v25 = self->_particleSystem;
      }

      else
      {
        v56 = 0uLL;
        v57 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
        v50 = 0uLL;
        v51 = 0uLL;
        v48 = 0uLL;
        v49 = 0uLL;
        v46 = 0uLL;
        v47 = 0uLL;
      }

      v42 = v40;
      v43 = v38;
      v44 = v36;
      v45 = v34;
      BYTE4(v50) = 0;
      v41[12] = v54;
      v41[13] = v55;
      v41[14] = v56;
      v41[15] = v57;
      v41[8] = v50;
      v41[9] = v51;
      v41[10] = v52;
      v41[11] = v53;
      v41[4] = v46;
      v41[5] = v47;
      v41[6] = v48;
      v41[7] = v49;
      v41[0] = v40;
      v41[1] = v38;
      v41[2] = v36;
      v41[3] = v34;
      [(KNShimmerParticleSystem *)v25 setVertexUniforms:v41];
    }

    v26 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:device colorAttachment:v13];
    objectMetalShader = self->_objectMetalShader;
    self->_objectMetalShader = v26;

    v28 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m21), *&self->_baseTransform.m23);
    v29 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m31), *&self->_baseTransform.m33);
    v30 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m41), *&self->_baseTransform.m43);
    *self->_anon_190 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m11), *&self->_baseTransform.m13);
    *&self->_anon_190[16] = v28;
    *&self->_anon_190[32] = v29;
    *&self->_anon_190[48] = v30;
    [(TSDTexturedRectangle *)self->_texture frame];
    v31 = [TSDGPUDataBuffer newDataBufferWithVertexRect:device textureRect:CGPointZero.x device:CGPointZero.y];
    objectMTLDataBuffer = self->_objectMTLDataBuffer;
    self->_objectMTLDataBuffer = v31;

    self->_isSetup = 1;
  }
}

- (unint64_t)p_numberOfParticlesForTR:(id)r slideRect:(CGRect)rect duration:(double)duration
{
  width = self->_destinationRect.size.width;
  height = self->_destinationRect.size.height;
  v7 = width / rect.size.width * height / rect.size.height;
  rCopy = r;
  [rCopy size];
  v10 = v9 / width;
  [rCopy size];
  v12 = v11;

  return fmin(v7 * (v10 * v12 / height) * 2000.0, 3276.0);
}

- (id)objectSystemForTR:(id)r slideRect:(CGRect)rect duration:(double)duration
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rCopy = r;
  duration = [(KNShimmerEffect *)self p_numberOfParticlesForTR:rCopy slideRect:x duration:y, width, height, duration];
  if (self->_metalContext)
  {
    v13 = duration;
    [rCopy size];
    v15 = v14;
    v17 = v16;
    direction = self->_direction;
    randomGenerator = [(KNShimmerEffect *)self randomGenerator];
    duration2 = [KNShimmerObjectSystem newParticleSystemWithNumberOfParticles:v13 objectSize:direction slideSize:randomGenerator duration:self->_objectSystemMetalShader direction:self->_metalContext randomGenerator:v15 shader:v17 metalContext:width, height, duration];
  }

  else
  {
    duration2 = 0;
  }

  capabilities = [(KNAnimationContext *)self->_animationContext capabilities];
  [duration2 setupWithTexture:rCopy particleTextureSize:0 reverseDrawOrder:capabilities capabilities:{CGSizeZero.width, CGSizeZero.height}];

  return duration2;
}

- (id)particleSystemForTR:(id)r slideRect:(CGRect)rect duration:(double)duration
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rCopy = r;
  duration = [(KNShimmerEffect *)self p_numberOfParticlesForTR:rCopy slideRect:x duration:y, width, height, duration];
  visibleParticleCount = [(KNShimmerObjectSystem *)self->_objectSystem visibleParticleCount];
  if (self->_metalContext)
  {
    v14 = duration / 0x28;
    if (duration / 0x28 <= 2)
    {
      v14 = 2;
    }

    v15 = v14 + 2 * visibleParticleCount;
    if (v15 >= 0xCCC)
    {
      v16 = 3276;
    }

    else
    {
      v16 = v15;
    }

    [(KNShimmerObjectSystem *)self->_objectSystem particleSize];
    v18 = v17;
    v20 = v19;
    v21 = v16;
    [rCopy size];
    v23 = v22;
    v25 = v24;
    randomGenerator = [(KNShimmerEffect *)self randomGenerator];
    v27 = [KNShimmerParticleSystem newParticleSystemWithParticleSize:0 particleSystemSize:randomGenerator objectSize:self->_particleSystemMetalShader slideSize:self->_metalContext duration:v18 direction:v20 randomGenerator:v21 shader:1.0 metalContext:v23, v25, width, height, *&duration];
  }

  else
  {
    v27 = 0;
  }

  objectSystem = self->_objectSystem;
  if (!objectSystem)
  {
    v29 = +[TSUAssertionHandler currentHandler];
    v30 = [NSString stringWithUTF8String:"[KNShimmerEffect particleSystemForTR:slideRect:duration:]"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildShimmer.m"];
    [v29 handleFailureInFunction:v30 file:v31 lineNumber:392 description:@"Need to set up object system first!"];

    objectSystem = self->_objectSystem;
  }

  [v27 setObjectSystem:objectSystem];
  dataBuffer = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  v33 = [dataBuffer vertexAttributeNamed:kTSDGPUShaderAttributeColor];
  [v27 setObjectDataBufferAttributeColor:v33];

  dataBuffer2 = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  v35 = [dataBuffer2 vertexAttributeNamed:kTSDGPUShaderAttributePosition];
  [v27 setObjectDataBufferAttributePosition:v35];

  dataBuffer3 = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  v37 = [dataBuffer3 vertexAttributeNamed:kTSDGPUShaderAttributeSpeed];
  [v27 setObjectDataBufferAttributeSpeed:v37];

  dataBuffer4 = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  v39 = [dataBuffer4 vertexAttributeNamed:kTSDGPUShaderAttributeColorTexCoord];
  [v27 setObjectDataBufferAttributeColorTexCoord:v39];

  shimmerTexturedRect = self->_shimmerTexturedRect;
  if (shimmerTexturedRect)
  {
    [(TSDTexturedRectangle *)shimmerTexturedRect size];
  }

  else
  {
    v41 = CGSizeZero.width;
    v42 = CGSizeZero.height;
  }

  if (self->_metalContext)
  {
    v43 = rCopy;
  }

  else
  {
    v43 = 0;
  }

  [v27 setupWithTexture:v43 particleTextureSize:0 reverseDrawOrder:{v41, v42}];

  return v27;
}

- (KNShimmerEffect)initWithAnimationContext:(id)context texture:(id)texture destinationRect:(CGRect)rect translate:(CATransform3D *)translate duration:(double)duration direction:(unint64_t)direction buildType:(int)type metalContext:(id)self0 randomGenerator:(id)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contextCopy = context;
  textureCopy = texture;
  metalContextCopy = metalContext;
  generatorCopy = generator;
  v42.receiver = self;
  v42.super_class = KNShimmerEffect;
  v26 = [(KNShimmerEffect *)&v42 init];
  v27 = v26;
  if (v26)
  {
    v26->_texture = textureCopy;
    v26->_destinationRect.origin.x = x;
    v26->_destinationRect.origin.y = y;
    v26->_destinationRect.size.width = width;
    v26->_destinationRect.size.height = height;
    v26->_duration = duration;
    v26->_direction = direction;
    v26->_buildType = type;
    v28 = *&translate->m11;
    v29 = *&translate->m13;
    v30 = *&translate->m23;
    *&v26->_translate.m21 = *&translate->m21;
    *&v26->_translate.m23 = v30;
    *&v26->_translate.m11 = v28;
    *&v26->_translate.m13 = v29;
    v31 = *&translate->m31;
    v32 = *&translate->m33;
    v33 = *&translate->m43;
    *&v26->_translate.m41 = *&translate->m41;
    *&v26->_translate.m43 = v33;
    *&v26->_translate.m31 = v31;
    *&v26->_translate.m33 = v32;
    objc_storeStrong(&v26->_animationContext, context);
    if (!metalContextCopy)
    {
      v34 = +[TSUAssertionHandler currentHandler];
      v35 = [NSString stringWithUTF8String:"[KNShimmerEffect initWithAnimationContext:texture:destinationRect:translate:duration:direction:buildType:metalContext:randomGenerator:]"];
      v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildShimmer.m"];
      [v34 handleFailureInFunction:v35 file:v36 lineNumber:429 description:{@"invalid nil value for '%s'", "metalContext", contextCopy}];
    }

    objc_storeStrong(&v27->_metalContext, metalContext);
    if (!generatorCopy)
    {
      v37 = +[TSUAssertionHandler currentHandler];
      v38 = [NSString stringWithUTF8String:"[KNShimmerEffect initWithAnimationContext:texture:destinationRect:translate:duration:direction:buildType:metalContext:randomGenerator:]"];
      v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildShimmer.m"];
      [v37 handleFailureInFunction:v38 file:v39 lineNumber:431 description:{@"invalid nil value for '%s'", "randomGenerator"}];
    }

    objc_storeStrong(&v27->_randomGenerator, generator);
    [(KNShimmerEffect *)v27 setupMetalEffectIfNecessary];
  }

  return v27;
}

- (void)p_renderEffectAtPercent:(double)percent withContext:(id)context
{
  contextCopy = context;
  v6 = self->_texture;
  buildType = self->_buildType;
  if (buildType == 2)
  {
    percentCopy = 1.0 - percent;
  }

  else
  {
    percentCopy = percent;
  }

  TSUReverseSquare();
  if (buildType == 1)
  {
    v10 = (percentCopy + v9 * self->_duration) * 1.57079633;
  }

  else
  {
    v10 = -((percentCopy + v9 * self->_duration) * 1.57079633);
  }

  TSUClamp();
  TSUSineMap();
  v12 = v11;
  [(TSDTexturedRectangle *)v6 singleTextureOpacity];
  if (contextCopy)
  {
    v14 = v13;
    v15 = [(TSDTexturedRectangle *)v6 metalTextureWithContext:?];
    if (v15)
    {
      v16 = (1.0 - percentCopy) * (1.0 - percentCopy);
      renderEncoder = [contextCopy renderEncoder];
      [(TSDMetalShader *)self->_objectMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_190 fragmentBytes:&self->_objectFragmentUniforms];
      [renderEncoder setFragmentTexture:v15 atIndex:0];
      [(TSDMTLDataBuffer *)self->_objectMTLDataBuffer drawWithEncoder:renderEncoder atIndex:0];
      [(TSDMetalShader *)self->_objectSystemMetalShader setPipelineStateWithEncoder:renderEncoder];
      [(KNShimmerObjectSystem *)self->_objectSystem drawWithPercent:buildType == 1 opacity:0 rotation:contextCopy clockwise:v16 texture:v12 * v14 context:v10];
      if ([(KNShimmerObjectSystem *)self->_objectSystem shouldDraw])
      {
        v18 = buildType == 1;
        [(TSDMetalShader *)self->_particleSystemMetalShader setPipelineStateWithEncoder:renderEncoder];
        metalTexture = [(TSDTexturedRectangle *)self->_shimmerTexturedRect metalTexture];
        [renderEncoder setFragmentTexture:metalTexture atIndex:0];

        particleSystem = self->_particleSystem;
        [(TSDTexturedRectangle *)v6 singleTextureOpacity];
        [(KNShimmerParticleSystem *)particleSystem drawWithPercent:v18 opacity:self->_texture rotation:contextCopy clockwise:v16 texture:v21 * 0.5 context:v10];
      }
    }
  }
}

- (void)teardown
{
  self->_isSetup = 0;
  objectSystem = self->_objectSystem;
  self->_objectSystem = 0;

  particleSystem = self->_particleSystem;
  self->_particleSystem = 0;

  objectMetalShader = self->_objectMetalShader;
  self->_objectMetalShader = 0;

  objectMTLDataBuffer = self->_objectMTLDataBuffer;
  self->_objectMTLDataBuffer = 0;

  objectSystemMetalShader = self->_objectSystemMetalShader;
  self->_objectSystemMetalShader = 0;

  particleSystemMetalShader = self->_particleSystemMetalShader;
  self->_particleSystemMetalShader = 0;

  [(TSDTexturedRectangle *)self->_shimmerTexturedRect teardown];
  shimmerTexturedRect = self->_shimmerTexturedRect;
  self->_shimmerTexturedRect = 0;
}

- (KNAnimationRandomGenerator)randomGenerator
{
  randomGenerator = self->_randomGenerator;
  if (!randomGenerator)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"[KNShimmerEffect randomGenerator]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildShimmer.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:511 description:{@"invalid nil value for '%s'", "_randomGenerator"}];

    randomGenerator = self->_randomGenerator;
  }

  return randomGenerator;
}

@end