@interface AVTAvatarToLiveTransition
- (AVTAvatarToLiveTransition)initWithModel:(id)model animated:(BOOL)animated setupHandler:(id)handler completionHandler:(id)completionHandler logger:(id)logger;
- (void)performTransition;
@end

@implementation AVTAvatarToLiveTransition

- (AVTAvatarToLiveTransition)initWithModel:(id)model animated:(BOOL)animated setupHandler:(id)handler completionHandler:(id)completionHandler logger:(id)logger
{
  animatedCopy = animated;
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = AVTAvatarToLiveTransition;
  v14 = [(AVTTransition *)&v17 initWithModel:modelCopy animated:animatedCopy setupHandler:handler completionHandler:completionHandler logger:logger];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_avatarTransitionModel, model);
  }

  return v15;
}

- (void)performTransition
{
  logger = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [logger logPerformTransition:v4];

  avatarTransitionModel = [(AVTAvatarToLiveTransition *)self avatarTransitionModel];
  liveView = [avatarTransitionModel liveView];

  avatar = [liveView avatar];

  if (!avatar)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't perform transition without an AVTView with an avatar"];
  }

  avatarTransitionModel2 = [(AVTAvatarToLiveTransition *)self avatarTransitionModel];
  [avatarTransitionModel2 transitionLiveViewToFront];

  avatarTransitionModel3 = [(AVTAvatarToLiveTransition *)self avatarTransitionModel];
  [avatarTransitionModel3 applyFullAlpha];

  if ([(AVTTransition *)self animated])
  {
    logger2 = [(AVTTransition *)self logger];
    v11 = [(AVTTransition *)self description];
    [logger2 logTransition:v11 state:-[AVTTransition state](self reachedStage:{"state"), 1}];

    if ([(AVTTransition *)self state]== 1)
    {
      logger3 = [(AVTTransition *)self logger];
      v13 = [(AVTTransition *)self description];
      [logger3 logToLivePoseTransitionBegins:v13];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __46__AVTAvatarToLiveTransition_performTransition__block_invoke;
      v15[3] = &unk_1E7F3A9B8;
      v15[4] = self;
      [liveView transitionToFaceTrackingWithDuration:v15 completionHandler:0.25];
    }
  }

  else
  {
    [liveView transitionToFaceTrackingWithDuration:0 completionHandler:0.0];
    completionHandler = [(AVTTransition *)self completionHandler];
    completionHandler[2](completionHandler, 1);
  }
}

void __46__AVTAvatarToLiveTransition_performTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [*(a1 + 32) description];
  [v2 logToLivePoseTransitionEnds:v3];

  v4 = [*(a1 + 32) logger];
  v5 = [*(a1 + 32) description];
  [v4 logTransition:v5 state:objc_msgSend(*(a1 + 32) reachedStage:{"state"), 2}];

  if ([*(a1 + 32) state] == 1)
  {
    v6 = [*(a1 + 32) completionHandler];
    v6[2](v6, 1);
  }
}

@end