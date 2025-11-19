@interface KNBuildFlame
+ (id)defaultAttributes;
- (CATransform3D)p_orthoTransformWithScale:(SEL)a3 offset:(double)a4;
- (CGRect)frameOfEffectWithContext:(id)a3;
- (id)p_flameSystemForTR:(id)a3 build:(id)a4 randomGenerator:(id)a5 metalContext:(id)a6;
- (id)p_texturedRectFromImagePath:(id)a3 metalContext:(id)a4;
- (void)metalAnimationHasBegunWithContext:(id)a3;
- (void)metalAnimationWillBeginWithContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)metalRenderFrameWithContext:(id)a3;
- (void)metalTeardownAnimationsWithContext:(id)a3;
- (void)p_prepareAnimationWithContext:(id)a3;
@end

@implementation KNBuildFlame

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49CF30;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (CGRect)frameOfEffectWithContext:(id)a3
{
  v4 = [a3 textures];
  v5 = [v4 objectAtIndexedSubscript:0];

  [v5 frameOnCanvas];
  self->_drawableFrame.origin.x = v6;
  self->_drawableFrame.origin.y = v7;
  self->_drawableFrame.size.width = v8;
  self->_drawableFrame.size.height = v9;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  TSDRectWithSize();
  TSDCenterRectOverRect();
  self->_frameRect.origin.x = v10;
  self->_frameRect.origin.y = v11;
  self->_frameRect.size.width = v12;
  self->_frameRect.size.height = v13;
  self->_frameRect.origin.y = v11 + (v13 - self->_drawableFrame.size.height) * -0.25;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v29.origin.x = v14;
  v29.origin.y = v15;
  v29.size.width = v16;
  v29.size.height = v17;
  v26 = CGRectIntersection(self->_frameRect, v29);
  self->_frameRect = v26;
  v27 = CGRectIntegral(v26);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  self->_frameRect = v27;

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)p_flameSystemForTR:(id)a3 build:(id)a4 randomGenerator:(id)a5 metalContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"[KNBuildFlame p_flameSystemForTR:build:randomGenerator:metalContext:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFlame.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:180 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  [v11 duration];
  v18 = v17;
  [v10 size];
  v20 = v19;
  [v10 size];
  if (v13)
  {
    v22 = ((v18 + fmax(v18 * -0.5 + 1.0, 0.0)) * (v20 / v21 * 150.0));
    [v10 size];
    v23 = [KNBuildFlameSystem newParticleSystemWithNumberOfParticles:"newParticleSystemWithNumberOfParticles:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:" objectSize:v22 slideSize:0 duration:v12 direction:self->_metalFlameShader randomGenerator:v13 shader:? metalContext:?];
    [(TSDTexturedRectangle *)self->_metalFlameTexture size];
  }

  else
  {
    v23 = 0;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  [v23 setupWithTexture:v10 particleTextureSize:0 reverseDrawOrder:{width, height}];

  return v23;
}

- (CATransform3D)p_orthoTransformWithScale:(SEL)a3 offset:(double)a4
{
  y = a5.y;
  x = a5.x;
  TSDMultiplySizeScalar();
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  TSDTransform3DMakeOrtho();
  v8 = *&retstr->m33;
  *&v17.m31 = *&retstr->m31;
  *&v17.m33 = v8;
  v9 = *&retstr->m43;
  *&v17.m41 = *&retstr->m41;
  *&v17.m43 = v9;
  v10 = *&retstr->m13;
  *&v17.m11 = *&retstr->m11;
  *&v17.m13 = v10;
  v11 = *&retstr->m23;
  *&v17.m21 = *&retstr->m21;
  *&v17.m23 = v11;
  result = CATransform3DTranslate(&v18, &v17, x, -y, 0.0);
  v13 = *&v18.m33;
  *&retstr->m31 = *&v18.m31;
  *&retstr->m33 = v13;
  v14 = *&v18.m43;
  *&retstr->m41 = *&v18.m41;
  *&retstr->m43 = v14;
  v15 = *&v18.m13;
  *&retstr->m11 = *&v18.m11;
  *&retstr->m13 = v15;
  v16 = *&v18.m23;
  *&retstr->m21 = *&v18.m21;
  *&retstr->m23 = v16;
  return result;
}

- (id)p_texturedRectFromImagePath:(id)a3 metalContext:(id)a4
{
  v5 = a4;
  v6 = [TSUImage imageWithContentsOfFile:a3];
  v7 = [v6 CGImage];

  v8 = [[TSDTexturedRectangle alloc] initWithCGImage:v7];
  v9 = [v5 device];

  [v8 setupMetalTextureForDevice:v9];

  return v8;
}

- (void)p_prepareAnimationWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 textures];
  v6 = [v4 metalContext];
  v7 = [v6 device];
  if ([v5 count] != &dword_0 + 1)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[KNBuildFlame p_prepareAnimationWithContext:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFlame.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:254 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(v5, "count")}];
  }

  v11 = [v5 lastObject];
  v12 = KNBundle();
  v69 = [v12 pathForResource:@"KNBuildFlame" ofType:@"png"];

  v13 = [(KNBuildFlame *)self p_texturedRectFromImagePath:v69 metalContext:v6];
  metalFlameTexture = self->_metalFlameTexture;
  self->_metalFlameTexture = v13;

  [(KNBuildFlame *)self frameOfEffectWithContext:v4];
  v68 = v5;
  [(KNAnimationEffect *)self mvpMatrixWithContext:v4];
  v15 = *&v74.m33;
  *&self->_baseTransform.m31 = *&v74.m31;
  *&self->_baseTransform.m33 = v15;
  v16 = *&v74.m43;
  *&self->_baseTransform.m41 = *&v74.m41;
  *&self->_baseTransform.m43 = v16;
  v17 = *&v74.m13;
  *&self->_baseTransform.m11 = *&v74.m11;
  *&self->_baseTransform.m13 = v17;
  v18 = *&v74.m23;
  *&self->_baseTransform.m21 = *&v74.m21;
  *&self->_baseTransform.m23 = v18;
  [v11 frameOnCanvas];
  v67 = v19 - CGRectGetMinX(self->_frameRect);
  [v11 frameOnCanvas];
  v21 = v20 - CGRectGetMaxY(self->_frameRect);
  frameRect = self->_frameRect;
  v22 = self->_drawableFrame.origin.y - frameRect.origin.y;
  MaxY = CGRectGetMaxY(frameRect);
  v66 = v21 + MaxY - CGRectGetMaxY(self->_drawableFrame) - v22;
  [v11 frameOnCanvas];
  v25 = v24;
  v27 = v26;
  y = CGPointZero.y;
  v29 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v29 setPixelFormat:objc_msgSend(v6, "pixelFormat")];
  [v29 setBlendingEnabled:1];
  [v29 setSourceRGBBlendFactor:1];
  [v29 setSourceAlphaBlendFactor:1];
  [v29 setDestinationRGBBlendFactor:5];
  [v29 setDestinationAlphaBlendFactor:5];
  v30 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:v7 colorAttachment:v29];
  metalObjectShader = self->_metalObjectShader;
  self->_metalObjectShader = v30;

  v32 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v7 textureRect:CGPointZero.x device:y, v25, v27, TSDRectUnit[0], TSDRectUnit[1], TSDRectUnit[2], TSDRectUnit[3]];
  metalObjectDataBuffer = self->_metalObjectDataBuffer;
  self->_metalObjectDataBuffer = v32;

  v34 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m21), *&self->_baseTransform.m23);
  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m31), *&self->_baseTransform.m33);
  v36 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m41), *&self->_baseTransform.m43);
  *self->_anon_160 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m11), *&self->_baseTransform.m13);
  *&self->_anon_160[16] = v34;
  *&self->_anon_160[32] = v35;
  *&self->_anon_160[48] = v36;
  v37 = v4;
  v38 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v38 setPixelFormat:objc_msgSend(v6, "pixelFormat")];
  [v38 setBlendingEnabled:1];
  [v38 setSourceRGBBlendFactor:4];
  [v38 setSourceAlphaBlendFactor:4];
  [v38 setDestinationRGBBlendFactor:1];
  [v38 setDestinationAlphaBlendFactor:1];
  v39 = [[TSDMetalRenderTarget alloc] initWithSize:v6 metalContext:{self->_frameRect.size.width, self->_frameRect.size.height}];
  fboRenderTarget = self->_fboRenderTarget;
  self->_fboRenderTarget = v39;

  v41 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildFlameVertexShader" fragmentShader:@"buildFlameFragmentShader" device:v7 library:@"KeynoteMetalLibrary" colorAttachment:v38];
  metalFlameShader = self->_metalFlameShader;
  self->_metalFlameShader = v41;

  v43 = [v37 animatedBuild];
  v44 = [v37 randomGenerator];
  v45 = [(KNBuildFlame *)self p_flameSystemForTR:v11 build:v43 randomGenerator:v44 metalContext:v6];
  flameSystem = self->_flameSystem;
  self->_flameSystem = v45;

  [v11 frameOnCanvas];
  [v11 frameOnCanvas];
  height = self->_frameRect.size.height;
  [(KNAnimationContext *)self->super.mAnimationContext fieldOfViewInRadians];
  v49 = tan(v48 * 0.5);
  v50 = height / (v49 + v49);
  memset(&v74, 0, sizeof(v74));
  [(KNAnimationContext *)self->super.mAnimationContext fieldOfViewInRadians];
  TSDTransform3DMakeProjection();
  memset(&v73, 0, sizeof(v73));
  CATransform3DMakeTranslation(&v73, v67 - self->_frameRect.size.width * 0.5, -self->_frameRect.size.height - self->_frameRect.origin.y + self->_frameRect.origin.y - v66, -v50);
  a = v73;
  b = v74;
  CATransform3DConcat(&v72, &a, &b);
  v74 = v72;
  v51 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v72.m21), *&v72.m23);
  v52 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v72.m31), *&v72.m33);
  v53 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v72.m41), *&v72.m43);
  *&self->_flameUniforms.RotationMax = vcvt_hight_f32_f64(vcvt_f32_f64(*&v72.m11), *&v72.m13);
  *&self->_flameUniforms.Duration = v51;
  *&self->_anon_34[12] = v52;
  *&self->_anon_34[28] = v53;
  [(KNBuildFlameSystem *)self->_flameSystem speedMax];
  *&v54 = v54;
  *&self->_anon_34[48] = LODWORD(v54);
  [(KNBuildFlameSystem *)self->_flameSystem rotationMax];
  *&v55 = v55;
  *&self->_anon_34[44] = LODWORD(v55);
  [(KNBuildFlameSystem *)self->_flameSystem duration];
  *&v56 = v56;
  *&self->_anon_34[60] = LODWORD(v56);
  v57 = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:v7 colorAttachment:v29];
  metalFboShader = self->_metalFboShader;
  self->_metalFboShader = v57;

  TSDRectWithSize();
  v59 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:v7 device:?];
  metalFboDataBuffer = self->_metalFboDataBuffer;
  self->_metalFboDataBuffer = v59;

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  memset(&v72, 0, sizeof(v72));
  TSDTransform3DMakeOrtho();
  x = self->_frameRect.origin.x;
  v62 = self->_frameRect.origin.y - self->_frameRect.size.height * 0.5;
  b = v72;
  CATransform3DTranslate(&a, &b, x, v62, 0.0);
  v72 = a;
  v63 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a.m21), *&a.m23);
  v64 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a.m31), *&a.m33);
  v65 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a.m41), *&a.m43);
  *self->_anon_1c0 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a.m11), *&a.m13);
  *&self->_anon_1c0[16] = v63;
  *&self->_anon_1c0[32] = v64;
  *&self->_anon_1c0[48] = v65;
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  v6 = a3;
  v4 = [v6 animatedBuild];
  v5 = [v4 isBuildIn];

  if (v5)
  {
    [(KNBuildFlame *)self p_prepareAnimationWithContext:v6];
  }
}

- (void)metalAnimationWillBeginWithContext:(id)a3
{
  v4 = a3;
  [(KNBuildFlame *)self metalPrepareAnimationWithContext:v4];
  [(KNBuildFlame *)self metalAnimationHasBegunWithContext:v4];
}

- (void)metalAnimationHasBegunWithContext:(id)a3
{
  v6 = a3;
  v4 = [v6 animatedBuild];
  v5 = [v4 isBuildOut];

  if (v5)
  {
    [(KNBuildFlame *)self p_prepareAnimationWithContext:v6];
  }
}

- (void)metalRenderFrameWithContext:(id)a3
{
  v37 = a3;
  v4 = [v37 textures];
  v5 = [v37 metalContext];
  [v37 percent];
  v7 = v6;
  v8 = [v37 animatedBuild];
  if ([v8 isBuildOut])
  {
    v9 = 1.0 - v7;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v4 lastObject];
  v11 = [v37 metalContext];
  v12 = [v11 renderEncoder];

  if (!v12)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"[KNBuildFlame metalRenderFrameWithContext:]"];
    [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFlame.m"];
    v16 = v15 = v5;
    [v13 handleFailureInFunction:v14 file:v16 lineNumber:392 description:{@"invalid nil value for '%s'", "renderEncoder"}];

    v5 = v15;
  }

  if ([v8 isBuildOut])
  {
    v17 = 0.25;
  }

  else
  {
    v17 = 0.5;
  }

  [v8 duration];
  v19 = 1.0 / v18;
  if (v17 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v21 = [v37 metalContext];
  v22 = [v10 metalTextureWithContext:v21];

  if (v22)
  {
    v36 = v4;
    [v12 setFragmentTexture:v22 atIndex:0];
    if (v9 > v20)
    {
      TSUSineMap();
      v24 = v23;
      [v10 singleTextureOpacity];
      *&v25 = v24 * v25;
      self->_objectFragmentUniforms.Opacity = *&v25;
      [(TSDMetalShader *)self->_metalObjectShader setPipelineStateWithEncoder:v12 vertexBytes:self->_anon_160 fragmentBytes:?];
      [(TSDMTLDataBuffer *)self->_metalObjectDataBuffer drawWithEncoder:v12 atIndex:[(TSDMetalShader *)self->_metalObjectShader bufferIndex]];
    }

    v26 = v9 == 1.0 || v9 == 0.0;
    v28 = 1.0;
    if (v26)
    {
      v28 = 0.0;
    }

    v27 = v7;
    *&self->_anon_34[52] = v27;
    *&self->_anon_34[56] = v28;
    [v5 commandQueue];
    v29 = v35 = v5;
    v30 = [v29 commandBuffer];

    v31 = [(TSDMetalRenderTarget *)self->_fboRenderTarget passDescriptor];
    v32 = [v30 renderCommandEncoderWithDescriptor:v31];

    [(TSDMetalShader *)self->_metalFlameShader setPipelineStateWithEncoder:v32 vertexBytes:&self->_flameUniforms];
    v33 = [(TSDTexturedRectangle *)self->_metalFlameTexture metalTexture];
    [v32 setFragmentTexture:v33 atIndex:0];

    [(KNBuildFlameSystem *)self->_flameSystem drawMetalWithEncoder:v32];
    [v32 endEncoding];
    [v30 commit];
    v34 = [(TSDMetalRenderTarget *)self->_fboRenderTarget texture];
    [v12 setFragmentTexture:v34 atIndex:0];

    [(TSDMetalShader *)self->_metalFboShader setPipelineStateWithEncoder:v12 vertexBytes:self->_anon_1c0];
    [(TSDMTLDataBuffer *)self->_metalFboDataBuffer drawWithEncoder:v12 atIndex:[(TSDMetalShader *)self->_metalFboShader bufferIndex]];

    v5 = v35;
    v4 = v36;
  }
}

- (void)metalTeardownAnimationsWithContext:(id)a3
{
  metalFlameShader = self->_metalFlameShader;
  self->_metalFlameShader = 0;

  metalObjectShader = self->_metalObjectShader;
  self->_metalObjectShader = 0;

  metalObjectDataBuffer = self->_metalObjectDataBuffer;
  self->_metalObjectDataBuffer = 0;

  [(TSDTexturedRectangle *)self->_metalFlameTexture teardown];
  metalFlameTexture = self->_metalFlameTexture;
  self->_metalFlameTexture = 0;

  metalFboShader = self->_metalFboShader;
  self->_metalFboShader = 0;

  metalFboDataBuffer = self->_metalFboDataBuffer;
  self->_metalFboDataBuffer = 0;

  fboRenderTarget = self->_fboRenderTarget;
  self->_fboRenderTarget = 0;
}

@end