@interface KNBuildShimmer
+ (id)localizedMenuString:(int)a3;
- (CGRect)frameOfEffectWithContext:(id)a3;
- (void)animationDidEndWithContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)metalRenderFrameWithContext:(id)a3;
@end

@implementation KNBuildShimmer

+ (id)localizedMenuString:(int)a3
{
  v3 = KNBundle();
  v4 = [v3 localizedStringForKey:@"Shimmer *Shimmer Build*" value:@"Shimmer" table:@"Keynote"];

  return v4;
}

- (CGRect)frameOfEffectWithContext:(id)a3
{
  [a3 drawableFrame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  self->_drawableFrame = v16;
  CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectGetMinY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGRectGetMaxX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetMaxY(v19);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  TSDRectWithPoints();
  self->_frameRect.origin.x = v8;
  self->_frameRect.origin.y = v9;
  self->_frameRect.size.width = v10;
  self->_frameRect.size.height = v11;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v22.origin.x = v12;
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  v20 = CGRectIntersection(self->_frameRect, v22);
  self->_frameRect = v20;
  result = CGRectIntegral(v20);
  self->_frameRect = result;
  return result;
}

- (void)animationWillBeginWithContext:(id)a3
{
  v4 = a3;
  [(KNBuildShimmer *)self metalPrepareAnimationWithContext:v4];
  v5 = [v4 textures];
  if ([v5 count] != &dword_0 + 1)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[KNBuildShimmer animationWillBeginWithContext:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildShimmer.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:151 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(v5, "count")}];
  }

  v9 = [v4 animatedBuild];
  v33 = [v4 direction];
  v32 = [v5 lastObject];
  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:v4];
  v10 = v39;
  *&self->_baseTransform.m31 = v38;
  *&self->_baseTransform.m33 = v10;
  v11 = v41;
  *&self->_baseTransform.m41 = v40;
  *&self->_baseTransform.m43 = v11;
  v12 = v35;
  *&self->_baseTransform.m11 = v34;
  *&self->_baseTransform.m13 = v12;
  v13 = v37;
  *&self->_baseTransform.m21 = v36;
  *&self->_baseTransform.m23 = v13;
  v14 = [KNShimmerEffect alloc];
  mAnimationContext = self->super.mAnimationContext;
  [v9 duration];
  v17 = v16;
  v18 = [v9 buildType];
  [v4 metalContext];
  v19 = v31 = v5;
  v20 = [v4 randomGenerator];
  x = self->_frameRect.origin.x;
  y = self->_frameRect.origin.y;
  width = self->_frameRect.size.width;
  height = self->_frameRect.size.height;
  v25 = *&self->_baseTransform.m33;
  v38 = *&self->_baseTransform.m31;
  v39 = v25;
  v26 = *&self->_baseTransform.m43;
  v40 = *&self->_baseTransform.m41;
  v41 = v26;
  v27 = *&self->_baseTransform.m13;
  v34 = *&self->_baseTransform.m11;
  v35 = v27;
  v28 = *&self->_baseTransform.m23;
  v36 = *&self->_baseTransform.m21;
  v37 = v28;
  v29 = [(KNShimmerEffect *)v14 initWithAnimationContext:mAnimationContext texture:v32 destinationRect:&v34 translate:v33 duration:v18 direction:v19 buildType:x metalContext:y randomGenerator:width, height, v17, v20];
  effect = self->_effect;
  self->_effect = v29;
}

- (void)animationDidEndWithContext:(id)a3
{
  [(KNShimmerEffect *)self->_effect teardown];
  effect = self->_effect;
  self->_effect = 0;
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  [a3 drawableFrame];
  self->_drawableFrame.origin.x = v4;
  self->_drawableFrame.origin.y = v5;
  self->_drawableFrame.size.width = v6;
  self->_drawableFrame.size.height = v7;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_frameRect.origin.x = v8;
  self->_frameRect.origin.y = v9;
  self->_frameRect.size.width = v10;
  self->_frameRect.size.height = v11;
}

- (void)metalRenderFrameWithContext:(id)a3
{
  effect = self->_effect;
  v4 = a3;
  [v4 percent];
  v6 = v5;
  v7 = [v4 metalContext];

  [(KNShimmerEffect *)effect renderEffectAtPercent:v7 withContext:v6];
}

@end