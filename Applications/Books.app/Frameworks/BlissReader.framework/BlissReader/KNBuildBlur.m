@interface KNBuildBlur
+ (id)defaultAttributes;
+ (id)localizedMenuString:(int)a3;
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
- (CGRect)frameOfEffectWithContext:(id)a3;
- (KNBuildBlur)initWithAnimationContext:(id)a3;
- (void)animationDidEndWithContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)metalAnimationDidEndWithContext:(id)a3;
- (void)metalAnimationHasBegunWithContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)metalRenderFrameWithContext:(id)a3;
- (void)metalTeardownAnimationsWithContext:(id)a3;
- (void)p_prepareAnimationWithContext:(id)a3;
- (void)p_setupMVPMatricesWithContext:(id)a3;
- (void)p_teardownBlurEffects;
- (void)teardown;
@end

@implementation KNBuildBlur

+ (id)localizedMenuString:(int)a3
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

+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8
{
  if (a7)
  {
    v8 = *&a6;
    *a4 = @"apple:dissolve";
    v13 = KNBundle();
    v11 = [v13 localizedStringForKey:@"%@ builds were exported as Dissolve." value:&stru_471858 table:@"Keynote"];
    v12 = [a1 localizedMenuString:v8];
    *a5 = [NSString stringWithFormat:v11, v12];
  }
}

- (KNBuildBlur)initWithAnimationContext:(id)a3
{
  v9.receiver = self;
  v9.super_class = KNBuildBlur;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:a3];
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

- (CGRect)frameOfEffectWithContext:(id)a3
{
  [a3 drawableFrame];
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

- (void)p_setupMVPMatricesWithContext:(id)a3
{
  v4 = [a3 textures];
  v5 = [v4 firstObject];

  [v5 frameOnCanvas];
  v7 = v6 - CGRectGetMinX(self->_animationRect);
  [v5 frameOnCanvas];
  v9 = v8;
  [v5 frame];
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

- (void)animationWillBeginWithContext:(id)a3
{
  v4 = a3;
  [(KNBuildBlur *)self frameOfEffectWithContext:v4];
  [(KNBuildBlur *)self metalPrepareAnimationWithContext:v4];
  [(KNBuildBlur *)self metalAnimationHasBegunWithContext:v4];
}

- (void)animationDidEndWithContext:(id)a3
{
  v4 = a3;
  [(KNBuildBlur *)self metalAnimationDidEndWithContext:v4];
  [(KNBuildBlur *)self metalTeardownAnimationsWithContext:v4];
}

- (void)p_prepareAnimationWithContext:(id)a3
{
  v4 = a3;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_drawableFrame.origin.x = v5;
  self->_drawableFrame.origin.y = v6;
  self->_drawableFrame.size.width = v7;
  self->_drawableFrame.size.height = v8;
  size = self->_drawableFrame.size;
  self->_animationRect.origin = self->_drawableFrame.origin;
  self->_animationRect.size = size;
  p_projectionMatrix = &self->_projectionMatrix;
  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:v4];
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
  v15 = [v4 metalContext];
  v16 = [v15 device];
  v17 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v17 setPixelFormat:objc_msgSend(v15, "pixelFormat")];
  [v17 setBlendingEnabled:1];
  [v17 setDestinationRGBBlendFactor:5];
  [v17 setDestinationAlphaBlendFactor:5];
  v47 = v17;
  v48 = v16;
  v18 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"KNBuildBlurVertexShader" fragmentShader:@"KNBuildBlurFragmentShader" device:v16 library:@"KeynoteMetalLibrary" colorAttachment:v17];
  metalShader = self->_metalShader;
  self->_metalShader = v18;

  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m21), *&self->_projectionMatrix.m23);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m31), *&self->_projectionMatrix.m33);
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m41), *&self->_projectionMatrix.m43);
  *self->_anon_30 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m11), *&self->_projectionMatrix.m13);
  *&self->_anon_30[16] = v20;
  *&self->_anon_30[32] = v21;
  *&self->_anon_30[48] = v22;
  v51 = v4;
  v23 = [v4 textures];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Steps"];
  v25 = v24;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Radius Max"];
  v27 = v26;
  v28 = self;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Half Size Radius Every"];
  v30 = v29;
  v31 = +[NSMutableArray array];
  v49 = v15;
  v46 = [v15 commandQueue];
  v32 = [v46 commandBuffer];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v23;
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
        v44 = [(KNAnimationContext *)v28->super.mAnimationContext capabilities];
        [(KNGaussianBlurEffect *)v39 createBlurTexturesWithBlurSteps:v35 maxBlurRadius:v32 stepsToDecreaseRadius:v44 commandBuffer:v27 capabilities:v30];

        [(NSMutableArray *)v31 addObject:v39];
      }

      v34 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v34);
  }

  [v32 commit];
  blurEffects = v28->_blurEffects;
  v28->_blurEffects = v31;
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  v6 = a3;
  v4 = [v6 animatedBuild];
  v5 = [v4 isBuildIn];

  if (v5)
  {
    [(KNBuildBlur *)self p_prepareAnimationWithContext:v6];
  }
}

- (void)metalAnimationHasBegunWithContext:(id)a3
{
  v6 = a3;
  v4 = [v6 animatedBuild];
  v5 = [v4 isBuildOut];

  if (v5)
  {
    [(KNBuildBlur *)self p_prepareAnimationWithContext:v6];
  }
}

- (void)metalRenderFrameWithContext:(id)a3
{
  v4 = a3;
  [v4 percent];
  v6 = v5;
  v7 = [v4 animatedBuild];
  v8 = [v7 isBuildIn];

  if (v8)
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
        v20 = [v19 texture];
        [v20 singleTextureOpacity];
        v22 = v21;

        [v19 setOpacity:v16 * v22];
        v23 = [v4 metalContext];
        [v19 renderEffectAtPercent:v23 withContext:v12];
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

- (void)metalAnimationDidEndWithContext:(id)a3
{
  v4 = [a3 animatedBuild];
  v5 = [v4 isBuildOut];

  if (v5)
  {

    [(KNBuildBlur *)self p_teardownBlurEffects];
  }
}

- (void)metalTeardownAnimationsWithContext:(id)a3
{
  if (self->_blurEffects)
  {
    [(KNBuildBlur *)self p_teardownBlurEffects];
  }
}

@end