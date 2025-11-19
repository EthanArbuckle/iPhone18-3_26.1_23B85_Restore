@interface KNBuildWipe
- (void)animationWillBeginWithContext:(id)a3;
- (void)metalAnimationWillBeginWithContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)renderFrameWithContext:(id)a3;
@end

@implementation KNBuildWipe

- (void)animationWillBeginWithContext:(id)a3
{
  self->super._isBuildOut = [objc_msgSend(a3 "animatedBuild")] ^ 1;
  v5.receiver = self;
  v5.super_class = KNBuildWipe;
  [(KNWipeBase *)&v5 animationWillBeginWithContext:a3];
}

- (void)renderFrameWithContext:(id)a3
{
  v3.receiver = self;
  v3.super_class = KNBuildWipe;
  [(KNWipeBase *)&v3 renderFrameWithContext:a3];
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  self->super._isBuildOut = [objc_msgSend(a3 "animatedBuild")] ^ 1;

  [(KNBuildWipe *)self animationWillBeginWithContext:a3];
}

- (void)metalAnimationWillBeginWithContext:(id)a3
{
  if (self)
  {
    [(KNAnimationEffect *)self mvpMatrixWithContext:a3];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
  }

  mWipeDataBuffer = self->super.mWipeDataBuffer;
  v5[4] = v10;
  v5[5] = v11;
  v5[6] = v12;
  v5[7] = v13;
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  [(KNWipeDataBuffer *)mWipeDataBuffer setMVPMatrix:v5];
}

@end