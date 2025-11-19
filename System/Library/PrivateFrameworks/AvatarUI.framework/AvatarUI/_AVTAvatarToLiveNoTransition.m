@interface _AVTAvatarToLiveNoTransition
- (_AVTAvatarToLiveNoTransition)initWithModel:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5 logger:(id)a6;
- (void)_startTransition;
@end

@implementation _AVTAvatarToLiveNoTransition

- (_AVTAvatarToLiveNoTransition)initWithModel:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5 logger:(id)a6
{
  v8 = a4;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = _AVTAvatarToLiveNoTransition;
  v12 = [(AVTTransition *)&v15 initWithModel:v11 animated:v8 setupHandler:0 completionHandler:a5 logger:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarTransitionModel, a3);
  }

  return v13;
}

- (void)_startTransition
{
  v3 = [(_AVTAvatarToLiveNoTransition *)self avatarTransitionModel];
  [v3 transitionLiveViewToFront];

  v4 = [(_AVTAvatarToLiveNoTransition *)self avatarTransitionModel];
  [v4 applyFullAlpha];

  v5 = [(AVTTransition *)self completionHandler];
  v5[2](v5, 1);
}

@end