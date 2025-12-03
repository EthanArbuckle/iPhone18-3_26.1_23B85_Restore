@interface _AVTAvatarToStaticNoTransition
- (_AVTAvatarToStaticNoTransition)initWithModel:(id)model animated:(BOOL)animated completionHandler:(id)handler logger:(id)logger;
- (void)performTransition;
@end

@implementation _AVTAvatarToStaticNoTransition

- (_AVTAvatarToStaticNoTransition)initWithModel:(id)model animated:(BOOL)animated completionHandler:(id)handler logger:(id)logger
{
  animatedCopy = animated;
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = _AVTAvatarToStaticNoTransition;
  v12 = [(AVTTransition *)&v15 initWithModel:modelCopy animated:animatedCopy setupHandler:0 completionHandler:handler logger:logger];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarTransitionModel, model);
  }

  return v13;
}

- (void)performTransition
{
  avatarTransitionModel = [(_AVTAvatarToStaticNoTransition *)self avatarTransitionModel];
  [avatarTransitionModel transitionStaticViewToFront];

  avatarTransitionModel2 = [(_AVTAvatarToStaticNoTransition *)self avatarTransitionModel];
  [avatarTransitionModel2 applyBaseAlpha];

  completionHandler = [(AVTTransition *)self completionHandler];
  completionHandler[2](completionHandler, 1);
}

@end