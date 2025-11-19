@interface KNBuildIris
- (CGRect)frameOfEffectWithContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)metalAnimationWillBeginWithContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)renderFrameWithContext:(id)a3;
@end

@implementation KNBuildIris

- (CGRect)frameOfEffectWithContext:(id)a3
{
  [a3 drawableFrame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)animationWillBeginWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 animatedBuild];
  self->super._isBuildOut = [v5 isBuildIn] ^ 1;

  v6.receiver = self;
  v6.super_class = KNBuildIris;
  [(KNIrisBase *)&v6 animationWillBeginWithContext:v4];
  [(KNBuildIris *)self metalAnimationWillBeginWithContext:v4];
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 animatedBuild];
  self->super._isBuildOut = [v5 isBuildIn] ^ 1;

  v6.receiver = self;
  v6.super_class = KNBuildIris;
  [(KNIrisBase *)&v6 animationWillBeginWithContext:v4];
}

- (void)metalAnimationWillBeginWithContext:(id)a3
{
  [(KNAnimationEffect *)self mvpMatrixWithContext:a3];
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
  v5 = &self->super._anon_40[32];
  v6 = &self->super._anon_130[32];
  v7 = 3;
  do
  {
    *(v5 - 2) = v4;
    *(v5 - 1) = v4;
    *v5 = v4;
    *(v5 + 1) = v4;
    v5 += 80;
    *(v6 - 2) = v4;
    *(v6 - 1) = v4;
    *v6 = v4;
    *(v6 + 1) = v4;
    v6 += 80;
    --v7;
  }

  while (v7);
  *self->super._anon_280 = v4;
  *&self->super._anon_280[16] = v4;
  *&self->super._anon_280[32] = v4;
  *&self->super._anon_280[48] = v4;
}

- (void)renderFrameWithContext:(id)a3
{
  v3.receiver = self;
  v3.super_class = KNBuildIris;
  [(KNIrisBase *)&v3 renderFrameWithContext:a3];
}

@end