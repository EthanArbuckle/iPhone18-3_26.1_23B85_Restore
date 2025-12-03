@interface AVTTransition
- (AVTTransition)initWithModel:(id)model animated:(BOOL)animated setupHandler:(id)handler completionHandler:(id)completionHandler logger:(id)logger;
- (NSString)description;
- (void)cancel;
- (void)start;
@end

@implementation AVTTransition

- (AVTTransition)initWithModel:(id)model animated:(BOOL)animated setupHandler:(id)handler completionHandler:(id)completionHandler logger:(id)logger
{
  modelCopy = model;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  loggerCopy = logger;
  v24.receiver = self;
  v24.super_class = AVTTransition;
  v17 = [(AVTTransition *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_model, model);
    v18->_animated = animated;
    if (handlerCopy)
    {
      v19 = [handlerCopy copy];
      setupHandler = v18->_setupHandler;
      v18->_setupHandler = v19;
    }

    if (completionHandlerCopy)
    {
      v21 = [completionHandlerCopy copy];
      completionHandler = v18->_completionHandler;
      v18->_completionHandler = v21;
    }

    objc_storeStrong(&v18->_logger, logger);
  }

  return v18;
}

- (void)start
{
  logger = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [logger logStartTransition:v4 state:{-[AVTTransition state](self, "state")}];

  if ([(AVTTransition *)self state]== 2)
  {
    completionHandler = [(AVTTransition *)self completionHandler];
    completionHandler[2](completionHandler, 0);
  }

  else
  {
    if ([(AVTTransition *)self state])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[AVTTransition start] was called twice"];
    }

    [(AVTTransition *)self setState:1];
    setupHandler = [(AVTTransition *)self setupHandler];

    if (setupHandler)
    {
      setupHandler2 = [(AVTTransition *)self setupHandler];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __22__AVTTransition_start__block_invoke;
      v8[3] = &unk_1E7F3AA80;
      v8[4] = self;
      (setupHandler2)[2](setupHandler2, v8);
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
  logger = [(AVTTransition *)self logger];
  v4 = [(AVTTransition *)self description];
  [logger logCancelTransition:v4];

  state = [(AVTTransition *)self state];
  [(AVTTransition *)self setState:2];
  [(AVTTransition *)self performCancellation];
  if (state == 1)
  {
    completionHandler = [(AVTTransition *)self completionHandler];
    completionHandler[2](completionHandler, 0);
  }
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = AVTTransition;
  v3 = [(AVTTransition *)&v10 description];
  v4 = [v3 mutableCopy];

  model = [(AVTTransition *)self model];
  [v4 appendFormat:@" model: %p", model];

  animated = [(AVTTransition *)self animated];
  v7 = @"NO";
  if (animated)
  {
    v7 = @"YES";
  }

  [v4 appendFormat:@" animated: %@", v7];
  v8 = [v4 copy];

  return v8;
}

@end