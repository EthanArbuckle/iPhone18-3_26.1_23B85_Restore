@interface ARUICountdownFadeOut
- (id)identifier;
- (id)timingFunction;
- (void)applyToCountdownView:(id)a3 completion:(id)a4;
@end

@implementation ARUICountdownFadeOut

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
  v8 = [v6 ringGroup];
  [v8 setPercentage:0 ofRingAtIndex:0.0];

  [(ARUICountdownFadeOut *)self duration];
  v10 = v9 + v9;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__ARUICountdownFadeOut_applyToCountdownView_completion___block_invoke;
  v17[3] = &unk_1E83CDFF0;
  v18 = v6;
  v11 = v6;
  [ARUIRingGroup animateWithDuration:v17 animations:v10];
  [(ARUICountdownFadeOut *)self duration];
  v13 = dispatch_time(0, (v12 * 1000000000.0));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__ARUICountdownFadeOut_applyToCountdownView_completion___block_invoke_2;
  v15[3] = &unk_1E83CE018;
  v16 = v7;
  v14 = v7;
  dispatch_after(v13, MEMORY[0x1E69E96A0], v15);
}

void __56__ARUICountdownFadeOut_applyToCountdownView_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ringGroup];
  [v1 setTrackOpacity:0.0];
}

uint64_t __56__ARUICountdownFadeOut_applyToCountdownView_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end