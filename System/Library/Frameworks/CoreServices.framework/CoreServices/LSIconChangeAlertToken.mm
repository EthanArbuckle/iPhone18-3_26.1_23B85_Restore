@interface LSIconChangeAlertToken
- (LSIconChangeAlertToken)initWithIdentity:(id)identity manager:(id)manager;
- (void)dealloc;
- (void)presentWithCompletion:(id)completion;
@end

@implementation LSIconChangeAlertToken

- (LSIconChangeAlertToken)initWithIdentity:(id)identity manager:(id)manager
{
  identityCopy = identity;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = LSIconChangeAlertToken;
  v9 = [(LSIconChangeAlertToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, identity);
    objc_storeWeak(&v10->_manager, managerCopy);
    v10->_hasBeenPresented = 0;
  }

  return v10;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained _removeExtantToken:self];

  v4.receiver = self;
  v4.super_class = LSIconChangeAlertToken;
  [(LSIconChangeAlertToken *)&v4 dealloc];
}

- (void)presentWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [(LSIconChangeAlertToken *)a2 presentWithCompletion:?];
  }

  if (self->_hasBeenPresented)
  {
    v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 37, 0, "[LSIconChangeAlertToken presentWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSIconAlertManager.m", 51);
    completionCopy[2](completionCopy, 0, v6);
  }

  else
  {
    self->_hasBeenPresented = 1;
    v12 = 0;
    v7 = LSGetCSUIAUpcallManager(&v12);
    v8 = v12;
    if (v7)
    {
      identity = self->_identity;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __48__LSIconChangeAlertToken_presentWithCompletion___block_invoke;
      v10[3] = &unk_1E6A1DBF8;
      v10[4] = self;
      v11 = completionCopy;
      [v7 showIconChangeAlertForApplicationWithIdentity:identity completion:v10];
    }

    else
    {
      completionCopy[2](completionCopy, 0, v8);
    }
  }
}

void __48__LSIconChangeAlertToken_presentWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained _removeExtantToken:*(a1 + 32)];
}

- (void)presentWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LSIconAlertManager.m" lineNumber:47 description:@"must have completion"];
}

@end