@interface ARUICountdownWindUp
- (id)identifier;
- (void)applyToCountdownView:(id)a3 completion:(id)a4;
@end

@implementation ARUICountdownWindUp

- (id)identifier
{
  v2 = objc_opt_class();

  return [v2 identifier];
}

- (void)applyToCountdownView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ARUICountdownWindUp *)self duration];
  v9 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__ARUICountdownWindUp_applyToCountdownView_completion___block_invoke;
  v18[3] = &unk_1E83CDFF0;
  v10 = v6;
  v19 = v10;
  [ARUIRingGroup animateWithDuration:v18 animations:3 curve:0 completion:v9];
  [(ARUICountdownWindUp *)self duration];
  v12 = dispatch_time(0, (v11 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ARUICountdownWindUp_applyToCountdownView_completion___block_invoke_2;
  block[3] = &unk_1E83CE558;
  v16 = v10;
  v17 = v7;
  v13 = v10;
  v14 = v7;
  dispatch_after(v12, MEMORY[0x1E69E96A0], block);
}

void __55__ARUICountdownWindUp_applyToCountdownView_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ringGroup];
  LODWORD(v3) = 1.0;
  [v2 setPercentage:0 ofRingAtIndex:v3];

  v5 = [*(a1 + 32) backingTrackRingGroup];
  v4 = [*(a1 + 32) ringGroup];
  [v4 thickness];
  [v5 setThickness:?];
}

void __55__ARUICountdownWindUp_applyToCountdownView_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) backingTrackRingGroup];
  [v3 setOpacity:0.0];
}

@end