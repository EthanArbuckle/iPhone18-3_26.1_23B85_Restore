@interface AVTAvatarCellToStaticTransition
- (AVTAvatarCellToStaticTransition)initWithModel:(id)model animated:(BOOL)animated completionHandler:(id)handler logger:(id)logger;
- (void)performTransition;
@end

@implementation AVTAvatarCellToStaticTransition

- (AVTAvatarCellToStaticTransition)initWithModel:(id)model animated:(BOOL)animated completionHandler:(id)handler logger:(id)logger
{
  animatedCopy = animated;
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = AVTAvatarCellToStaticTransition;
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
  logger = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [logger logPerformTransition:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__AVTAvatarCellToStaticTransition_performTransition__block_invoke;
  v9[3] = &unk_1E7F3A9B8;
  v9[4] = self;
  v5 = MEMORY[0x1BFB0DE80](v9);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__AVTAvatarCellToStaticTransition_performTransition__block_invoke_2;
  v8[3] = &unk_1E7F3A9B8;
  v8[4] = self;
  v6 = MEMORY[0x1BFB0DE80](v8);
  v5[2](v5);
  v6[2](v6);
  completionHandler = [(AVTTransition *)self completionHandler];
  completionHandler[2](completionHandler, 1);
}

void __52__AVTAvatarCellToStaticTransition_performTransition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarTransitionModel];
  [v1 transitionStaticViewToFront];
}

void __52__AVTAvatarCellToStaticTransition_performTransition__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarTransitionModel];
  [v1 applyBaseAlpha];
}

@end