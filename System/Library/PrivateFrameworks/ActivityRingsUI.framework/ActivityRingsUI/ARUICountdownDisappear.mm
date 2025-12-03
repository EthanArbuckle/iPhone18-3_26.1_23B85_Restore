@interface ARUICountdownDisappear
- (id)identifier;
- (id)timingFunction;
- (void)applyToCountdownView:(id)view completion:(id)completion;
@end

@implementation ARUICountdownDisappear

- (id)identifier
{
  v2 = objc_opt_class();

  return [v2 identifier];
}

- (id)timingFunction
{
  LODWORD(v2) = 1051361018;
  LODWORD(v3) = 1.0;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:v2 :0.0 :0.0 :v3];
}

- (void)applyToCountdownView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  ringGroup = [viewCopy ringGroup];
  [ringGroup groupDiameter];
  v10 = v9;

  ringGroup2 = [viewCopy ringGroup];
  [ringGroup2 thickness];
  v13 = v12;

  [(ARUICountdownDisappear *)self duration];
  v15 = v14;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __58__ARUICountdownDisappear_applyToCountdownView_completion___block_invoke;
  v26[3] = &unk_1E83CE2F0;
  v16 = viewCopy;
  v27 = v16;
  v28 = v10 + v13 * -0.5;
  [ARUIRingGroup animateWithDuration:v26 animations:v15];
  [(ARUICountdownDisappear *)self duration];
  v18 = dispatch_time(0, (v17 * 1000000000.0));
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__ARUICountdownDisappear_applyToCountdownView_completion___block_invoke_2;
  v21[3] = &unk_1E83CE4C0;
  v24 = v10;
  v25 = v13;
  v22 = v16;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = v16;
  dispatch_after(v18, MEMORY[0x1E69E96A0], v21);
}

void __58__ARUICountdownDisappear_applyToCountdownView_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ringGroup];
  v3 = *(a1 + 40);
  *&v3 = v3;
  [v2 setGroupDiameter:v3];

  v4 = [*(a1 + 32) ringGroup];
  [v4 setThickness:0.0];
}

uint64_t __58__ARUICountdownDisappear_applyToCountdownView_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ringGroup];
  [v2 setOpacity:0.0];

  v3 = [*(a1 + 32) ringGroup];
  v4 = *(a1 + 48);
  *&v4 = v4;
  [v3 setGroupDiameter:v4];

  v5 = [*(a1 + 32) ringGroup];
  v6 = *(a1 + 56);
  *&v6 = v6;
  [v5 setThickness:v6];

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

@end