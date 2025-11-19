@interface UIView
@end

@implementation UIView

void __52__UIView_PKAdditions__pk_autoFadeOutShapePointLayer__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.5];
  [*(a1 + 32) setOpacity:0.0];
  v2 = MEMORY[0x1E6979518];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__UIView_PKAdditions__pk_autoFadeOutShapePointLayer__block_invoke_2;
  v3[3] = &unk_1E82D7148;
  v4 = *(a1 + 32);
  [v2 setCompletionBlock:v3];
  [MEMORY[0x1E6979518] commit];
}

void __52__UIView_PKAdditions__pk_autoFadeOutShapePointLayer__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIView_PKAdditions__pk_autoFadeOutShapePointLayer__block_invoke_3;
  block[3] = &unk_1E82D7148;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

@end