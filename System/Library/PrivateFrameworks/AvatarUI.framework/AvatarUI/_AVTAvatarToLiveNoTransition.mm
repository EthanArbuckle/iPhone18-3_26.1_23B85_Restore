@interface _AVTAvatarToLiveNoTransition
- (_AVTAvatarToLiveNoTransition)initWithModel:(id)model animated:(BOOL)animated completionHandler:(id)handler logger:(id)logger;
- (void)_startTransition;
@end

@implementation _AVTAvatarToLiveNoTransition

- (_AVTAvatarToLiveNoTransition)initWithModel:(id)model animated:(BOOL)animated completionHandler:(id)handler logger:(id)logger
{
  animatedCopy = animated;
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = _AVTAvatarToLiveNoTransition;
  v12 = [(AVTTransition *)&v15 initWithModel:modelCopy animated:animatedCopy setupHandler:0 completionHandler:handler logger:logger];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarTransitionModel, model);
  }

  return v13;
}

- (void)_startTransition
{
  avatarTransitionModel = [(_AVTAvatarToLiveNoTransition *)self avatarTransitionModel];
  [avatarTransitionModel transitionLiveViewToFront];

  avatarTransitionModel2 = [(_AVTAvatarToLiveNoTransition *)self avatarTransitionModel];
  [avatarTransitionModel2 applyFullAlpha];

  completionHandler = [(AVTTransition *)self completionHandler];
  completionHandler[2](completionHandler, 1);
}

@end