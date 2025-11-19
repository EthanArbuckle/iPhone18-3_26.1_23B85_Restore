@interface ARUICountdownCancel
- (id)identifier;
- (id)timingFunction;
- (void)applyToCountdownView:(id)a3 completion:(id)a4;
@end

@implementation ARUICountdownCancel

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

- (void)applyToCountdownView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ARUICountdownCancel *)self duration];
  v9 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke;
  v18[3] = &unk_1E83CDFF0;
  v19 = v6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke_2;
  v16[3] = &unk_1E83CDFF0;
  v17 = v19;
  v10 = v19;
  [ARUIRingGroup animateWithDuration:v18 animations:v16 completion:v9];
  [(ARUICountdownCancel *)self duration];
  v12 = dispatch_time(0, (v11 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke_4;
  block[3] = &unk_1E83CE018;
  v15 = v7;
  v13 = v7;
  dispatch_after(v12, MEMORY[0x1E69E96A0], block);
}

void __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ringGroup];
  [v1 setPercentage:0 ofRingAtIndex:0.0];
}

void __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke_3;
  v1[3] = &unk_1E83CDFF0;
  v2 = *(a1 + 32);
  [ARUIRingGroup animateWithDuration:v1 animations:0.2];
}

void __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) ringGroup];
  [v1 setTrackOpacity:0.0];
}

uint64_t __55__ARUICountdownCancel_applyToCountdownView_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end