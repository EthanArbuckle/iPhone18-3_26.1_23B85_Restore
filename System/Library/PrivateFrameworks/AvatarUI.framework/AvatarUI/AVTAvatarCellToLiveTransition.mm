@interface AVTAvatarCellToLiveTransition
- (AVTAvatarCellToLiveTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7;
- (void)performTransition;
@end

@implementation AVTAvatarCellToLiveTransition

- (AVTAvatarCellToLiveTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7
{
  v10 = a4;
  v13 = a3;
  v17.receiver = self;
  v17.super_class = AVTAvatarCellToLiveTransition;
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

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AVTAvatarCellToLiveTransition_performTransition__block_invoke;
  v7[3] = &unk_1E7F3A9B8;
  v7[4] = self;
  v5 = MEMORY[0x1BFB0DE80](v7);
  v5[2]();
  v6 = [(AVTTransition *)self completionHandler];
  v6[2](v6, 1);
}

void __50__AVTAvatarCellToLiveTransition_performTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarTransitionModel];
  [v2 transitionLiveViewToFront];

  v3 = [*(a1 + 32) avatarTransitionModel];
  [v3 applyFullAlpha];
}

@end