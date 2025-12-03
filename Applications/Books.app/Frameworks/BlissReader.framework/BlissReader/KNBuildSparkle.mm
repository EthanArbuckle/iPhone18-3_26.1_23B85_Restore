@interface KNBuildSparkle
+ (id)defaultAttributes;
- (CGRect)frameOfEffectWithContext:(id)context;
- (CGRect)frameOfEffectWithFrame:(CGRect)frame context:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
@end

@implementation KNBuildSparkle

+ (id)defaultAttributes
{
  v3 = @"KNBuildAttributesDuration";
  v4 = &off_49CFE0;
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (CGRect)frameOfEffectWithFrame:(CGRect)frame context:(id)context
{
  [context drawableFrame];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  self->_drawableFrame = v9;
  CGRectGetMinX(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetMinY(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMaxX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMaxY(v12);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinY(v13);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxY(v14);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinX(v15);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxX(v16);
  self = (self + 184);
  TSDRectWithPoints();
  *&self->super.super.isa = v17;
  result = CGRectIntegral(v17);
  *&self->super.super.isa = result;
  return result;
}

- (CGRect)frameOfEffectWithContext:(id)context
{
  [objc_msgSend(objc_msgSend(context "textures")];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  self->_drawableFrame = v8;
  CGRectGetMinX(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetMinY(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetMaxX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMaxY(v11);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinY(v12);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxY(v13);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinX(v14);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxX(v15);
  self = (self + 184);
  TSDRectWithPoints();
  *&self->super.super.isa = v16;
  result = CGRectIntegral(v16);
  *&self->super.super.isa = result;
  return result;
}

- (void)animationWillBeginWithContext:(id)context
{
  textures = [context textures];
  animatedBuild = [context animatedBuild];
  [objc_msgSend(textures objectAtIndexedSubscript:{0), "frame"}];
  [(KNBuildSparkle *)self frameOfEffectWithFrame:context context:?];
  if ([textures count] != &dword_0 + 1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  direction = [animatedBuild direction];
  lastObject = [textures lastObject];
  if (self)
  {
    [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:context];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  v9 = v33;
  *&self->_baseTransform.m31 = v32;
  *&self->_baseTransform.m33 = v9;
  v10 = v35;
  *&self->_baseTransform.m41 = v34;
  *&self->_baseTransform.m43 = v10;
  v11 = v29;
  *&self->_baseTransform.m11 = v28;
  *&self->_baseTransform.m13 = v11;
  v12 = v31;
  *&self->_baseTransform.m21 = v30;
  *&self->_baseTransform.m23 = v12;
  v13 = [KNSparkleEffect alloc];
  mAnimationContext = self->super.mAnimationContext;
  [animatedBuild duration];
  v16 = v15;
  buildType = [animatedBuild buildType];
  metalContext = [context metalContext];
  randomGenerator = [context randomGenerator];
  x = self->_frameRect.origin.x;
  y = self->_frameRect.origin.y;
  width = self->_frameRect.size.width;
  height = self->_frameRect.size.height;
  v24 = *&self->_baseTransform.m33;
  v32 = *&self->_baseTransform.m31;
  v33 = v24;
  v25 = *&self->_baseTransform.m43;
  v34 = *&self->_baseTransform.m41;
  v35 = v25;
  v26 = *&self->_baseTransform.m13;
  v28 = *&self->_baseTransform.m11;
  v29 = v26;
  v27 = *&self->_baseTransform.m23;
  v30 = *&self->_baseTransform.m21;
  v31 = v27;
  self->_effect = [(KNSparkleEffect *)v13 initWithAnimationContext:mAnimationContext texture:lastObject destinationRect:&v28 translate:direction duration:buildType direction:metalContext buildType:x metalContext:y randomGenerator:width, height, v16, randomGenerator];
}

- (void)metalPrepareAnimationWithContext:(id)context
{
  [context drawableFrame];
  self->_drawableFrame.origin.x = v5;
  self->_drawableFrame.origin.y = v6;
  self->_drawableFrame.size.width = v7;
  self->_drawableFrame.size.height = v8;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_frameRect.origin.x = v9;
  self->_frameRect.origin.y = v10;
  self->_frameRect.size.width = v11;
  self->_frameRect.size.height = v12;

  [(KNBuildSparkle *)self animationWillBeginWithContext:context];
}

- (void)metalRenderFrameWithContext:(id)context
{
  effect = self->_effect;
  [context percent];
  v6 = v5;
  metalContext = [context metalContext];

  [(KNSparkleEffect *)effect renderEffectAtPercent:metalContext withContext:v6];
}

@end