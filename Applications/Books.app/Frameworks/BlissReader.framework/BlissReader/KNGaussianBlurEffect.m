@interface KNGaussianBlurEffect
- (CATransform3D)MVPMatrix;
- (KNGaussianBlurEffect)initWithContext:(id)a3;
- (double)p_scaleFactorForTextureToFitWithinMaxSizeWithSize:(CGSize)a3 scaleFactor:(double)a4 maxTextureSize:(CGSize)a5;
- (void)createBlurTexturesUsingShadersWithBlurSteps:(unint64_t)a3 maxBlurRadius:(double)a4 stepsToDecreaseRadius:(double)a5 commandBuffer:(id)a6 capabilities:(id)a7;
- (void)renderEffectAtPercent:(double)a3 withContext:(id)a4;
- (void)setMVPMatrix:(CATransform3D *)a3;
- (void)setupEffectIfNecessary;
- (void)teardown;
@end

@implementation KNGaussianBlurEffect

- (KNGaussianBlurEffect)initWithContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = KNGaussianBlurEffect;
  v5 = [(KNGaussianBlurEffect *)&v13 init];
  if (v5)
  {
    v6 = [v4 metalContext];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = *&CATransform3DIdentity.m33;
    *(v5 + 264) = *&CATransform3DIdentity.m31;
    *(v5 + 280) = v8;
    v9 = *&CATransform3DIdentity.m43;
    *(v5 + 296) = *&CATransform3DIdentity.m41;
    *(v5 + 312) = v9;
    v10 = *&CATransform3DIdentity.m13;
    *(v5 + 200) = *&CATransform3DIdentity.m11;
    *(v5 + 216) = v10;
    v11 = *&CATransform3DIdentity.m23;
    *(v5 + 232) = *&CATransform3DIdentity.m21;
    *(v5 + 248) = v11;
    *(v5 + 24) = 0x3FF0000000000000;
    v5[176] = 0;
  }

  return v5;
}

- (double)p_scaleFactorForTextureToFitWithinMaxSizeWithSize:(CGSize)a3 scaleFactor:(double)a4 maxTextureSize:(CGSize)a5
{
  if (a4 == 0.0)
  {
    v5 = [TSUAssertionHandler currentHandler:a3.width];
    v6 = [NSString stringWithUTF8String:"[KNGaussianBlurEffect p_scaleFactorForTextureToFitWithinMaxSizeWithSize:scaleFactor:maxTextureSize:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KNGaussianBlurEffect.m"];
    v8 = @"Scale factor cannot be zero.";
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = 153;
LABEL_10:
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:v12 description:v8];

    return 1.0;
  }

  height = a5.height;
  width = a5.width;
  v15 = a4;
  if (![(KNGaussianBlurEffect *)self p_textureSizeIsValid:?]|| ![(KNGaussianBlurEffect *)self p_textureSizeIsValid:width, height])
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[KNGaussianBlurEffect p_scaleFactorForTextureToFitWithinMaxSizeWithSize:scaleFactor:maxTextureSize:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KNGaussianBlurEffect.m"];
    v8 = @"Invalid texture size";
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = 158;
    goto LABEL_10;
  }

  TSDMultiplySizeScalar();
  if (v17 >= width)
  {
    v15 = v15 / (width / v17);
    TSDMultiplySizeScalar();
  }

  if (v18 >= height)
  {
    return v15 / (height / v18);
  }

  return v15;
}

- (void)createBlurTexturesUsingShadersWithBlurSteps:(unint64_t)a3 maxBlurRadius:(double)a4 stepsToDecreaseRadius:(double)a5 commandBuffer:(id)a6 capabilities:(id)a7
{
  v119 = a6;
  v12 = a7;
  v13 = [(TSDMetalContext *)self->_metalContext device];
  [v12 maximumMetalTextureSizeForDevice:v13];
  v108 = v15;
  v109 = v14;
  v16 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v16 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
  v118 = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:v13 colorAttachment:v16];
  v117 = [[TSDMetalShader alloc] initDefaultGaussianBlurShaderWithDevice:v13 colorAttachment:v16 halfSizedRadius:1];
  v17 = +[NSMutableArray array];
  v116 = +[NSMutableArray array];
  Width = CGImageGetWidth([(TSDTexturedRectangle *)self->_texture image]);
  Height = CGImageGetHeight([(TSDTexturedRectangle *)self->_texture image]);
  [(TSDTexturedRectangle *)self->_texture size];
  v21 = v20;
  [(TSDTexturedRectangle *)self->_texture size];
  v23 = v22;
  TSDRectWithSize();
  v106 = v25;
  v107 = v24;
  v105 = v26;
  r2 = v27;
  v111 = TSDRectUnit[1];
  v112 = TSDRectUnit[0];
  v110 = TSDRectUnit[2];
  v113 = TSDRectUnit[3];
  v114 = self;
  v115 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:v13 device:?];
  v28 = [(TSDTexturedRectangle *)self->_texture metalTextureWithContext:self->_metalContext];
  v29 = v28;
  if (v28)
  {
    v96 = v16;
    v97 = v12;
    v30 = 0;
    v99 = Width / v21;
    v100 = Height;
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    v124 = a3;
    v125 = Width;
    v33 = CGRectNull.size.width;
    v34 = CGRectNull.size.height;
    v35 = 1.0;
    v98 = Height / v23;
    v103 = v17;
    v104 = v13;
    v126 = a4;
    v127 = a5;
    v101 = a3;
    v102 = v28;
    do
    {
      v36 = v30 / v124 * (v30 / v124) * a4;
      if (a5 == 0.0)
      {
        v38 = 2.0;
      }

      else
      {
        v37 = fmax(floor(v36 / a5), v35);
        v38 = v37 + v37;
      }

      if (v36 <= 0.0)
      {
        v41 = [[KNGaussianBlurTexture alloc] initWithMetalTexture:v29 frame:v107 blurAmount:v106, v105, r2, v36];
        v148.origin.x = x;
        v148.origin.y = y;
        v148.size.width = v33;
        v148.size.height = v34;
        v154.origin.x = v107;
        v154.origin.y = v106;
        v154.size.width = v105;
        a4 = v126;
        a5 = v127;
        v154.size.height = r2;
        v149 = CGRectUnion(v148, v154);
        x = v149.origin.x;
        y = v149.origin.y;
        v33 = v149.size.width;
        v34 = v149.size.height;
      }

      else
      {
        TSDMultiplySizeScalar();
        v123 = v36 / v38;
        if (fabs(v36 / v38 + -5.0) > 0.100000001)
        {
          v38 = v38 / (5.0 / (v36 / v38));
          TSDMultiplySizeScalar();
          if (v39 >= v125)
          {
            v38 = 1.0;
            v40 = v100;
            v39 = v125;
          }
        }

        [(KNGaussianBlurEffect *)v114 p_scaleFactorForTextureToFitWithinMaxSizeWithSize:v39 scaleFactor:v40 maxTextureSize:v38, v109, v108];
        v43 = v42;
        TSDMultiplySizeScalar();
        v120 = v44;
        v121 = v45;
        [(TSDTexturedRectangle *)v114->_texture offset];
        v47 = fabs(v46) * v99 + 10.0;
        [(TSDTexturedRectangle *)v114->_texture offset];
        v49 = v43;
        v50 = v43 * (v47 + 5.0);
        v51 = v43 * (fabs(v48) * v98 + 10.0 + 5.0);
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        TSDTransform3DMakeOrtho();
        memset(&v138, 0, sizeof(v138));
        CATransform3DMakeTranslation(&v138, v50 * 0.5, v51 * 0.5, 0.0);
        a = v138;
        *&b.m31 = v143;
        *&b.m33 = v144;
        *&b.m41 = v145;
        *&b.m43 = v146;
        *&b.m11 = v139;
        *&b.m13 = v140;
        *&b.m21 = v141;
        *&b.m23 = v142;
        CATransform3DConcat(&v137, &a, &b);
        v143 = *&v137.m31;
        v144 = *&v137.m33;
        v145 = *&v137.m41;
        v146 = *&v137.m43;
        v139 = *&v137.m11;
        v140 = *&v137.m13;
        v141 = *&v137.m21;
        v142 = *&v137.m23;
        sx = v49;
        v52 = v51 / v49;
        v53 = v120 + v50 / v49;
        memset(&v137, 0, sizeof(v137));
        TSDTransform3DMakeOrtho();
        v54 = [[TSDMetalRenderTarget alloc] initWithSize:v114->_metalContext metalContext:{v53, v121 + v52}];
        v55 = [v54 passDescriptor];
        v56 = [v119 renderCommandEncoderWithDescriptor:v55];

        *&a.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(v139), v140);
        *&a.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(v141), v142);
        *&a.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(v143), v144);
        *&a.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(v145), v146);
        [v118 setPipelineStateWithEncoder:v56 vertexBytes:&a];
        [v56 setFragmentTexture:v29 atIndex:0];
        [v115 drawWithEncoder:v56 atIndex:{objc_msgSend(v118, "bufferIndex")}];
        [v56 endEncoding];
        TSDRectWithSize();
        v57 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:v13 device:?];
        v58 = [[TSDMetalRenderTarget alloc] initWithSize:v114->_metalContext metalContext:{v53, v121 + v52}];
        v59 = [v58 passDescriptor];
        v60 = [v119 renderCommandEncoderWithDescriptor:v59];

        *&a.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v137.m11), *&v137.m13);
        *&a.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v137.m21), *&v137.m23);
        *&a.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v137.m31), *&v137.m33);
        *&a.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v137.m41), *&v137.m43);
        *&v61 = 1.0 / v53;
        v62 = 1.0 / (v121 + v52);
        *(&v61 + 1) = v62;
        v133 = v61;
        v134 = 1;
        [v117 setPipelineStateWithEncoder:v60 vertexBytes:&a fragmentBytes:&v133];
        v63 = [v54 texture];
        [v60 setFragmentTexture:v63 atIndex:0];

        [v57 drawWithEncoder:v60 atIndex:{objc_msgSend(v117, "bufferIndex")}];
        [v60 endEncoding];
        v64 = [[TSDMetalRenderTarget alloc] initWithSize:v114->_metalContext metalContext:{v53, v121 + v52}];
        v65 = [v64 passDescriptor];
        v66 = [v119 renderCommandEncoderWithDescriptor:v65];

        LOBYTE(v134) = 0;
        [v117 setPipelineStateWithEncoder:v66 vertexBytes:&a fragmentBytes:&v133];
        v67 = [v58 texture];
        [v66 setFragmentTexture:v67 atIndex:0];

        [v57 drawWithEncoder:v66 atIndex:{objc_msgSend(v117, "bufferIndex")}];
        [v66 endEncoding];
        TSDRectWithOriginAndSize();
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;
        CGAffineTransformMakeScale(&b, sx, sx);
        v150.origin.x = v69;
        v150.origin.y = v71;
        v150.size.width = v73;
        v150.size.height = v75;
        v151 = CGRectApplyAffineTransform(v150, &b);
        v76 = v151.origin.x;
        v77 = v151.origin.y;
        v78 = v151.size.width;
        v79 = v151.size.height;
        v80 = [KNGaussianBlurTexture alloc];
        v81 = [v64 texture];
        v41 = [(KNGaussianBlurTexture *)v80 initWithMetalTexture:v81 frame:v76 blurAmount:v77, v78, v79, v123];

        v82 = [v64 texture];
        [v116 addObject:v82];

        v152.origin.x = x;
        v152.origin.y = y;
        v152.size.width = v33;
        v152.size.height = v34;
        v155.origin.x = v76;
        v155.origin.y = v77;
        v155.size.width = v78;
        v155.size.height = v79;
        v153 = CGRectUnion(v152, v155);
        x = v153.origin.x;
        y = v153.origin.y;
        v33 = v153.size.width;
        v34 = v153.size.height;

        v29 = v102;
        v13 = v104;

        v17 = v103;
        a4 = v126;
        a5 = v127;
        a3 = v101;
      }

      [v17 addObject:v41];

      ++v30;
      v35 = 1.0;
    }

    while (v30 <= a3);
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v83 = v17;
    v84 = [v83 countByEnumeratingWithState:&v129 objects:v147 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v130;
      do
      {
        for (i = 0; i != v85; i = i + 1)
        {
          if (*v130 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v129 + 1) + 8 * i);
          [v88 frame];
          TSDAddPoints();
          TSDNormalizedPointInRect();
          TSDNormalizedPointInRect();
          TSDRectWithPoints();
          [v88 setBounds:?];
        }

        v85 = [v83 countByEnumeratingWithState:&v129 objects:v147 count:16];
      }

      while (v85);
    }

    objc_storeStrong(&v114->_blurTextures, v17);
    [(TSDTexturedRectangle *)v114->_texture size];
    v90 = v89 / CGImageGetWidth([(TSDTexturedRectangle *)v114->_texture image]);
    [(TSDTexturedRectangle *)v114->_texture size];
    v92 = v91;
    v93 = CGImageGetHeight([(TSDTexturedRectangle *)v114->_texture image]);
    v94 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v13 textureRect:x * v90 device:y * (v92 / v93), v33 * v90, v34 * (v92 / v93), v112, v111, v110, v113];
    metalDataBuffer = v114->_metalDataBuffer;
    v114->_metalDataBuffer = v94;

    v16 = v96;
    v12 = v97;
  }
}

- (void)setupEffectIfNecessary
{
  if (!self->_texture)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[KNGaussianBlurEffect setupEffectIfNecessary]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KNGaussianBlurEffect.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:363 description:{@"invalid nil value for '%s'", "_texture"}];
  }

  if (self->_metalContext)
  {
    v15 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v15 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
    [v15 setBlendingEnabled:1];
    [v15 setDestinationRGBBlendFactor:5];
    [v15 setDestinationAlphaBlendFactor:5];
    if (self->_saturateBlurTextures)
    {
      v6 = @"KNBuildBlurColorizedFragmentShader";
    }

    else
    {
      v6 = @"KNBuildBlurFragmentShader";
    }

    v7 = v6;
    v8 = [TSDMetalShader alloc];
    v9 = [(TSDMetalContext *)self->_metalContext device];
    v10 = [v8 initCustomShaderWithVertexShader:@"KNBuildBlurVertexShader" fragmentShader:v7 device:v9 library:@"KeynoteMetalLibrary" colorAttachment:v15];

    metalShader = self->_metalShader;
    self->_metalShader = v10;

    v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_MVPMatrix.m21), *&self->_MVPMatrix.m23);
    v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_MVPMatrix.m31), *&self->_MVPMatrix.m33);
    v14 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_MVPMatrix.m41), *&self->_MVPMatrix.m43);
    *self->_anon_30 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_MVPMatrix.m11), *&self->_MVPMatrix.m13);
    *&self->_anon_30[16] = v12;
    *&self->_anon_30[32] = v13;
    *&self->_anon_30[48] = v14;
  }
}

- (void)renderEffectAtPercent:(double)a3 withContext:(id)a4
{
  if (self->_metalDataBuffer)
  {
    v28 = [a4 renderEncoder];
    *v6.i64 = ([(NSArray *)self->_blurTextures count]- 1) * a3;
    v26 = v6;
    v7 = vcvtmd_u64_f64(*v6.i64);
    v8 = v7 + 1;
    if (v7 + 1 >= [(NSArray *)self->_blurTextures count])
    {
      v8 = [(NSArray *)self->_blurTextures count]- 1;
      v7 = [(NSArray *)self->_blurTextures count]- 2;
      v11.i64[0] = 1.0;
    }

    else
    {
      *v9.i64 = *v26.i64 - trunc(*v26.i64);
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v11 = vbslq_s8(vnegq_f64(v10), v9, v26);
    }

    v12 = [(NSArray *)self->_blurTextures objectAtIndexedSubscript:v7, *&v11];
    v13 = [(NSArray *)self->_blurTextures objectAtIndexedSubscript:v8];
    [v12 bounds];
    v15.f64[1] = v14;
    v17.f64[1] = v16;
    *&self->_anon_30[64] = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v15);
    [v13 bounds];
    opacity = self->_opacity;
    self->_fragmentUniforms.Opacity = opacity;
    p_fragmentUniforms = &self->_fragmentUniforms;
    v21.f64[1] = v20;
    v23.f64[1] = v22;
    *&p_fragmentUniforms[-2].Opacity = vcvt_hight_f32_f64(vcvt_f32_f64(v23), v21);
    *v23.f64 = v27;
    p_fragmentUniforms->Percent = *v23.f64;
    [*&p_fragmentUniforms[-15] setPipelineStateWithEncoder:v28 vertexBytes:&p_fragmentUniforms[-12] fragmentBytes:p_fragmentUniforms];
    v24 = [v12 texture];
    [v28 setFragmentTexture:v24 atIndex:0];

    v25 = [v13 texture];
    [v28 setFragmentTexture:v25 atIndex:1];

    [*&p_fragmentUniforms[-14] drawWithEncoder:v28 atIndex:{objc_msgSend(*&p_fragmentUniforms[-15], "bufferIndex")}];
  }
}

- (void)teardown
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_blurTextures;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7) teardown];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  blurTextures = self->_blurTextures;
  self->_blurTextures = 0;

  metalDataBuffer = self->_metalDataBuffer;
  self->_metalDataBuffer = 0;

  metalShader = self->_metalShader;
  self->_metalShader = 0;
}

- (CATransform3D)MVPMatrix
{
  v3 = *&self[1].m34;
  *&retstr->m11 = *&self[1].m32;
  *&retstr->m13 = v3;
  v4 = *&self[1].m44;
  *&retstr->m21 = *&self[1].m42;
  *&retstr->m23 = v4;
  v5 = *&self[2].m14;
  *&retstr->m31 = *&self[2].m12;
  *&retstr->m33 = v5;
  v6 = *&self[2].m24;
  *&retstr->m41 = *&self[2].m22;
  *&retstr->m43 = v6;
  return self;
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
  v8 = *&a3->m43;
  *&self->_MVPMatrix.m41 = *&a3->m41;
  *&self->_MVPMatrix.m43 = v8;
  *&self->_MVPMatrix.m31 = v6;
  *&self->_MVPMatrix.m33 = v7;
}

@end