@interface AVTViewSession
- (AVTViewSession)initWithBecomeActiveHandler:(id)a3 tearDownHandler:(id)a4 aspectRatio:(CGSize)a5;
- (AVTViewSessionDelegate)delegate;
- (CGSize)aspectRatio;
- (void)activateWithAVTView:(id)a3 container:(id)a4 updater:(id)a5;
- (void)tearDownWithCompletionHandler:(id)a3;
@end

@implementation AVTViewSession

- (AVTViewSession)initWithBecomeActiveHandler:(id)a3 tearDownHandler:(id)a4 aspectRatio:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = AVTViewSession;
  v11 = [(AVTViewSession *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    becomeActiveHandler = v11->_becomeActiveHandler;
    v11->_becomeActiveHandler = v12;

    v14 = [v10 copy];
    tearDownHandler = v11->_tearDownHandler;
    v11->_tearDownHandler = v14;

    v11->_active = 0;
    v11->_aspectRatio.width = width;
    v11->_aspectRatio.height = height;
  }

  return v11;
}

- (void)activateWithAVTView:(id)a3 container:(id)a4 updater:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (![(AVTViewSession *)self isActive])
  {
    [(AVTViewSession *)self setActive:1];
    [(AVTViewSession *)self setAvtView:v11];
    [(AVTViewSession *)self setAvtViewContainer:v8];
    [(AVTViewSession *)self setAvtViewUpdater:v9];
    v10 = [(AVTViewSession *)self becomeActiveHandler];
    (v10)[2](v10, self);
  }
}

- (void)tearDownWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __48__AVTViewSession_tearDownWithCompletionHandler___block_invoke;
  v12 = &unk_1E7F3ACA0;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = MEMORY[0x1BFB0DE80](&v9);
  if ([(AVTViewSession *)self isActive:v9]&& ([(AVTViewSession *)self setActive:0], [(AVTViewSession *)self tearDownHandler], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(AVTViewSession *)self tearDownHandler];
    (v8)[2](v8, self, v6);
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