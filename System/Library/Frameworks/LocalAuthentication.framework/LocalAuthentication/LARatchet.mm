@interface LARatchet
- (LARatchet)initWithIdentifier:(id)a3;
- (void)armWithOptions:(id)a3 completion:(id)a4;
- (void)cancelWithReason:(id)a3 completion:(id)a4;
- (void)stateWithCompletion:(id)a3;
@end

@implementation LARatchet

- (LARatchet)initWithIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LARatchet;
  v6 = [(LARatchet *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = +[LARatchetManager sharedInstance];
    ratchetManager = v7->_ratchetManager;
    v7->_ratchetManager = v8;
  }

  return v7;
}

- (void)armWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (([WeakRetained checkContextValidWithError:0] & 1) == 0)
  {
    v9 = objc_alloc_init(LAContext);

    objc_storeWeak(&self->_context, v9);
    WeakRetained = v9;
  }

  ratchetManager = self->_ratchetManager;
  v11 = [(LARatchet *)self identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__LARatchet_armWithOptions_completion___block_invoke;
  v14[3] = &unk_1E77CB1A8;
  v15 = WeakRetained;
  v16 = v6;
  v12 = WeakRetained;
  v13 = v6;
  [(LARatchetManager *)ratchetManager performArmRequestWithIdentifier:v11 context:v12 options:v7 completion:v14];
}

- (void)cancelWithReason:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained invalidate];

  ratchetManager = self->_ratchetManager;
  v10 = [(LARatchet *)self identifier];
  [(LARatchetManager *)ratchetManager cancelArmRequestWithIdentifier:v10 reason:v7 completion:v6];
}

- (void)stateWithCompletion:(id)a3
{
  ratchetManager = self->_ratchetManager;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [(LARatchetManager *)ratchetManager stateInContext:WeakRetained completion:v5];
}

@end