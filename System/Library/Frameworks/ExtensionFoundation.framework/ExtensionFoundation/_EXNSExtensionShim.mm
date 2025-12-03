@interface _EXNSExtensionShim
- (BOOL)optedIn;
- (_EXNSExtensionShim)initWithIdentity:(id)identity;
- (_EXNSExtensionShim)initWithIdentity:(id)identity implementation:(id)implementation;
- (_EXNSExtensionShimImplementation)implementation;
- (id)_beginExtensionRequest:(id)request error:(id *)error;
- (id)_init;
- (id)attributes;
- (id)beginExtensionRequest:(id)request error:(id *)error;
- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items error:(id *)error;
- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint error:(id *)error;
- (id)beginRequest:(id)request error:(id *)error;
- (id)extensionPointIdentifier;
- (id)identifier;
- (id)makeDefaultImplementation;
- (id)requestCancellationBlock;
- (id)requestCompletionBlock;
- (id)requestInterruptionBlock;
- (id)version;
- (void)_beginExtensionRequest:(id)request completion:(id)completion;
- (void)beginExtensionRequest:(id)request completion:(id)completion;
- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items completion:(id)completion;
- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint completion:(id)completion;
- (void)beginRequest:(id)request completion:(id)completion;
- (void)cancelExtensionRequestWithIdentifier:(id)identifier;
- (void)setRequestCancellationBlock:(id)block;
- (void)setRequestCompletionBlock:(id)block;
- (void)setRequestInterruptionBlock:(id)block;
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

- (_EXNSExtensionShim)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = _EXNSExtensionShim;
  _init = [(_EXNSExtensionShim *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    _init->_requestBlockLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&_init->_identity, identity);
  }

  return v7;
}

- (_EXNSExtensionShim)initWithIdentity:(id)identity implementation:(id)implementation
{
  identityCopy = identity;
  implementationCopy = implementation;
  v12.receiver = self;
  v12.super_class = _EXNSExtensionShim;
  _init = [(_EXNSExtensionShim *)&v12 _init];
  v10 = _init;
  if (_init)
  {
    _init->_requestBlockLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&_init->_identity, identity);
    objc_storeStrong(&v10->_implementation, implementation);
  }

  return v10;
}

- (_EXNSExtensionShimImplementation)implementation
{
  implementation = self->_implementation;
  if (!implementation)
  {
    makeDefaultImplementation = [(_EXNSExtensionShim *)self makeDefaultImplementation];
    v5 = self->_implementation;
    self->_implementation = makeDefaultImplementation;

    implementation = self->_implementation;
  }

  return implementation;
}

- (id)identifier
{
  identity = [(_EXNSExtensionShim *)self identity];
  bundleIdentifier = [identity bundleIdentifier];

  return bundleIdentifier;
}

- (id)version
{
  attributes = [(_EXNSExtensionShim *)self attributes];
  bundleVersion = [attributes _EX_stringForKey:@"NSExtensionVersion"];

  if (!bundleVersion)
  {
    identity = [(_EXNSExtensionShim *)self identity];
    bundleVersion = [identity bundleVersion];
  }

  return bundleVersion;
}

- (id)attributes
{
  identity = [(_EXNSExtensionShim *)self identity];
  nsExtensionAttributes = [identity nsExtensionAttributes];

  return nsExtensionAttributes;
}

- (id)extensionPointIdentifier
{
  identity = [(_EXNSExtensionShim *)self identity];
  extensionPointIdentifier = [identity extensionPointIdentifier];

  return extensionPointIdentifier;
}

- (BOOL)optedIn
{
  identity = [(_EXNSExtensionShim *)self identity];
  enabled = [identity enabled];

  return enabled;
}

- (void)setRequestCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [blockCopy copy];

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

- (void)setRequestCancellationBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [blockCopy copy];

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

- (void)setRequestInterruptionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [blockCopy copy];

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

- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  v10 = objc_opt_new();
  [v10 setOptions:options];
  [v10 setInputItems:itemsCopy];

  [(_EXNSExtensionShim *)self _beginExtensionRequest:v10 completion:completionCopy];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items error:(id *)error
{
  itemsCopy = items;
  v9 = objc_opt_new();
  [v9 setOptions:options];
  [v9 setInputItems:itemsCopy];

  v10 = [(_EXNSExtensionShim *)self _beginExtensionRequest:v9 error:error];

  return v10;
}

- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  endpointCopy = endpoint;
  itemsCopy = items;
  v13 = objc_opt_new();
  [v13 setOptions:options];
  [v13 setInputItems:itemsCopy];

  [v13 setEndpoint:endpointCopy];
  [(_EXNSExtensionShim *)self _beginExtensionRequest:v13 completion:completionCopy];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  itemsCopy = items;
  v12 = objc_opt_new();
  [v12 setOptions:options];
  [v12 setInputItems:itemsCopy];

  [v12 setEndpoint:endpointCopy];
  v13 = [(_EXNSExtensionShim *)self _beginExtensionRequest:v12 error:error];

  return v13;
}

- (void)beginExtensionRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  implementation = [(_EXNSExtensionShim *)self implementation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___EXNSExtensionShim_beginExtensionRequest_completion___block_invoke;
  v10[3] = &unk_1E6E4E628;
  v11 = completionCopy;
  v9 = completionCopy;
  [implementation beginExtensionRequest:requestCopy completion:v10];
}

- (id)beginExtensionRequest:(id)request error:(id *)error
{
  requestCopy = request;
  implementation = [(_EXNSExtensionShim *)self implementation];
  v8 = [implementation beginExtensionRequest:requestCopy error:error];

  return v8;
}

- (void)_beginExtensionRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  implementation = [(_EXNSExtensionShim *)self implementation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___EXNSExtensionShim__beginExtensionRequest_completion___block_invoke;
  v10[3] = &unk_1E6E4E628;
  v11 = completionCopy;
  v9 = completionCopy;
  [implementation beginExtensionRequest:requestCopy completion:v10];
}

- (id)_beginExtensionRequest:(id)request error:(id *)error
{
  requestCopy = request;
  implementation = [(_EXNSExtensionShim *)self implementation];
  v8 = [implementation beginExtensionRequest:requestCopy error:error];

  return v8;
}

- (id)beginRequest:(id)request error:(id *)error
{
  requestCopy = request;
  implementation = [(_EXNSExtensionShim *)self implementation];
  v8 = [implementation beginExtensionRequest:requestCopy error:error];

  return v8;
}

- (void)beginRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  implementation = [(_EXNSExtensionShim *)self implementation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___EXNSExtensionShim_beginRequest_completion___block_invoke;
  v10[3] = &unk_1E6E4E628;
  v11 = completionCopy;
  v9 = completionCopy;
  [implementation beginExtensionRequest:requestCopy completion:v10];
}

- (void)cancelExtensionRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  implementation = [(_EXNSExtensionShim *)self implementation];
  [implementation cancelExtensionRequestWithIdentifier:identifierCopy];
}

- (id)makeDefaultImplementation
{
  selfCopy = self;
  v3 = _EXNSExtensionShim.makeDefaultImplementation()();

  return v3;
}

@end