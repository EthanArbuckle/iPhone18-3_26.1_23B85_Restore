@interface KNTransitionWipe
- (void)animationWillBeginWithContext:(id)context;
- (void)renderFrameWithContext:(id)context;
@end

@implementation KNTransitionWipe

- (void)animationWillBeginWithContext:(id)context
{
  p_frameRect = &self->super._frameRect;
  [(KNAnimationContext *)self->super.super.mAnimationContext slideRect];
  p_frameRect->origin.x = v6;
  p_frameRect->origin.y = v7;
  p_frameRect->size.width = v8;
  p_frameRect->size.height = v9;
  v10.receiver = self;
  v10.super_class = KNTransitionWipe;
  [(KNWipeBase *)&v10 animationWillBeginWithContext:context];
}

- (void)renderFrameWithContext:(id)context
{
  v3.receiver = self;
  v3.super_class = KNTransitionWipe;
  [(KNWipeBase *)&v3 renderFrameWithContext:context];
}

@end