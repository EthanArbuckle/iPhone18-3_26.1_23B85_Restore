@interface _AVTAvatarToStaticNoTransition
- (_AVTAvatarToStaticNoTransition)initWithModel:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5 logger:(id)a6;
- (void)performTransition;
@end

@implementation _AVTAvatarToStaticNoTransition

- (_AVTAvatarToStaticNoTransition)initWithModel:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5 logger:(id)a6
{
  v8 = a4;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = _AVTAvatarToStaticNoTransition;
  v12 = [(AVTTransition *)&v15 initWithModel:v11 animated:v8 setupHandler:0 completionHandler:a5 logger:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarTransitionModel, a3);
  }

  return v13;
}

- (void)performTransition
{
  v3 = [(_AVTAvatarToStaticNoTransition *)self avatarTransitionModel];
  [v3 transitionStaticViewToFront];

  v4 = [(_AVTAvatarToStaticNoTransition *)self avatarTransitionModel];
  [v4 applyBaseAlpha];

  v5 = [(AVTTransition *)self completionHandler];
  v5[2](v5, 1);
}

@end