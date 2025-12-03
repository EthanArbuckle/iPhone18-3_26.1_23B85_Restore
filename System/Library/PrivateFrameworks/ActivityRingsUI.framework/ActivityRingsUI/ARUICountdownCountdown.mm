@interface ARUICountdownCountdown
- (ARUICountdownCountdown)initWithPercent:(double)percent andStep:(unint64_t)step cancelable:(BOOL)cancelable;
- (id)description;
- (id)identifier;
- (id)timingFunction;
- (void)applyToCountdownView:(id)view completion:(id)completion;
@end

@implementation ARUICountdownCountdown

- (ARUICountdownCountdown)initWithPercent:(double)percent andStep:(unint64_t)step cancelable:(BOOL)cancelable
{
  v9.receiver = self;
  v9.super_class = ARUICountdownCountdown;
  result = [(ARUICountdownCountdown *)&v9 init];
  if (result)
  {
    result->_percent = percent;
    result->_step = step;
    result->_cancelable = cancelable;
  }

  return result;
}

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = ARUICountdownCountdown;
  v3 = [(ARUICountdownDefaultAnimation *)&v7 description];
  v4 = [v3 substringWithRange:{0, objc_msgSend(v3, "length") - 1}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %lu>", v4, self->_step];

  return v5;
}

- (void)applyToCountdownView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  ringGroup = [viewCopy ringGroup];
  [ringGroup setZRotation:0.0];

  ringGroup2 = [viewCopy ringGroup];
  LODWORD(v10) = 1051931443;
  [ringGroup2 setEmptyOpacity:v10];

  [(ARUICountdownCountdown *)self duration];
  v12 = v11;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__ARUICountdownCountdown_applyToCountdownView_completion___block_invoke;
  v19[3] = &unk_1E83CE4E8;
  v20 = viewCopy;
  selfCopy = self;
  v13 = viewCopy;
  [ARUIRingGroup animateWithDuration:v19 animations:3 curve:0 completion:v12];
  [(ARUICountdownCountdown *)self duration];
  v15 = dispatch_time(0, (v14 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ARUICountdownCountdown_applyToCountdownView_completion___block_invoke_2;
  block[3] = &unk_1E83CE018;
  v18 = completionCopy;
  v16 = completionCopy;
  dispatch_after(v15, MEMORY[0x1E69E96A0], block);
}

void __58__ARUICountdownCountdown_applyToCountdownView_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  [*(a1 + 40) percent];
  *&v2 = v2;
  [v3 setPercentage:0 ofRingAtIndex:v2];
}

uint64_t __58__ARUICountdownCountdown_applyToCountdownView_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end