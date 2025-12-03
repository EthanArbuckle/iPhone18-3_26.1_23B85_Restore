@interface LARatchet
- (LARatchet)initWithIdentifier:(id)identifier;
- (void)armWithOptions:(id)options completion:(id)completion;
- (void)cancelWithReason:(id)reason completion:(id)completion;
- (void)stateWithCompletion:(id)completion;
@end

@implementation LARatchet

- (LARatchet)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = LARatchet;
  v6 = [(LARatchet *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = +[LARatchetManager sharedInstance];
    ratchetManager = v7->_ratchetManager;
    v7->_ratchetManager = v8;
  }

  return v7;
}

- (void)armWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (([WeakRetained checkContextValidWithError:0] & 1) == 0)
  {
    v9 = objc_alloc_init(LAContext);

    objc_storeWeak(&self->_context, v9);
    WeakRetained = v9;
  }

  ratchetManager = self->_ratchetManager;
  identifier = [(LARatchet *)self identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__LARatchet_armWithOptions_completion___block_invoke;
  v14[3] = &unk_1E77CB1A8;
  v15 = WeakRetained;
  v16 = completionCopy;
  v12 = WeakRetained;
  v13 = completionCopy;
  [(LARatchetManager *)ratchetManager performArmRequestWithIdentifier:identifier context:v12 options:optionsCopy completion:v14];
}

- (void)cancelWithReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained invalidate];

  ratchetManager = self->_ratchetManager;
  identifier = [(LARatchet *)self identifier];
  [(LARatchetManager *)ratchetManager cancelArmRequestWithIdentifier:identifier reason:reasonCopy completion:completionCopy];
}

- (void)stateWithCompletion:(id)completion
{
  ratchetManager = self->_ratchetManager;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [(LARatchetManager *)ratchetManager stateInContext:WeakRetained completion:completionCopy];
}

@end