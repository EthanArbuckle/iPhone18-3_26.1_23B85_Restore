@interface AVTAvatarToLiveTransition
- (AVTAvatarToLiveTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7;
- (void)performTransition;
@end

@implementation AVTAvatarToLiveTransition

- (AVTAvatarToLiveTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7
{
  v10 = a4;
  v13 = a3;
  v17.receiver = self;
  v17.super_class = AVTAvatarToLiveTransition;
  v14 = [(AVTTransition *)&v17 initWithModel:v13 animated:v10 setupHandler:a5 completionHandler:a6 logger:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_avatarTransitionModel, a3);
  }

  return v15;
}

- (void)performTransition
{
  v3 = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [v3 logPerformTransition:v4];

  v5 = [(AVTAvatarToLiveTransition *)self avatarTransitionModel];
  v6 = [v5 liveView];

  v7 = [v6 avatar];

  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't perform transition without an AVTView with an avatar"];
  }

  v8 = [(AVTAvatarToLiveTransition *)self avatarTransitionModel];
  [v8 transitionLiveViewToFront];

  v9 = [(AVTAvatarToLiveTransition *)self avatarTransitionModel];
  [v9 applyFullAlpha];

  if ([(AVTTransition *)self animated])
  {
    v10 = [(AVTTransition *)self logger];
    v11 = [(AVTTransition *)self description];
    [v10 logTransition:v11 state:-[AVTTransition state](self reachedStage:{"state"), 1}];

    if ([(AVTTransition *)self state]== 1)
    {
      v12 = [(AVTTransition *)self logger];
      v13 = [(AVTTransition *)self description];
      [v12 logToLivePoseTransitionBegins:v13];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __46__AVTAvatarToLiveTransition_performTransition__block_invoke;
      v15[3] = &unk_1E7F3A9B8;
      v15[4] = self;
      [v6 transitionToFaceTrackingWithDuration:v15 completionHandler:0.25];
    }
  }

  else
  {
    [v6 transitionToFaceTrackingWithDuration:0 completionHandler:0.0];
    v14 = [(AVTTransition *)self completionHandler];
    v14[2](v14, 1);
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