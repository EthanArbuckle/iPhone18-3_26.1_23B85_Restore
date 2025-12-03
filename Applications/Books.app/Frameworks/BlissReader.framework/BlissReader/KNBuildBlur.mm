@interface KNBuildBlur
+ (id)defaultAttributes;
+ (id)localizedMenuString:(int)string;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
- (CGRect)frameOfEffectWithContext:(id)context;
- (KNBuildBlur)initWithAnimationContext:(id)context;
- (void)animationDidEndWithContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)metalAnimationDidEndWithContext:(id)context;
- (void)metalAnimationHasBegunWithContext:(id)context;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
- (void)metalTeardownAnimationsWithContext:(id)context;
- (void)p_prepareAnimationWithContext:(id)context;
- (void)p_setupMVPMatricesWithContext:(id)context;
- (void)p_teardownBlurEffects;
- (void)teardown;
@end

@implementation KNBuildBlur

+ (id)localizedMenuString:(int)string
{
  v3 = KNBundle();
  v4 = [v3 localizedStringForKey:@"Blur *BlurBuild*" value:@"Blur" table:@"Keynote"];

  return v4;
}

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49CFB0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
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

- (KNBuildBlur)initWithAnimationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = KNBuildBlur;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:context];
  if (v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"Blur" ofType:@"parameterGroup"];

    v6 = [KNAnimParameterGroup parameterGroupForFile:v5];
    parameterGroup = v3->_parameterGroup;
    v3->_parameterGroup = v6;
  }

  return v3;
}

- (void)teardown
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_blurEffects;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) teardown];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  blurEffects = self->_blurEffects;
  self->_blurEffects = 0;
}

- (CGRect)frameOfEffectWithContext:(id)context
{
  [context drawableFrame];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  CGRectGetMinX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMinY(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMaxX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetMaxY(v23);
  TSDRectWithPoints();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v27.origin.x = v16;
  v27.origin.y = v17;
  v27.size.width = v18;
  v27.size.height = v19;
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v25 = CGRectIntersection(v24, v27);
  result = CGRectIntegral(v25);
  self->_animationRect = result;
  self->_drawableFrame.origin.x = x;
  self->_drawableFrame.origin.y = y;
  self->_drawableFrame.size.width = width;
  self->_drawableFrame.size.height = height;
  return result;
}

- (void)p_setupMVPMatricesWithContext:(id)context
{
  textures = [context textures];
  firstObject = [textures firstObject];

  [firstObject frameOnCanvas];
  v7 = v6 - CGRectGetMinX(self->_animationRect);
  [firstObject frameOnCanvas];
  v9 = v8;
  [firstObject frame];
  v11 = v9 + v10 - CGRectGetMaxY(self->_animationRect);
  CGRectGetWidth(self->_animationRect);
  CGRectGetHeight(self->_animationRect);
  height = self->_animationRect.size.height;
  [(KNAnimationContext *)self->super.mAnimationContext fieldOfViewInRadians];
  v14 = tan(v13 * 0.5);
  v15 = height / (v14 + v14);
  memset(&v25, 0, sizeof(v25));
  [(KNAnimationContext *)self->super.mAnimationContext fieldOfViewInRadians];
  TSDTransform3DMakeProjection();
  memset(&v24, 0, sizeof(v24));
  CATransform3DMakeTranslation(&v24, self->_animationRect.size.width * -0.5, self->_animationRect.size.height * -0.5, -v15);
  memset(&v23, 0, sizeof(v23));
  CATransform3DMakeTranslation(&v23, v7, -v11, 0.0);
  self = (self + 152);
  a = v24;
  v20 = v25;
  CATransform3DConcat(&b, &a, &v20);
  v20 = v23;
  CATransform3DConcat(&a, &v20, &b);
  v16 = *&a.m33;
  *&self->_anon_30[16] = *&a.m31;
  *&self->_anon_30[32] = v16;
  v17 = *&a.m43;
  *&self->_anon_30[48] = *&a.m41;
  *&self->_anon_30[64] = v17;
  v18 = *&a.m13;
  self->super = *&a.m11;
  *&self->_parameterGroup = v18;
  v19 = *&a.m23;
  *&self->_metalShader = *&a.m21;
  *self->_anon_30 = v19;
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildBlur *)self frameOfEffectWithContext:contextCopy];
  [(KNBuildBlur *)self metalPrepareAnimationWithContext:contextCopy];
  [(KNBuildBlur *)self metalAnimationHasBegunWithContext:contextCopy];
}

- (void)animationDidEndWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildBlur *)self metalAnimationDidEndWithContext:contextCopy];
  [(KNBuildBlur *)self metalTeardownAnimationsWithContext:contextCopy];
}

- (void)p_prepareAnimationWithContext:(id)context
{
  contextCopy = context;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_drawableFrame.origin.x = v5;
  self->_drawableFrame.origin.y = v6;
  self->_drawableFrame.size.width = v7;
  self->_drawableFrame.size.height = v8;
  size = self->_drawableFrame.size;
  self->_animationRect.origin = self->_drawableFrame.origin;
  self->_animationRect.size = size;
  p_projectionMatrix = &self->_projectionMatrix;
  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:contextCopy];
  v11 = v61;
  *&self->_projectionMatrix.m31 = v60;
  *&self->_projectionMatrix.m33 = v11;
  v12 = v63;
  *&self->_projectionMatrix.m41 = v62;
  *&self->_projectionMatrix.m43 = v12;
  v13 = v57;
  *&self->_projectionMatrix.m11 = v56;
  *&self->_projectionMatrix.m13 = v13;
  v14 = v59;
  *&self->_projectionMatrix.m21 = v58;
  *&self->_projectionMatrix.m23 = v14;
  metalContext = [contextCopy metalContext];
  device = [metalContext device];
  v17 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v17 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v17 setBlendingEnabled:1];
  [v17 setDestinationRGBBlendFactor:5];
  [v17 setDestinationAlphaBlendFactor:5];
  v47 = v17;
  v48 = device;
  v18 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"KNBuildBlurVertexShader" fragmentShader:@"KNBuildBlurFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v17];
  metalShader = self->_metalShader;
  self->_metalShader = v18;

  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m21), *&self->_projectionMatrix.m23);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m31), *&self->_projectionMatrix.m33);
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m41), *&self->_projectionMatrix.m43);
  *self->_anon_30 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m11), *&self->_projectionMatrix.m13);
  *&self->_anon_30[16] = v20;
  *&self->_anon_30[32] = v21;
  *&self->_anon_30[48] = v22;
  v51 = contextCopy;
  textures = [contextCopy textures];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Steps"];
  v25 = v24;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Radius Max"];
  v27 = v26;
  selfCopy = self;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Half Size Radius Every"];
  v30 = v29;
  v31 = +[NSMutableArray array];
  v49 = metalContext;
  commandQueue = [metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = textures;
  v33 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = fmax(v25, 1.0);
    v36 = *v53;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v52 + 1) + 8 * i);
        v39 = [[KNGaussianBlurEffect alloc] initWithContext:v51];
        v40 = *&p_projectionMatrix->m33;
        v60 = *&p_projectionMatrix->m31;
        v61 = v40;
        v41 = *&p_projectionMatrix->m43;
        v62 = *&p_projectionMatrix->m41;
        v63 = v41;
        v42 = *&p_projectionMatrix->m13;
        v56 = *&p_projectionMatrix->m11;
        v57 = v42;
        v43 = *&p_projectionMatrix->m23;
        v58 = *&p_projectionMatrix->m21;
        v59 = v43;
        [(KNGaussianBlurEffect *)v39 setMVPMatrix:&v56];
        [(KNGaussianBlurEffect *)v39 setTexture:v38];
        [v38 singleTextureOpacity];
        [(KNGaussianBlurEffect *)v39 setOpacity:?];
        [(KNGaussianBlurEffect *)v39 setupEffectIfNecessary];
        capabilities = [(KNAnimationContext *)selfCopy->super.mAnimationContext capabilities];
        [(KNGaussianBlurEffect *)v39 createBlurTexturesWithBlurSteps:v35 maxBlurRadius:commandBuffer stepsToDecreaseRadius:capabilities commandBuffer:v27 capabilities:v30];

        [(NSMutableArray *)v31 addObject:v39];
      }

      v34 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v34);
  }

  [commandBuffer commit];
  blurEffects = selfCopy->_blurEffects;
  selfCopy->_blurEffects = v31;
}

- (void)metalPrepareAnimationWithContext:(id)context
{
  contextCopy = context;
  animatedBuild = [contextCopy animatedBuild];
  isBuildIn = [animatedBuild isBuildIn];

  if (isBuildIn)
  {
    [(KNBuildBlur *)self p_prepareAnimationWithContext:contextCopy];
  }
}

- (void)metalAnimationHasBegunWithContext:(id)context
{
  contextCopy = context;
  animatedBuild = [contextCopy animatedBuild];
  isBuildOut = [animatedBuild isBuildOut];

  if (isBuildOut)
  {
    [(KNBuildBlur *)self p_prepareAnimationWithContext:contextCopy];
  }
}

- (void)metalRenderFrameWithContext:(id)context
{
  contextCopy = context;
  [contextCopy percent];
  v6 = v5;
  animatedBuild = [contextCopy animatedBuild];
  isBuildIn = [animatedBuild isBuildIn];

  if (isBuildIn)
  {
    v6 = 1.0 - v6;
  }

  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Opacity Fade" atPercent:v6];
  v10 = v9;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Blur Radius Curve" atPercent:sqrt(v6)];
  v12 = v11;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_blurEffects;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 1.0 - v10;
    v17 = *v25;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        texture = [v19 texture];
        [texture singleTextureOpacity];
        v22 = v21;

        [v19 setOpacity:v16 * v22];
        metalContext = [contextCopy metalContext];
        [v19 renderEffectAtPercent:metalContext withContext:v12];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)p_teardownBlurEffects
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_blurEffects;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) teardown];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  blurEffects = self->_blurEffects;
  self->_blurEffects = 0;
}

- (void)metalAnimationDidEndWithContext:(id)context
{
  animatedBuild = [context animatedBuild];
  isBuildOut = [animatedBuild isBuildOut];

  if (isBuildOut)
  {

    [(KNBuildBlur *)self p_teardownBlurEffects];
  }
}

- (void)metalTeardownAnimationsWithContext:(id)context
{
  if (self->_blurEffects)
  {
    [(KNBuildBlur *)self p_teardownBlurEffects];
  }
}

@end