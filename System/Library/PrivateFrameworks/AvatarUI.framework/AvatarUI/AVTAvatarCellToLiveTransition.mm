@interface AVTAvatarCellToLiveTransition
- (AVTAvatarCellToLiveTransition)initWithModel:(id)model animated:(BOOL)animated setupHandler:(id)handler completionHandler:(id)completionHandler logger:(id)logger;
- (void)performTransition;
@end

@implementation AVTAvatarCellToLiveTransition

- (AVTAvatarCellToLiveTransition)initWithModel:(id)model animated:(BOOL)animated setupHandler:(id)handler completionHandler:(id)completionHandler logger:(id)logger
{
  animatedCopy = animated;
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = AVTAvatarCellToLiveTransition;
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

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AVTAvatarCellToLiveTransition_performTransition__block_invoke;
  v7[3] = &unk_1E7F3A9B8;
  v7[4] = self;
  v5 = MEMORY[0x1BFB0DE80](v7);
  v5[2]();
  completionHandler = [(AVTTransition *)self completionHandler];
  completionHandler[2](completionHandler, 1);
}

void __50__AVTAvatarCellToLiveTransition_performTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarTransitionModel];
  [v2 transitionLiveViewToFront];

  v3 = [*(a1 + 32) avatarTransitionModel];
  [v3 applyFullAlpha];
}

@end