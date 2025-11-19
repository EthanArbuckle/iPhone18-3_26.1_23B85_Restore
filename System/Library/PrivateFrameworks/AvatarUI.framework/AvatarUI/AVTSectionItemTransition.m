@interface AVTSectionItemTransition
- (AVTSectionItemTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7;
- (void)performTransition;
@end

@implementation AVTSectionItemTransition

- (AVTSectionItemTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7
{
  v10 = a4;
  v13 = a3;
  v17.receiver = self;
  v17.super_class = AVTSectionItemTransition;
  v14 = [(AVTTransition *)&v17 initWithModel:v13 animated:v10 setupHandler:a5 completionHandler:a6 logger:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sectionItemTransitionModel, a3);
  }

  return v15;
}

- (void)performTransition
{
  if ([(AVTTransition *)self animated])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__AVTSectionItemTransition_performTransition__block_invoke;
    v10[3] = &unk_1E7F3A9B8;
    v10[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__AVTSectionItemTransition_performTransition__block_invoke_4;
    v9[3] = &unk_1E7F3AA80;
    v9[4] = self;
    [MEMORY[0x1E69DD250] animateKeyframesWithDuration:0 delay:v10 options:v9 animations:0.5 completion:0.0];
  }

  else
  {
    v3 = [(AVTSectionItemTransition *)self sectionItemTransitionModel];
    v4 = [v3 toLayer];
    LODWORD(v5) = 1.0;
    [v4 setOpacity:v5];

    v6 = [(AVTSectionItemTransition *)self sectionItemTransitionModel];
    v7 = [v6 fromLayer];
    [v7 setOpacity:0.0];

    v8 = [(AVTTransition *)self completionHandler];
    v8[2](v8, 1);
  }
}

uint64_t __45__AVTSectionItemTransition_performTransition__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__AVTSectionItemTransition_performTransition__block_invoke_2;
  v4[3] = &unk_1E7F3A9B8;
  v4[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__AVTSectionItemTransition_performTransition__block_invoke_3;
  v3[3] = &unk_1E7F3A9B8;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.5 animations:0.5];
}

void __45__AVTSectionItemTransition_performTransition__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) sectionItemTransitionModel];
  v1 = [v3 toLayer];
  LODWORD(v2) = 1.0;
  [v1 setOpacity:v2];
}

void __45__AVTSectionItemTransition_performTransition__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionItemTransitionModel];
  v1 = [v2 fromLayer];
  [v1 setOpacity:0.0];
}

void __45__AVTSectionItemTransition_performTransition__block_invoke_4(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) state] == 1)
  {
    v4 = [*(a1 + 32) completionHandler];

    if (v4)
    {
      v5 = [*(a1 + 32) completionHandler];
      v5[2](v5, a2);
    }
  }
}

@end