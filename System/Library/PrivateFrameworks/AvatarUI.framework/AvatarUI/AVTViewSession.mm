@interface AVTViewSession
- (AVTViewSession)initWithBecomeActiveHandler:(id)handler tearDownHandler:(id)downHandler aspectRatio:(CGSize)ratio;
- (AVTViewSessionDelegate)delegate;
- (CGSize)aspectRatio;
- (void)activateWithAVTView:(id)view container:(id)container updater:(id)updater;
- (void)tearDownWithCompletionHandler:(id)handler;
@end

@implementation AVTViewSession

- (AVTViewSession)initWithBecomeActiveHandler:(id)handler tearDownHandler:(id)downHandler aspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  handlerCopy = handler;
  downHandlerCopy = downHandler;
  v17.receiver = self;
  v17.super_class = AVTViewSession;
  v11 = [(AVTViewSession *)&v17 init];
  if (v11)
  {
    v12 = [handlerCopy copy];
    becomeActiveHandler = v11->_becomeActiveHandler;
    v11->_becomeActiveHandler = v12;

    v14 = [downHandlerCopy copy];
    tearDownHandler = v11->_tearDownHandler;
    v11->_tearDownHandler = v14;

    v11->_active = 0;
    v11->_aspectRatio.width = width;
    v11->_aspectRatio.height = height;
  }

  return v11;
}

- (void)activateWithAVTView:(id)view container:(id)container updater:(id)updater
{
  viewCopy = view;
  containerCopy = container;
  updaterCopy = updater;
  if (![(AVTViewSession *)self isActive])
  {
    [(AVTViewSession *)self setActive:1];
    [(AVTViewSession *)self setAvtView:viewCopy];
    [(AVTViewSession *)self setAvtViewContainer:containerCopy];
    [(AVTViewSession *)self setAvtViewUpdater:updaterCopy];
    becomeActiveHandler = [(AVTViewSession *)self becomeActiveHandler];
    (becomeActiveHandler)[2](becomeActiveHandler, self);
  }
}

- (void)tearDownWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __48__AVTViewSession_tearDownWithCompletionHandler___block_invoke;
  v12 = &unk_1E7F3ACA0;
  selfCopy = self;
  v14 = handlerCopy;
  v5 = handlerCopy;
  v6 = MEMORY[0x1BFB0DE80](&v9);
  if ([(AVTViewSession *)self isActive:v9]&& ([(AVTViewSession *)self setActive:0], [(AVTViewSession *)self tearDownHandler], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    tearDownHandler = [(AVTViewSession *)self tearDownHandler];
    (tearDownHandler)[2](tearDownHandler, self, v6);
  }

  else
  {
    v6[2](v6);
  }
}

uint64_t __48__AVTViewSession_tearDownWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sessionDidTearDown:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (CGSize)aspectRatio
{
  width = self->_aspectRatio.width;
  height = self->_aspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVTViewSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end