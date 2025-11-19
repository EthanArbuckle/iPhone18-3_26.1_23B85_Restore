@interface AVTAvatarToStaticTransition
- (AVTAvatarToStaticTransition)initWithModel:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5 logger:(id)a6;
- (void)performTransition;
@end

@implementation AVTAvatarToStaticTransition

- (AVTAvatarToStaticTransition)initWithModel:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5 logger:(id)a6
{
  v8 = a4;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = AVTAvatarToStaticTransition;
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
  v3 = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [v3 logPerformTransition:v4];

  v5 = [(AVTAvatarToStaticTransition *)self avatarTransitionModel];
  v6 = [v5 liveView];

  v7 = [v6 avatar];

  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't perform transition without an AVTView with an avatar"];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__AVTAvatarToStaticTransition_performTransition__block_invoke;
  v17[3] = &unk_1E7F3A9B8;
  v17[4] = self;
  v8 = MEMORY[0x1BFB0DE80](v17);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__AVTAvatarToStaticTransition_performTransition__block_invoke_2;
  v16[3] = &unk_1E7F3A9B8;
  v16[4] = self;
  v9 = MEMORY[0x1BFB0DE80](v16);
  if ([(AVTTransition *)self animated])
  {
    v10 = [MEMORY[0x1E698E288] friendlyPose];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__AVTAvatarToStaticTransition_performTransition__block_invoke_3;
    v13[3] = &unk_1E7F3D590;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    [v6 transitionToPose:v10 duration:v13 completionHandler:0.25];
  }

  else
  {
    v8[2](v8);
    v9[2](v9);
    v11 = [MEMORY[0x1E698E288] friendlyPose];
    [v6 transitionToPose:v11 duration:0 completionHandler:0.0];

    v12 = [(AVTTransition *)self completionHandler];
    v12[2](v12, 1);
  }
}

void __48__AVTAvatarToStaticTransition_performTransition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarTransitionModel];
  [v1 transitionStaticViewToFront];
}

void __48__AVTAvatarToStaticTransition_performTransition__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarTransitionModel];
  [v1 applyBaseAlpha];
}

void __48__AVTAvatarToStaticTransition_performTransition__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [*(a1 + 32) description];
  [v2 logTransition:v3 state:objc_msgSend(*(a1 + 32) reachedStage:{"state"), 1}];

  if ([*(a1 + 32) state] == 1)
  {
    (*(*(a1 + 40) + 16))();
    v4 = MEMORY[0x1E69DD250];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__AVTAvatarToStaticTransition_performTransition__block_invoke_4;
    v6[3] = &unk_1E7F3AFF8;
    v7 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__AVTAvatarToStaticTransition_performTransition__block_invoke_5;
    v5[3] = &unk_1E7F3AA80;
    v5[4] = *(a1 + 32);
    [v4 animateWithDuration:v6 animations:v5 completion:0.2];
  }
}

void __48__AVTAvatarToStaticTransition_performTransition__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) logger];
  v5 = [*(a1 + 32) description];
  [v4 logTransition:v5 state:objc_msgSend(*(a1 + 32) reachedStage:{"state"), 2}];

  if ([*(a1 + 32) state] == 1)
  {
    v6 = [*(a1 + 32) completionHandler];
    v6[2](v6, a2);
  }
}

@end