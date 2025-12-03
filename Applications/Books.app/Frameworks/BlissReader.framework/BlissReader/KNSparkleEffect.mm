@interface KNSparkleEffect
- (KNSparkleEffect)initWithAnimationContext:(id)context texture:(id)texture destinationRect:(CGRect)rect translate:(CATransform3D *)translate duration:(double)duration direction:(unint64_t)direction buildType:(int)type metalContext:(id)self0 randomGenerator:(id)self1;
- (id)p_sparkleSystemForTR:(id)r slideRect:(CGRect)rect duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator;
- (void)p_renderEffectAtPercent:(double)percent withContext:(id)context;
- (void)setupEffectIfNecessary;
- (void)teardown;
@end

@implementation KNSparkleEffect

- (void)setupEffectIfNecessary
{
  if (!self->_isSetup)
  {
    v3 = [KNBundle() pathForResource:@"KNBuildSparkle" ofType:@"png"];
    metalContext = self->_metalContext;
    if (metalContext)
    {
      device = [(TSDMetalContext *)metalContext device];
      v6 = CGDataProviderCreateWithCFData([NSData dataWithContentsOfFile:v3]);
      v7 = CGImageCreateWithPNGDataProvider(v6, 0, 1, kCGRenderingIntentDefault);
      CGDataProviderRelease(v6);
      v8 = [[TSDTexturedRectangle alloc] initWithCGImage:v7];
      self->_sparkleTexturedRect = v8;
      [(TSDTexturedRectangle *)v8 setupMetalTextureForDevice:device];
      CGImageRelease(v7);
      v9 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
      [v9 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
      [v9 setBlendingEnabled:1];
      [v9 setDestinationRGBBlendFactor:5];
      [v9 setDestinationAlphaBlendFactor:5];
      self->_objectMTLShader = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:device colorAttachment:v9];
      self->_sparkleMTLShader = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildSparkleVertexShader" fragmentShader:@"buildSparkleFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v9];
      texture = self->_texture;
      [(KNAnimationContext *)self->_animationContext slideRect];
      self->_sparkleSystem = [(KNSparkleEffect *)self p_sparkleSystemForTR:texture slideRect:self->_direction duration:[(KNSparkleEffect *)self randomGenerator] direction:v11 randomGenerator:v12, v13, v14, self->_duration];
    }

    v15 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePosition bufferUsage:35040 dataType:5 normalized:0 componentCount:2];
    v16 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeTexCoord bufferUsage:35040 dataType:5 normalized:0 componentCount:2];
    v21[0] = v15;
    v21[1] = v16;
    v17 = [NSArray arrayWithObjects:v21 count:2];
    self->_objectBufferAttributes = v17;
    self->_objectPositionAttributeIndex = [(NSArray *)v17 indexOfObject:v15];
    self->_objectTexCoordAttributeIndex = [(NSArray *)self->_objectBufferAttributes indexOfObject:v16];
    v18 = self->_metalContext;
    if (v18)
    {
      objectBufferAttributes = self->_objectBufferAttributes;
      device2 = [(TSDMetalContext *)v18 device];
      self->_objectMTLDataBuffer = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:objectBufferAttributes meshSize:device2 device:TSDGPUDataBufferMeshSizeDefault[0], TSDGPUDataBufferMeshSizeDefault[1]];
    }

    self->_isSetup = 1;
  }
}

- (id)p_sparkleSystemForTR:(id)r slideRect:(CGRect)rect duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator
{
  if (!self->_metalContext)
  {
    return 0;
  }

  height = rect.size.height;
  width = rect.size.width;
  v14 = self->_destinationRect.size.width;
  v15 = self->_destinationRect.size.height;
  if (v14 >= rect.size.width)
  {
    v14 = rect.size.width;
  }

  v16 = v14 / rect.size.width;
  if (v15 >= rect.size.height)
  {
    v15 = rect.size.height;
  }

  v17 = (2.0 - sqrt(v16 * v15 / rect.size.height)) * 0.5 * 1500.0 * duration;
  [(TSDTexturedRectangle *)self->_sparkleTexturedRect size];
  v19 = v18;
  v21 = v20;
  [r size];
  v24 = [KNBuildSparkleSystem newParticleSystemWithParticleSize:direction particleSystemSize:generator objectSize:self->_sparkleMTLShader slideSize:self->_metalContext duration:v19 direction:v21 randomGenerator:v17 shader:1.0 metalContext:v22, v23, width, height, *&duration];
  [(TSDTexturedRectangle *)self->_sparkleTexturedRect size];
  [v24 setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:?];
  return v24;
}

- (KNSparkleEffect)initWithAnimationContext:(id)context texture:(id)texture destinationRect:(CGRect)rect translate:(CATransform3D *)translate duration:(double)duration direction:(unint64_t)direction buildType:(int)type metalContext:(id)self0 randomGenerator:(id)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31.receiver = self;
  v31.super_class = KNSparkleEffect;
  v22 = [(KNSparkleEffect *)&v31 init];
  v23 = v22;
  if (v22)
  {
    v22->_texture = texture;
    v22->_destinationRect.origin.x = x;
    v22->_destinationRect.origin.y = y;
    v22->_destinationRect.size.width = width;
    v22->_destinationRect.size.height = height;
    v22->_duration = duration;
    v22->_direction = direction;
    v22->_buildType = type;
    v24 = *&translate->m11;
    v25 = *&translate->m13;
    v26 = *&translate->m23;
    *&v22->_translate.m21 = *&translate->m21;
    *&v22->_translate.m23 = v26;
    *&v22->_translate.m11 = v24;
    *&v22->_translate.m13 = v25;
    v27 = *&translate->m31;
    v28 = *&translate->m33;
    v29 = *&translate->m43;
    *&v22->_translate.m41 = *&translate->m41;
    *&v22->_translate.m43 = v29;
    *&v22->_translate.m31 = v27;
    *&v22->_translate.m33 = v28;
    v22->_animationContext = context;
    if (!metalContext)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v23->_metalContext = metalContext;
    if (!generator)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v23->_randomGenerator = generator;
    [(KNSparkleEffect *)v23 setupEffectIfNecessary];
  }

  return v23;
}

- (void)p_renderEffectAtPercent:(double)percent withContext:(id)context
{
  texture = self->_texture;
  direction = self->_direction;
  v9 = direction & 0xFFFFFFFFFFFFFFFELL;
  v10 = direction - 11;
  v57 = *&self->_translate.m11;
  v58 = *&self->_translate.m21;
  v62 = *&self->_translate.m23;
  v63 = *&self->_translate.m33;
  v59 = *&self->_translate.m31;
  v60 = *&self->_translate.m13;
  v65 = *&self->_translate.m43;
  v61 = *&self->_translate.m41;
  [(TSDTexturedRectangle *)texture singleTextureOpacity];
  v64 = v11;
  [(TSDTexturedRectangle *)texture size];
  v13 = v12;
  [(TSDTexturedRectangle *)texture size];
  v15 = v14;
  percentCopy = percent;
  if (self->_buildType == 2)
  {
    if (v9 == 12)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13;
    }

    if (v9 != 12 && v10 >= 2)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0.0;
    }

    if (v10 <= 1)
    {
      v19 = 1.0;
      TSUClamp();
      if ((direction & 0xE) == 0xC)
      {
        v13 = v13 - v13 * v20;
        TSUClamp();
        v22 = 1.0 - v21;
        v23 = 0.0;
      }

      else
      {
        v13 = v13 * v20;
        if (direction == 13)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = 1.0;
        }

        TSUClamp();
        v22 = v40;
      }

LABEL_47:
      v35 = v15;
      v34 = 0.0;
      v18 = 0.0;
      goto LABEL_58;
    }

    v23 = 0.0;
    v22 = 1.0;
    TSUClamp();
    if (v9 != 12)
    {
      v41 = v15 * v32;
      if (direction == 13)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      v35 = v41;
      TSUClamp();
      v19 = v42;
      goto LABEL_57;
    }

    v33 = v15 - v15 * v32;
    if (direction == 13)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 1.0;
    }

    v35 = v33;
    TSUClamp();
    v19 = 1.0 - v36;
  }

  else
  {
    if (v9 != 12 || v10 >= 2)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13;
    }

    if (v10 <= 1)
    {
      v25 = direction & 0xE;
      v19 = 1.0;
      TSUClamp();
      v27 = v26;
      TSUClamp();
      v29 = v13 - v13 * v27;
      v30 = v13 * v27;
      if (direction == 13)
      {
        v31 = 1.0;
      }

      else
      {
        v31 = 0.0;
      }

      if (v25 == 12)
      {
        v22 = 1.0 - v28;
      }

      else
      {
        v22 = v28;
      }

      if (v25 == 12)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = v31;
      }

      if (v25 == 12)
      {
        v13 = v29;
      }

      else
      {
        v13 = v30;
      }

      goto LABEL_47;
    }

    v23 = 0.0;
    v22 = 1.0;
    TSUClamp();
    if (v9 == 12)
    {
      if (direction == 13)
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.0;
      }

      v35 = v15 - v15 * v37;
      TSUClamp();
      v19 = 1.0 - v39;
      v18 = v15;
      v34 = v38;
      goto LABEL_57;
    }

    v43 = v15 * v37;
    if (direction == 13)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 0.0;
    }

    v35 = v43;
    TSUClamp();
    v19 = v44;
  }

  v18 = 0.0;
LABEL_57:
  v16 = 0.0;
LABEL_58:
  currentBuffer = [context currentBuffer];
  renderEncoder = [context renderEncoder];
  v47 = (self + 64 * currentBuffer);
  v48 = vcvt_hight_f32_f64(vcvt_f32_f64(v57), v60);
  v49 = vcvt_hight_f32_f64(vcvt_f32_f64(v58), v62);
  v50 = vcvt_hight_f32_f64(vcvt_f32_f64(v59), v63);
  v51 = vcvt_hight_f32_f64(vcvt_f32_f64(v61), v65);
  v47[20] = v48;
  v47[21] = v49;
  v47[22] = v50;
  v47[23] = v51;
  v52 = v64;
  v53 = (self + 4 * currentBuffer);
  v53[128] = v52;
  *&self->_sparkleVertexInput.Percent = v48;
  *&self->_anon_ec[4] = v49;
  *&self->_anon_ec[20] = v50;
  *&self->_anon_ec[36] = v51;
  v48.f32[0] = percentCopy;
  *&self->_anon_ec[52] = v48.i32[0];
  *&self->_anon_ec[56] = v52;
  [(KNBuildSparkleSystem *)self->_sparkleSystem speedMax];
  *&v54 = v54;
  *&self->_anon_ec[60] = LODWORD(v54);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1A44B0;
  v67[3] = &unk_45E708;
  v68 = *&self->_objectPositionAttributeIndex;
  v69 = v16;
  v70 = v18;
  v71 = v13;
  v72 = v35;
  v73 = v23;
  v74 = v34;
  v75 = v22;
  v76 = v19;
  [(TSDMTLDataBuffer *)self->_objectMTLDataBuffer updateMetalDataBufferAttributes:self->_objectBufferAttributes withBlock:v67];
  v55 = [(TSDTexturedRectangle *)texture metalTextureWithContext:context];
  if (v55)
  {
    v56 = v55;
    [renderEncoder setFragmentTexture:0 atIndex:1];
    [(TSDMetalShader *)self->_objectMTLShader setPipelineStateWithEncoder:renderEncoder vertexBytes:v47 + 20 fragmentBytes:v53 + 128];
    [renderEncoder setFragmentTexture:v56 atIndex:0];
    [(TSDMTLDataBuffer *)self->_objectMTLDataBuffer drawWithEncoder:renderEncoder atIndex:0];
    [(TSDMetalShader *)self->_sparkleMTLShader setPipelineStateWithEncoder:renderEncoder vertexBytes:&self->_sparkleVertexInput];
    [renderEncoder setFragmentTexture:-[TSDTexturedRectangle metalTexture](self->_sparkleTexturedRect atIndex:{"metalTexture"), 0}];
    [(KNBuildSparkleSystem *)self->_sparkleSystem drawMetalWithEncoder:renderEncoder];
    self->_objectBufferAttributes = [(NSArray *)self->_objectBufferAttributes copy];
  }
}

- (void)teardown
{
  self->_objectBufferAttributes = 0;
  self->_sparkleSystem = 0;
  self->_sparkleMTLShader = 0;
  self->_objectMTLShader = 0;
  self->_objectMTLDataBuffer = 0;
  self->_isSetup = 0;
  [(TSDTexturedRectangle *)self->_sparkleTexturedRect teardown];
  self->_sparkleTexturedRect = 0;
  self->_effect = 0;
}

@end