@interface ARUICountdownFadeIn
- (id)identifier;
- (id)timingFunction;
- (void)applyToCountdownView:(id)view completion:(id)completion;
@end

@implementation ARUICountdownFadeIn

- (id)timingFunction
{
  LODWORD(v2) = 1051361018;
  LODWORD(v3) = 1.0;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:v2 :0.0 :0.0 :v3];
}

- (id)identifier
{
  v2 = objc_opt_class();

  return [v2 identifier];
}

- (void)applyToCountdownView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  [(ARUICountdownFadeIn *)self duration];
  v9 = v8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__ARUICountdownFadeIn_applyToCountdownView_completion___block_invoke;
  v16[3] = &unk_1E83CDFF0;
  v17 = viewCopy;
  v10 = viewCopy;
  [ARUIRingGroup animateWithDuration:v16 animations:0 curve:0 completion:v9];
  [(ARUICountdownFadeIn *)self duration];
  v12 = dispatch_time(0, (v11 * 1000000000.0));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__ARUICountdownFadeIn_applyToCountdownView_completion___block_invoke_2;
  v14[3] = &unk_1E83CE018;
  v15 = completionCopy;
  v13 = completionCopy;
  dispatch_after(v12, MEMORY[0x1E69E96A0], v14);
}

void __55__ARUICountdownFadeIn_applyToCountdownView_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ringGroup];
  LODWORD(v1) = 1.0;
  [v2 setTrackOpacity:v1];
}

uint64_t __55__ARUICountdownFadeIn_applyToCountdownView_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end