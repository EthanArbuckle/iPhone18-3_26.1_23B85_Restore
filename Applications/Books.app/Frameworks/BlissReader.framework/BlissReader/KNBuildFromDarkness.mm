@interface KNBuildFromDarkness
+ (id)customAttributes;
+ (id)defaultAttributes;
+ (id)localizedMenuString:(int)string;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version;
- (CATransform3D)p_transformForPercent:(SEL)percent centerPoint:(double)point;
- (CGRect)frameOfEffectWithContext:(id)context;
- (KNBuildFromDarkness)initWithAnimationContext:(id)context;
- (void)metalAnimationHasBegunWithContext:(id)context;
- (void)metalAnimationWillBeginWithContext:(id)context;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
- (void)metalTeardownAnimationsWithContext:(id)context;
- (void)p_drawWithContext:(id)context;
- (void)p_metalSetupWithContext:(id)context;
- (void)p_setupAnimationWithContext:(id)context;
- (void)p_setupMetalAnimationWithContext:(id)context texturedRect:(id)rect;
- (void)p_setupMetalEdgeDistanceTextureWithContext:(id)context;
- (void)p_setupMetalTransformWithContext:(id)context texturedRect:(id)rect;
@end

@implementation KNBuildFromDarkness

+ (id)localizedMenuString:(int)string
{
  v3 = KNBundle();
  v4 = [v3 localizedStringForKey:@"Fade and Scale" value:@"Fade and Scale" table:@"Keynote"];

  return v4;
}

+ (id)defaultAttributes
{
  v2 = [NSNumber numberWithDouble:2.5];
  v3 = [NSDictionary dictionaryWithObject:v2 forKey:@"KNBuildAttributesDuration"];

  return v3;
}

+ (id)customAttributes
{
  v18[0] = @"KNBuildCustomAttributesShine";
  v17[0] = &off_49D3D8;
  v17[1] = &off_49D3F0;
  v2 = KNBundle();
  v3 = [v2 localizedStringForKey:@"Shine *Fade and Scale Build*" value:@"Shine" table:@"Keynote"];
  v18[1] = v3;
  v18[2] = &off_49D420;
  v17[2] = &off_49D408;
  v17[3] = &off_49D438;
  v4 = KNBundle();
  v5 = [v4 localizedStringForKey:@"Select to use a shine effect during the build." value:&stru_471858 table:@"Keynote"];
  v18[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

  v16[0] = @"KNBuildCustomAttributesScaleAmount";
  v15[0] = &off_49D3D8;
  v15[1] = &off_49D3F0;
  v7 = KNBundle();
  v8 = [v7 localizedStringForKey:@"Scale *Fade and Scale Build*" value:@"Scale" table:@"Keynote"];
  v16[1] = v8;
  v16[2] = &off_49D450;
  v15[2] = &off_49D408;
  v15[3] = &off_49D468;
  v16[3] = &off_49D480;
  v16[4] = &off_49D4B0;
  v15[4] = &off_49D498;
  v15[5] = &off_49D438;
  v9 = KNBundle();
  v10 = [v9 localizedStringForKey:@"Adjust how much the object\\U2019s size changes." value:&stru_471858 table:@"Keynote"];
  v16[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];

  v14[0] = v6;
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  v9 = [*attributes objectForKeyedSubscript:{@"KNBuildCustomAttributesShine", name, warning, *&type, classic, version}];
  if (!v9 || (v10 = v9, [*attributes objectForKeyedSubscript:@"KNBuildCustomAttributesScaleAmount"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    v13 = [*attributes mutableCopy];
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:@"KNBuildCustomAttributesShine"];
    [v13 setObject:&off_49D4C8 forKeyedSubscript:@"KNBuildCustomAttributesScaleAmount"];
    v12 = v13;
    *attributes = v13;
  }
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  if (classic)
  {
    v8 = *&type;
    *name = @"apple:dissolve";
    v13 = KNBundle();
    v11 = [v13 localizedStringForKey:@"%@ builds were exported as Dissolve." value:&stru_471858 table:@"Keynote"];
    v12 = [self localizedMenuString:v8];
    *warning = [NSString stringWithFormat:v11, v12];
  }
}

- (KNBuildFromDarkness)initWithAnimationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = KNBuildFromDarkness;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:context];
  if (v3)
  {
    v4 = KNBundle();
    v5 = [v4 pathForResource:@"FromDarkness" ofType:@"parameterGroup"];

    v6 = [KNAnimParameterGroup parameterGroupForFile:v5];
    parameterGroup = v3->_parameterGroup;
    v3->_parameterGroup = v6;
  }

  return v3;
}

- (CGRect)frameOfEffectWithContext:(id)context
{
  contextCopy = context;
  [contextCopy drawableFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  self->_drawableFrame.origin.x = v5;
  self->_drawableFrame.origin.y = v7;
  self->_drawableFrame.size.width = v9;
  self->_drawableFrame.size.height = v11;
  animatedBuild = [contextCopy animatedBuild];

  attributes = [animatedBuild attributes];
  v15 = [attributes objectForKeyedSubscript:@"KNBuildCustomAttributesScaleAmount"];
  [v15 doubleValue];
  v17 = v16 / 100.0;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  CGRectGetMinX(v19);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  CGRectGetMinY(v20);
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  CGRectGetMaxX(v21);
  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  CGRectGetMaxY(v22);
  if (v17 > 1.0 && vabdd_f64(1.0, v17) >= 0.00999999978)
  {
    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    CGRectGetMidX(v23);
    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    CGRectGetMidY(v24);
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    CGRectGetWidth(v25);
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v10;
    v26.size.height = v12;
    CGRectGetHeight(v26);
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    CGRectGetMinX(v27);
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    CGRectGetMinY(v28);
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    CGRectGetMaxX(v29);
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    CGRectGetMaxY(v30);
  }

  p_frameRect = &self->_frameRect;
  TSDRectWithPoints();
  *p_frameRect = v31;
  result = CGRectIntegral(v31);
  *p_frameRect = result;
  return result;
}

- (CATransform3D)p_transformForPercent:(SEL)percent centerPoint:(double)point
{
  y = a5.y;
  x = a5.x;
  TSUMix();
  v10 = v9;
  v12 = *&self->_baseTransform.m31;
  v11 = *&self->_baseTransform.m33;
  v13 = *&self->_baseTransform.m23;
  *&retstr->m31 = v12;
  *&retstr->m33 = v11;
  v14 = *&self->_baseTransform.m33;
  v16 = *&self->_baseTransform.m41;
  v15 = *&self->_baseTransform.m43;
  *&retstr->m41 = v16;
  *&retstr->m43 = v15;
  v17 = *&self->_baseTransform.m13;
  *&retstr->m11 = *&self->_baseTransform.m11;
  *&retstr->m13 = v17;
  v18 = *&self->_baseTransform.m23;
  v20 = *&self->_baseTransform.m11;
  v19 = *&self->_baseTransform.m13;
  v21 = *&self->_baseTransform.m21;
  *&retstr->m21 = v21;
  *&retstr->m23 = v18;
  *&v41.m31 = v12;
  *&v41.m33 = v14;
  v22 = *&self->_baseTransform.m43;
  *&v41.m41 = v16;
  *&v41.m43 = v22;
  *&v41.m11 = v20;
  *&v41.m13 = v19;
  *&v41.m21 = v21;
  *&v41.m23 = v13;
  CATransform3DTranslate(retstr, &v41, x, y, 0.0);
  v23 = *&retstr->m33;
  *&v40.m31 = *&retstr->m31;
  *&v40.m33 = v23;
  v24 = *&retstr->m43;
  *&v40.m41 = *&retstr->m41;
  *&v40.m43 = v24;
  v25 = *&retstr->m13;
  *&v40.m11 = *&retstr->m11;
  *&v40.m13 = v25;
  v26 = *&retstr->m23;
  *&v40.m21 = *&retstr->m21;
  *&v40.m23 = v26;
  CATransform3DScale(&v41, &v40, v10, v10, 1.0);
  v27 = *&v41.m33;
  *&retstr->m31 = *&v41.m31;
  *&retstr->m33 = v27;
  v28 = *&v41.m43;
  *&retstr->m41 = *&v41.m41;
  *&retstr->m43 = v28;
  v29 = *&v41.m13;
  *&retstr->m11 = *&v41.m11;
  *&retstr->m13 = v29;
  v30 = *&v41.m23;
  *&retstr->m21 = *&v41.m21;
  *&retstr->m23 = v30;
  v31 = *&retstr->m33;
  *&v40.m31 = *&retstr->m31;
  *&v40.m33 = v31;
  v32 = *&retstr->m43;
  *&v40.m41 = *&retstr->m41;
  *&v40.m43 = v32;
  v33 = *&retstr->m13;
  *&v40.m11 = *&retstr->m11;
  *&v40.m13 = v33;
  v34 = *&retstr->m23;
  *&v40.m21 = *&retstr->m21;
  *&v40.m23 = v34;
  result = CATransform3DTranslate(&v41, &v40, -x, -y, 0.0);
  v36 = *&v41.m33;
  *&retstr->m31 = *&v41.m31;
  *&retstr->m33 = v36;
  v37 = *&v41.m43;
  *&retstr->m41 = *&v41.m41;
  *&retstr->m43 = v37;
  v38 = *&v41.m13;
  *&retstr->m11 = *&v41.m11;
  *&retstr->m13 = v38;
  v39 = *&v41.m23;
  *&retstr->m21 = *&v41.m21;
  *&retstr->m23 = v39;
  return result;
}

- (void)p_drawWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  animatedBuild = [contextCopy animatedBuild];
  [contextCopy percent];
  v8 = v7;
  [animatedBuild duration];
  animatedBuild2 = [contextCopy animatedBuild];

  LODWORD(contextCopy) = [animatedBuild2 isBuildOut];
  if (contextCopy)
  {
    v8 = 1.0 - v8;
  }

  lastObject = [textures lastObject];
  [lastObject size];
  TSDRectWithSize();
  TSDCenterOfRect();
  v12 = v11;
  v14 = v13;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Scale Timing" atPercent:v8];
  if (!BYTE2(self->_scaleMin))
  {
    v15 = 1.0 - v15;
  }

  [(KNBuildFromDarkness *)self p_transformForPercent:v15 centerPoint:v12, v14];
  if (BYTE1(self->_scaleMin) == 1)
  {
    TSUClamp();
    [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Scale Timing" atPercent:?];
    if (!BYTE2(self->_scaleMin))
    {
      v16 = 1.0 - v16;
    }

    [(KNBuildFromDarkness *)self p_transformForPercent:v16 centerPoint:v12, v14];
    [(TSDMetalMotionBlurEffect *)self->_metalMotionBlurEffect velocityScale];
    v18.f64[1] = v17;
    *&self->_anon_140[135] = vcvt_f32_f64(v18);
    *&self->_anon_140[71] = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    *&self->_anon_140[87] = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    *&self->_anon_140[103] = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    *&self->_anon_140[119] = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    *&v18.f64[0] = vcvt_f32_f64(*&CGAffineTransformIdentity.a);
    v19 = vcvt_f32_f64(*&CGAffineTransformIdentity.c);
    v20 = vcvt_f32_f64(*&CGAffineTransformIdentity.tx);
    *&self->_anon_140[159] = 0;
    *&self->_anon_140[151] = v18.f64[0];
    *&self->_anon_140[175] = 0;
    *&self->_anon_140[167] = v19;
    *&self->_anon_140[191] = 1065353216;
    *&self->_anon_140[183] = v20;
  }

  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Opacity Timing" atPercent:v8];
  v22 = v21;
  [lastObject singleTextureOpacity];
  v24 = v22 * v23;
  if (LOBYTE(self->_scaleMin))
  {
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Gradient BeginTime"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Gradient EndTime"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Gradient Size"];
    TSUClamp();
    TSDMixFloats();
    v55 = v25;
    TSDMixFloats();
    v26.f64[0] = v55;
    v26.f64[1] = v27;
    v28 = vcvt_f32_f64(v26);
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Bevel Angle Begin"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Bevel Angle End"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Bevel Angle Timing" atPercent:v8];
    TSDMixFloats();
    TSDDeltaFromAngle();
    v54 = v30;
    v56 = v29;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Bevel Opacity"];
    v32 = v31;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Bevel Timing" atPercent:v8];
    v34 = v32 * v33;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shine XPosition Begin"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shine XPosition End"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shine Angle"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Shine Move Timing" atPercent:v8];
    TSDMixFloats();
    v36 = v35;
    [lastObject size];
    *&v37 = v36 * v37;
    v53 = LODWORD(v37);
    TSDDeltaFromAngle();
    v39.f64[1] = v38;
    v40 = vadd_f32(v53, vcvt_f32_f64(v39));
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shine Size"];
    v42 = v41;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shine Opacity"];
    v44 = v43;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shine Opacity EndTime"];
    parameterGroup = self->_parameterGroup;
    TSUClamp();
    [(KNAnimParameterGroup *)parameterGroup valueForAnimationCurve:@"Shine Opacity Timing" atPercent:?];
    v47 = v44 * v46;
    *&self->_anon_200[39] = v28;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Gradient Affects Highlights Amount"];
    *&v48 = v48;
    *&self->_anon_200[47] = LODWORD(v48);
    v49.f64[0] = v56;
    v49.f64[1] = v54;
    *&self->_anon_200[31] = vcvt_f32_f64(v49);
    *v49.f64 = v34;
    *&self->_anon_200[23] = LODWORD(v49.f64[0]);
    *&self->_anon_200[55] = v53;
    *&self->_anon_200[63] = v40;
    *v49.f64 = v42;
    v50 = v47;
    *&self->_anon_200[71] = LODWORD(v49.f64[0]);
    self->_unshinyFragmentInput.Opacity = v50;
    v51 = v24;
    *&self->_anon_200[15] = v51;
  }

  else
  {
    v51 = v24;
  }

  v52 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
  *&self->_anon_100[7] = v52;
  *&self->_anon_100[23] = v52;
  *&self->_anon_100[39] = v52;
  *&self->_anon_100[55] = v52;
  *&self->_anon_140[7] = v52;
  *&self->_anon_140[23] = v52;
  *&self->_anon_140[39] = v52;
  *&self->_anon_140[55] = v52;
  *&self->_edgeTextureName = v51;
}

- (void)p_setupMetalEdgeDistanceTextureWithContext:(id)context
{
  contextCopy = context;
  if (!self->_edgeDistanceTexture)
  {
    v33 = contextCopy;
    metalContext = [contextCopy metalContext];
    textures = [v33 textures];
    if ([textures count] != &dword_0 + 1)
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"[KNBuildFromDarkness p_setupMetalEdgeDistanceTextureWithContext:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFromDarkness.m"];
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:397 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(textures, "count")}];
    }

    lastObject = [textures lastObject];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Bevel Size"];
    v12 = v11 / 100.0;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v14 = v13;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    if (v14 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = v12 * v16;
    v18 = v12 * v16;
    *&self->_anon_200[19] = v18;
    v19 = [lastObject metalTextureWithContext:metalContext];
    v20 = v19;
    if (v19)
    {
      width = [v19 width];
      height = [v20 height];
      v32 = metalContext;
      metalContext2 = [v33 metalContext];
      capabilities = [(KNAnimationContext *)self->super.mAnimationContext capabilities];
      v25 = [TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:v20 textureSize:(v17 + v17) maxDistance:1 edgeInsets:0 downsampleScale:metalContext2 floatTexture:capabilities makeCPUReadable:width metalContext:height capabilities:TSDEdgeInsetsZero[0].f64[0], TSDEdgeInsetsZero[0].f64[1], TSDEdgeInsetsZero[1].f64[0], TSDEdgeInsetsZero[1].f64[1], 1.0];
      name = [v25 name];
      edgeDistanceTexture = self->_edgeDistanceTexture;
      self->_edgeDistanceTexture = name;

      metalContext = v32;
      [lastObject size];
      v31 = v28;
      [lastObject size];
      v29.f64[0] = v31;
      v29.f64[1] = v30;
      *&self->_anon_200[7] = vcvt_f32_f64(v29);
    }

    contextCopy = v33;
  }
}

- (void)p_setupMetalAnimationWithContext:(id)context texturedRect:(id)rect
{
  contextCopy = context;
  rectCopy = rect;
  metalContext = [contextCopy metalContext];
  device = [metalContext device];
  v9 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v9 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v9 setBlendingEnabled:1];
  [v9 setDestinationRGBBlendFactor:5];
  [v9 setDestinationAlphaBlendFactor:5];
  if (BYTE1(self->_scaleMin) == 1)
  {
    v10 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v10 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
    v11 = [TSDMetalMotionBlurEffect alloc];
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v13 = v12;
    v15 = v14;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v17 = v16;
    v19 = v18;
    randomGenerator = [contextCopy randomGenerator];
    v21 = [v11 initWithFramebufferSize:randomGenerator slideSize:metalContext randomGenerator:v13 metalContext:{v15, v17, v19}];
    metalMotionBlurEffect = self->_metalMotionBlurEffect;
    self->_metalMotionBlurEffect = v21;

    [(TSDMetalMotionBlurEffect *)self->_metalMotionBlurEffect setIsSingleObject:1];
  }

  else
  {
    v10 = 0;
  }

  if (LOBYTE(self->_scaleMin) == 1)
  {
    v23 = @"buildFromDarknessFragmentShader";
    if (BYTE1(self->_scaleMin))
    {
      v24 = @"buildFromDarknessMotionBlurVertexShader";
    }

    else
    {
      v24 = @"buildFromDarknessVertexShader";
    }

    if (BYTE1(self->_scaleMin))
    {
      v23 = @"buildFromDarknessMotionBlurFragmentShader";
    }

    v25 = v23;
    v26 = v24;
    v27 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:v26 fragmentShader:v25 device:device library:@"KeynoteMetalLibrary" colorAttachment:v9 velocityAttachment:v10];
  }

  else
  {
    v27 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityMotionBlurShaderWithDevice:device colorAttachment:v9 velocityAttachment:v10 motionBlur:BYTE1(self->_scaleMin)];
  }

  metalShader = self->_metalShader;
  self->_metalShader = v27;

  [rectCopy size];
  TSDRectWithSize();
  v29 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:device device:?];
  mtlDataBuffer = self->_mtlDataBuffer;
  self->_mtlDataBuffer = v29;
}

- (void)p_setupMetalTransformWithContext:(id)context texturedRect:(id)rect
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  [(KNAnimationEffect *)self mvpMatrixWithContext:context, rect];
  if (BYTE1(self->_scaleMin) == 1)
  {
    metalMotionBlurEffect = self->_metalMotionBlurEffect;
    if (metalMotionBlurEffect)
    {
      v10[4] = v23;
      v10[5] = v24;
      v10[6] = v25;
      v10[7] = v26;
      v10[0] = v19;
      v10[1] = v20;
      v10[2] = v21;
      v10[3] = v22;
      [(TSDMetalMotionBlurEffect *)metalMotionBlurEffect adjustTransformForMotionBlurBuffer:v10];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
    }

    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
  }

  v6 = v24;
  *&self->_baseTransform.m31 = v23;
  *&self->_baseTransform.m33 = v6;
  v7 = v26;
  *&self->_baseTransform.m41 = v25;
  *&self->_baseTransform.m43 = v7;
  v8 = v20;
  *&self->_baseTransform.m11 = v19;
  *&self->_baseTransform.m13 = v8;
  v9 = v22;
  *&self->_baseTransform.m21 = v21;
  *&self->_baseTransform.m23 = v9;
}

- (void)p_setupAnimationWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  if ([textures count] != &dword_0 + 1)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[KNBuildFromDarkness p_setupAnimationWithContext:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFromDarkness.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:486 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(textures, "count")}];
  }

  lastObject = [textures lastObject];
  [(KNBuildFromDarkness *)self p_setupMetalTransformWithContext:contextCopy texturedRect:lastObject];
  animatedBuild = [contextCopy animatedBuild];
  attributes = [animatedBuild attributes];
  v11 = [attributes objectForKeyedSubscript:@"KNBuildCustomAttributesScaleAmount"];
  [v11 doubleValue];
  v13 = v12 / 100.0;

  BYTE2(self->_scaleMin) = 1;
  self->_scaleMax = 1.0;
  self[1].super.super.isa = 0x3FF0000000000000;
  BYTE1(self->_scaleMin) = [contextCopy isMotionBlurred];
  if (fabs(v13 + -1.0) >= 0.01)
  {
    if (v13 >= 1.0)
    {
      if (v13 > 1.0)
      {
        BYTE2(self->_scaleMin) = 0;
        [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Scale Max"];
        TSUMix();
        self[1].super.super.isa = v15;
      }
    }

    else
    {
      [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Scale Min"];
      TSUMix();
      self->_scaleMax = v14;
    }
  }

  else
  {
    BYTE1(self->_scaleMin) = 0;
  }

  animatedBuild2 = [contextCopy animatedBuild];
  attributes2 = [animatedBuild2 attributes];
  v18 = [attributes2 objectForKeyedSubscript:@"KNBuildCustomAttributesShine"];
  LOBYTE(self->_scaleMin) = [v18 BOOLValue];

  [(KNBuildFromDarkness *)self p_setupMetalAnimationWithContext:contextCopy texturedRect:lastObject];
}

- (void)p_metalSetupWithContext:(id)context
{
  contextCopy = context;
  if (!self->_isMetalSetupComplete)
  {
    [(KNBuildFromDarkness *)self p_setupAnimationWithContext:contextCopy];
    textures = [contextCopy textures];
    if ([textures count] != &dword_0 + 1)
    {
      v6 = +[TSUAssertionHandler currentHandler];
      v7 = [NSString stringWithUTF8String:"[KNBuildFromDarkness p_metalSetupWithContext:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFromDarkness.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:538 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(textures, "count")}];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    [(KNAnimationEffect *)self mvpMatrixWithContext:contextCopy];
    if (BYTE1(self->_scaleMin) == 1)
    {
      metalMotionBlurEffect = self->_metalMotionBlurEffect;
      if (metalMotionBlurEffect)
      {
        v14[4] = v27;
        v14[5] = v28;
        v14[6] = v29;
        v14[7] = v30;
        v14[0] = v23;
        v14[1] = v24;
        v14[2] = v25;
        v14[3] = v26;
        [(TSDMetalMotionBlurEffect *)metalMotionBlurEffect adjustTransformForMotionBlurBuffer:v14];
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
      }

      v27 = v19;
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v23 = v15;
      v24 = v16;
      v25 = v17;
      v26 = v18;
    }

    v10 = v28;
    *&self->_baseTransform.m31 = v27;
    *&self->_baseTransform.m33 = v10;
    v11 = v30;
    *&self->_baseTransform.m41 = v29;
    *&self->_baseTransform.m43 = v11;
    v12 = v24;
    *&self->_baseTransform.m11 = v23;
    *&self->_baseTransform.m13 = v12;
    v13 = v26;
    *&self->_baseTransform.m21 = v25;
    *&self->_baseTransform.m23 = v13;
    self->_isMetalSetupComplete = 1;
  }
}

- (void)metalPrepareAnimationWithContext:(id)context
{
  contextCopy = context;
  animatedBuild = [contextCopy animatedBuild];
  attributes = [animatedBuild attributes];
  v6 = [attributes objectForKeyedSubscript:@"KNBuildCustomAttributesShine"];
  LOBYTE(self->_scaleMin) = [v6 BOOLValue];

  [(KNBuildFromDarkness *)self p_metalSetupWithContext:contextCopy];
  if (LOBYTE(self->_scaleMin) != 1 || ([contextCopy animatedBuild], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isBuildIn"), v7, v8))
  {
    [(KNBuildFromDarkness *)self p_setupMetalEdgeDistanceTextureWithContext:contextCopy];
  }
}

- (void)metalAnimationWillBeginWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildFromDarkness *)self metalPrepareAnimationWithContext:contextCopy];
  [(KNBuildFromDarkness *)self metalAnimationHasBegunWithContext:contextCopy];
}

- (void)metalAnimationHasBegunWithContext:(id)context
{
  contextCopy = context;
  animatedBuild = [contextCopy animatedBuild];
  isBuildOut = [animatedBuild isBuildOut];

  if (isBuildOut)
  {
    [(KNBuildFromDarkness *)self p_setupMetalEdgeDistanceTextureWithContext:contextCopy];
  }
}

- (void)metalRenderFrameWithContext:(id)context
{
  contextCopy = context;
  metalContext = [contextCopy metalContext];
  renderEncoder = [metalContext renderEncoder];
  if (!renderEncoder)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[KNBuildFromDarkness metalRenderFrameWithContext:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFromDarkness.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:581 description:{@"invalid nil value for '%s'", "workingEncoder"}];
  }

  if (BYTE1(self->_scaleMin) == 1)
  {
    v9 = [(TSDMetalMotionBlurEffect *)self->_metalMotionBlurEffect bindColorAndVelocityWithMetalContext:metalContext shouldFillBackground:0];

    renderEncoder = v9;
  }

  textures = [contextCopy textures];
  lastObject = [textures lastObject];
  v12 = [lastObject metalTextureWithContext:metalContext];

  if (v12 && self->_edgeDistanceTexture)
  {
    [(KNBuildFromDarkness *)self p_drawWithContext:contextCopy];
    metalShader = self->_metalShader;
    if (LOBYTE(self->_scaleMin) == 1)
    {
      v14 = BYTE1(self->_scaleMin) ? &OBJC_IVAR___KNBuildFromDarkness__vertexInputMB : &OBJC_IVAR___KNBuildFromDarkness__vertexInput;
      [(TSDMetalShader *)metalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self + *v14 fragmentBytes:&self->_anon_200[7]];
      [renderEncoder setFragmentTexture:self->_edgeDistanceTexture atIndex:1];
    }

    else
    {
      v15 = BYTE1(self->_scaleMin) ? 320 : 256;
      [(TSDMetalShader *)metalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self + v15 fragmentBytes:&self->_edgeTextureName];
    }

    [renderEncoder setFragmentTexture:v12 atIndex:0];
    [(TSDMTLDataBuffer *)self->_mtlDataBuffer drawWithEncoder:renderEncoder atIndex:[(TSDMetalShader *)self->_metalShader bufferIndex]];
    if (BYTE1(self->_scaleMin) == 1)
    {
      metalMotionBlurEffect = self->_metalMotionBlurEffect;
      renderEncoder2 = [metalContext renderEncoder];
      [(TSDMetalMotionBlurEffect *)metalMotionBlurEffect drawResultWithWorkingRenderEncoder:renderEncoder destinationRenderEncoder:renderEncoder2];
    }
  }
}

- (void)metalTeardownAnimationsWithContext:(id)context
{
  metalShader = self->_metalShader;
  self->_metalShader = 0;

  mtlDataBuffer = self->_mtlDataBuffer;
  self->_mtlDataBuffer = 0;

  metalMotionBlurEffect = self->_metalMotionBlurEffect;
  self->_metalMotionBlurEffect = 0;

  edgeDistanceTexture = self->_edgeDistanceTexture;
  self->_edgeDistanceTexture = 0;

  self->_isMetalSetupComplete = 0;
}

@end