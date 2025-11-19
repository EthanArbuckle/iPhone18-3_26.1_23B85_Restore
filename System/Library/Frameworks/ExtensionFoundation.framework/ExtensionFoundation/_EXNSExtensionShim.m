@interface _EXNSExtensionShim
- (BOOL)optedIn;
- (_EXNSExtensionShim)initWithIdentity:(id)a3;
- (_EXNSExtensionShim)initWithIdentity:(id)a3 implementation:(id)a4;
- (_EXNSExtensionShimImplementation)implementation;
- (id)_beginExtensionRequest:(id)a3 error:(id *)a4;
- (id)_init;
- (id)attributes;
- (id)beginExtensionRequest:(id)a3 error:(id *)a4;
- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 error:(id *)a5;
- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 error:(id *)a6;
- (id)beginRequest:(id)a3 error:(id *)a4;
- (id)extensionPointIdentifier;
- (id)identifier;
- (id)makeDefaultImplementation;
- (id)requestCancellationBlock;
- (id)requestCompletionBlock;
- (id)requestInterruptionBlock;
- (id)version;
- (void)_beginExtensionRequest:(id)a3 completion:(id)a4;
- (void)beginExtensionRequest:(id)a3 completion:(id)a4;
- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 completion:(id)a5;
- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 completion:(id)a6;
- (void)beginRequest:(id)a3 completion:(id)a4;
- (void)cancelExtensionRequestWithIdentifier:(id)a3;
- (void)setRequestCancellationBlock:(id)a3;
- (void)setRequestCompletionBlock:(id)a3;
- (void)setRequestInterruptionBlock:(id)a3;
@end

@implementation _EXNSExtensionShim

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _EXNSExtensionShim;
  result = [(_EXNSExtensionShim *)&v3 _init];
  if (result)
  {
    *(result + 2) = 0;
  }

  return result;
}

- (_EXNSExtensionShim)initWithIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _EXNSExtensionShim;
  v6 = [(_EXNSExtensionShim *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    v6->_requestBlockLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_identity, a3);
  }

  return v7;
}

- (_EXNSExtensionShim)initWithIdentity:(id)a3 implementation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _EXNSExtensionShim;
  v9 = [(_EXNSExtensionShim *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    v9->_requestBlockLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_identity, a3);
    objc_storeStrong(&v10->_implementation, a4);
  }

  return v10;
}

- (_EXNSExtensionShimImplementation)implementation
{
  implementation = self->_implementation;
  if (!implementation)
  {
    v4 = [(_EXNSExtensionShim *)self makeDefaultImplementation];
    v5 = self->_implementation;
    self->_implementation = v4;

    implementation = self->_implementation;
  }

  return implementation;
}

- (id)identifier
{
  v2 = [(_EXNSExtensionShim *)self identity];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)version
{
  v3 = [(_EXNSExtensionShim *)self attributes];
  v4 = [v3 _EX_stringForKey:@"NSExtensionVersion"];

  if (!v4)
  {
    v5 = [(_EXNSExtensionShim *)self identity];
    v4 = [v5 bundleVersion];
  }

  return v4;
}

- (id)attributes
{
  v2 = [(_EXNSExtensionShim *)self identity];
  v3 = [v2 nsExtensionAttributes];

  return v3;
}

- (id)extensionPointIdentifier
{
  v2 = [(_EXNSExtensionShim *)self identity];
  v3 = [v2 extensionPointIdentifier];

  return v3;
}

- (BOOL)optedIn
{
  v2 = [(_EXNSExtensionShim *)self identity];
  v3 = [v2 enabled];

  return v3;
}

- (void)setRequestCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [v4 copy];

  requestCompletionBlock = self->_requestCompletionBlock;
  self->_requestCompletionBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (id)requestCompletionBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestCompletionBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setRequestCancellationBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [v4 copy];

  requestCancellationBlock = self->_requestCancellationBlock;
  self->_requestCancellationBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (id)requestCancellationBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestCancellationBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setRequestInterruptionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [v4 copy];

  requestInterruptionBlock = self->_requestInterruptionBlock;
  self->_requestInterruptionBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (id)requestInterruptionBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestInterruptionBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setOptions:a3];
  [v10 setInputItems:v9];

  [(_EXNSExtensionShim *)self _beginExtensionRequest:v10 completion:v8];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setOptions:a3];
  [v9 setInputItems:v8];

  v10 = [(_EXNSExtensionShim *)self _beginExtensionRequest:v9 error:a5];

  return v10;
}

- (void)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setOptions:a3];
  [v13 setInputItems:v12];

  [v13 setEndpoint:v11];
  [(_EXNSExtensionShim *)self _beginExtensionRequest:v13 completion:v10];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)a3 inputItems:(id)a4 listenerEndpoint:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_new();
  [v12 setOptions:a3];
  [v12 setInputItems:v11];

  [v12 setEndpoint:v10];
  v13 = [(_EXNSExtensionShim *)self _beginExtensionRequest:v12 error:a6];

  return v13;
}

- (void)beginExtensionRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_EXNSExtensionShim *)self implementation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___EXNSExtensionShim_beginExtensionRequest_completion___block_invoke;
  v10[3] = &unk_1E6E4E628;
  v11 = v6;
  v9 = v6;
  [v8 beginExtensionRequest:v7 completion:v10];
}

- (id)beginExtensionRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_EXNSExtensionShim *)self implementation];
  v8 = [v7 beginExtensionRequest:v6 error:a4];

  return v8;
}

- (void)_beginExtensionRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_EXNSExtensionShim *)self implementation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___EXNSExtensionShim__beginExtensionRequest_completion___block_invoke;
  v10[3] = &unk_1E6E4E628;
  v11 = v6;
  v9 = v6;
  [v8 beginExtensionRequest:v7 completion:v10];
}

- (id)_beginExtensionRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_EXNSExtensionShim *)self implementation];
  v8 = [v7 beginExtensionRequest:v6 error:a4];

  return v8;
}

- (id)beginRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_EXNSExtensionShim *)self implementation];
  v8 = [v7 beginExtensionRequest:v6 error:a4];

  return v8;
}

- (void)beginRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_EXNSExtensionShim *)self implementation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___EXNSExtensionShim_beginRequest_completion___block_invoke;
  v10[3] = &unk_1E6E4E628;
  v11 = v6;
  v9 = v6;
  [v8 beginExtensionRequest:v7 completion:v10];
}

- (void)cancelExtensionRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_EXNSExtensionShim *)self implementation];
  [v5 cancelExtensionRequestWithIdentifier:v4];
}

- (id)makeDefaultImplementation
{
  v2 = self;
  v3 = _EXNSExtensionShim.makeDefaultImplementation()();

  return v3;
}

@end