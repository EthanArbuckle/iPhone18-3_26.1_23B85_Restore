@interface AVTTransition
- (AVTTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7;
- (NSString)description;
- (void)cancel;
- (void)start;
@end

@implementation AVTTransition

- (AVTTransition)initWithModel:(id)a3 animated:(BOOL)a4 setupHandler:(id)a5 completionHandler:(id)a6 logger:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = AVTTransition;
  v17 = [(AVTTransition *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_model, a3);
    v18->_animated = a4;
    if (v14)
    {
      v19 = [v14 copy];
      setupHandler = v18->_setupHandler;
      v18->_setupHandler = v19;
    }

    if (v15)
    {
      v21 = [v15 copy];
      completionHandler = v18->_completionHandler;
      v18->_completionHandler = v21;
    }

    objc_storeStrong(&v18->_logger, a7);
  }

  return v18;
}

- (void)start
{
  v3 = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [v3 logStartTransition:v4 state:{-[AVTTransition state](self, "state")}];

  if ([(AVTTransition *)self state]== 2)
  {
    v7 = [(AVTTransition *)self completionHandler];
    v7[2](v7, 0);
  }

  else
  {
    if ([(AVTTransition *)self state])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[AVTTransition start] was called twice"];
    }

    [(AVTTransition *)self setState:1];
    v5 = [(AVTTransition *)self setupHandler];

    if (v5)
    {
      v6 = [(AVTTransition *)self setupHandler];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __22__AVTTransition_start__block_invoke;
      v8[3] = &unk_1E7F3AA80;
      v8[4] = self;
      (v6)[2](v6, v8);
    }

    else
    {

      [(AVTTransition *)self performTransition];
    }
  }
}

void __22__AVTTransition_start__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) logger];
  v5 = [*(a1 + 32) description];
  [v4 logSetupHandlerCompletedForTransition:v5 state:objc_msgSend(*(a1 + 32) finished:{"state"), a2}];

  if ([*(a1 + 32) state] == 1)
  {
    v6 = *(a1 + 32);
    if (a2)
    {

      [v6 performTransition];
    }

    else
    {
      v7 = [v6 completionHandler];
      v7[2](v7, 0);
    }
  }
}

- (void)cancel
{
  v3 = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [v3 logCancelTransition:v4];

  v5 = [(AVTTransition *)self state];
  [(AVTTransition *)self setState:2];
  [(AVTTransition *)self performCancellation];
  if (v5 == 1)
  {
    v6 = [(AVTTransition *)self completionHandler];
    v6[2](v6, 0);
  }
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = AVTTransition;
  v3 = [(AVTTransition *)&v10 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTTransition *)self model];
  [v4 appendFormat:@" model: %p", v5];

  v6 = [(AVTTransition *)self animated];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  [v4 appendFormat:@" animated: %@", v7];
  v8 = [v4 copy];

  return v8;
}

@end