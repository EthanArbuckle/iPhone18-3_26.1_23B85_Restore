@interface _INExtensionContext
+ (void)initialize;
- (INIntentHandlerProvidingPrivate)_extensionHandler;
- (_INExtensionContext)initWithInputItems:(id)items extension:(id)extension;
- (_INExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (_INExtensionContext)initWithInputItems:(id)items privateIntentHandlerProvider:(id)provider;
- (id)_intentDelivererForIntent:(id)intent;
- (void)_beginTransactionWithIntentIdentifier:(id)identifier completion:(id)completion;
- (void)_cancelTransactionDueToTimeoutWithIntentIdentifier:(id)identifier completion:(id)completion;
- (void)_commonInit;
- (void)_completeTransactionWithIntentIdentifier:(id)identifier completion:(id)completion;
- (void)_validateExtension;
- (void)beginTransactionWithIntentIdentifier:(id)identifier completion:(id)completion;
- (void)cancelTransactionDueToTimeout;
- (void)cancelTransactionDueToTimeoutWithIntentIdentifier:(id)identifier completion:(id)completion;
- (void)completeTransaction;
- (void)completeTransactionWithIntentIdentifier:(id)identifier completion:(id)completion;
- (void)confirmIntent:(id)intent withCompletion:(id)completion;
- (void)confirmationResponseForIntent:(id)intent completion:(id)completion;
- (void)getIntentParameterDefaultValue:(id)value forIntent:(id)intent completionBlock:(id)block;
- (void)getIntentParameterOptions:(id)options forIntent:(id)intent completionBlock:(id)block;
- (void)getIntentParameterOptions:(id)options forIntent:(id)intent searchTerm:(id)term completionBlock:(id)block;
- (void)handleIntent:(id)intent completion:(id)completion;
- (void)handleIntent:(id)intent completionHandler:(id)handler;
- (void)handleIntent:(id)intent withCompletion:(id)completion;
- (void)intentDeliverer:(id)deliverer deliverIntent:(id)intent withBlock:(id)block;
- (void)resolveIntentSlot:(id)slot forIntent:(id)intent completionBlock:(id)block;
- (void)resolveIntentSlots:(id)slots forIntent:(id)intent completionBlock:(id)block;
- (void)startSendingUpdatesForIntent:(id)intent toObserver:(id)observer;
- (void)stopSendingUpdatesForIntent:(id)intent;
@end

@implementation _INExtensionContext

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (void)_commonInit
{
  v3 = +[INPreferences sharedPreferences];
  [v3 _updateWithExtensionContext:self];

  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("com.apple.siri.extension", v6);
  queue = self->_queue;
  self->_queue = v4;

  self->_isPrivateExtension = 0;
}

- (INIntentHandlerProvidingPrivate)_extensionHandler
{
  extensionHandler = self->_extensionHandler;
  if (!extensionHandler)
  {
    _principalObject = [(_INExtensionContext *)self _principalObject];
    v5 = self->_extensionHandler;
    self->_extensionHandler = _principalObject;

    extensionHandler = self->_extensionHandler;
  }

  return extensionHandler;
}

- (void)_validateExtension
{
  _extensionHandler = [(_INExtensionContext *)self _extensionHandler];
  if (!_extensionHandler)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = @"Extension's principal object should not be nil";
    goto LABEL_9;
  }

  v4 = _extensionHandler;
  if (!self->_isPrivateExtension)
  {
    v9 = _extensionHandler;
    _extensionHandler = _INExtensionValidateClass(_extensionHandler);
    v4 = v9;
    if ((_extensionHandler & 1) == 0)
    {
      v5 = MEMORY[0x1E696AEC0];
      v8 = v9;
      v6 = @"The extension's principal object %@ must be a subclass of INExtension";
LABEL_9:
      [v5 stringWithFormat:v6, v8];
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v7);
    }
  }

  MEMORY[0x1EEE66BB8](_extensionHandler, v4);
}

- (void)getIntentParameterOptions:(id)options forIntent:(id)intent completionBlock:(id)block
{
  blockCopy = block;
  intentCopy = intent;
  optionsCopy = options;
  v11 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v11 getIntentParameterOptions:optionsCopy forIntent:intentCopy searchTerm:0 completionBlock:blockCopy];
}

- (void)cancelTransactionDueToTimeout
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[_INExtensionContext cancelTransactionDueToTimeout]";
    _os_log_error_impl(&dword_18E991000, v3, OS_LOG_TYPE_ERROR, "%s Deprecated method invoked: [_INExtensionContext cancelTransactionDueToTimeout]", &v5, 0xCu);
  }

  [(_INExtensionContext *)self cancelTransactionDueToTimeoutWithIntentIdentifier:&stru_1F01E0850 completion:&__block_literal_global_22];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)completeTransaction
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[_INExtensionContext completeTransaction]";
    _os_log_error_impl(&dword_18E991000, v3, OS_LOG_TYPE_ERROR, "%s Deprecated method invoked: [_INExtensionContext completeTransaction]", &v5, 0xCu);
  }

  [(_INExtensionContext *)self completeTransactionWithIntentIdentifier:&stru_1F01E0850 completion:&__block_literal_global_53988];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleIntent:(id)intent completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___INExtensionContext_handleIntent_completionHandler___block_invoke;
  v8[3] = &unk_1E72871D0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(_INExtensionContext *)self handleIntent:intent withCompletion:v8];
}

- (void)handleIntent:(id)intent completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47___INExtensionContext_handleIntent_completion___block_invoke;
  v8[3] = &unk_1E72871D0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(_INExtensionContext *)self handleIntent:intent withCompletion:v8];
}

- (void)confirmationResponseForIntent:(id)intent completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___INExtensionContext_confirmationResponseForIntent_completion___block_invoke;
  v8[3] = &unk_1E72871D0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(_INExtensionContext *)self confirmIntent:intent withCompletion:v8];
}

- (void)_cancelTransactionDueToTimeoutWithIntentIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  _extensionHandler = [(_INExtensionContext *)self _extensionHandler];
  if (objc_opt_respondsToSelector())
  {
    [_extensionHandler transactionDidCompleteForIntentIdentifier:identifierCopy];
  }

  handlerForIntent = self->_handlerForIntent;
  self->_handlerForIntent = 0;

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:3001 userInfo:0];
  [(_INExtensionContext *)self cancelRequestWithError:v9];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_completeTransactionWithIntentIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  _extensionHandler = [(_INExtensionContext *)self _extensionHandler];
  if (objc_opt_respondsToSelector())
  {
    [_extensionHandler transactionDidCompleteForIntentIdentifier:identifierCopy];
  }

  handlerForIntent = self->_handlerForIntent;
  self->_handlerForIntent = 0;

  [(_INExtensionContext *)self completeRequestReturningItems:0 completionHandler:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_beginTransactionWithIntentIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  _extensionHandler = [(_INExtensionContext *)self _extensionHandler];
  if (objc_opt_respondsToSelector())
  {
    [_extensionHandler transactionWillBeginForIntentIdentifier:identifierCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)cancelTransactionDueToTimeoutWithIntentIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___INExtensionContext_cancelTransactionDueToTimeoutWithIntentIdentifier_completion___block_invoke;
  block[3] = &unk_1E72858F0;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)completeTransactionWithIntentIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74___INExtensionContext_completeTransactionWithIntentIdentifier_completion___block_invoke;
  block[3] = &unk_1E72858F0;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)beginTransactionWithIntentIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___INExtensionContext_beginTransactionWithIntentIdentifier_completion___block_invoke;
  block[3] = &unk_1E72858F0;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)intentDeliverer:(id)deliverer deliverIntent:(id)intent withBlock:(id)block
{
  blockCopy = block;
  intentCopy = intent;
  [(_INExtensionContext *)self _validateExtension];
  _extensionHandler = [(_INExtensionContext *)self _extensionHandler];
  v9 = [_extensionHandler handlerForIntent:intentCopy];

  handlerForIntent = self->_handlerForIntent;
  self->_handlerForIntent = v9;

  blockCopy[2](blockCopy, self->_handlerForIntent);
}

- (void)stopSendingUpdatesForIntent:(id)intent
{
  intentCopy = intent;
  v5 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v5 stopSendingUpdatesForIntent:intentCopy completionHandler:0];
}

- (void)startSendingUpdatesForIntent:(id)intent toObserver:(id)observer
{
  observerCopy = observer;
  intentCopy = intent;
  v8 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v8 startSendingUpdatesForIntent:intentCopy toObserver:observerCopy completionHandler:0];
}

- (void)handleIntent:(id)intent withCompletion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  v8 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v8 handleIntent:intentCopy withCompletion:completionCopy];
}

- (void)confirmIntent:(id)intent withCompletion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  v8 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v8 confirmIntent:intentCopy withCompletion:completionCopy];
}

- (void)resolveIntentSlot:(id)slot forIntent:(id)intent completionBlock:(id)block
{
  blockCopy = block;
  intentCopy = intent;
  slotCopy = slot;
  v11 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v11 resolveIntentParameter:slotCopy forIntent:intentCopy completionBlock:blockCopy];
}

- (void)resolveIntentSlots:(id)slots forIntent:(id)intent completionBlock:(id)block
{
  blockCopy = block;
  intentCopy = intent;
  slotsCopy = slots;
  v11 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v11 resolveIntentParameters:slotsCopy forIntent:intentCopy completionBlock:blockCopy];
}

- (void)getIntentParameterDefaultValue:(id)value forIntent:(id)intent completionBlock:(id)block
{
  blockCopy = block;
  intentCopy = intent;
  valueCopy = value;
  v11 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v11 getIntentParameterDefaultValue:valueCopy forIntent:intentCopy completionBlock:blockCopy];
}

- (void)getIntentParameterOptions:(id)options forIntent:(id)intent searchTerm:(id)term completionBlock:(id)block
{
  blockCopy = block;
  termCopy = term;
  intentCopy = intent;
  optionsCopy = options;
  v14 = [(_INExtensionContext *)self _intentDelivererForIntent:intentCopy];
  [v14 getIntentParameterOptions:optionsCopy forIntent:intentCopy searchTerm:termCopy completionBlock:blockCopy];
}

- (id)_intentDelivererForIntent:(id)intent
{
  intentDeliverer = self->_intentDeliverer;
  if (!intentDeliverer)
  {
    v5 = [INIntentDeliverer alloc];
    queue = self->_queue;
    _auxiliaryConnection = [(_INExtensionContext *)self _auxiliaryConnection];
    v8 = _auxiliaryConnection;
    if (_auxiliaryConnection)
    {
      [_auxiliaryConnection auditToken];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    v9 = [(INIntentDeliverer *)v5 initWithQueue:queue auditToken:v12];
    v10 = self->_intentDeliverer;
    self->_intentDeliverer = v9;

    [(INIntentDelivering *)self->_intentDeliverer setDelegate:self];
    intentDeliverer = self->_intentDeliverer;
  }

  return intentDeliverer;
}

- (_INExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v8.receiver = self;
  v8.super_class = _INExtensionContext;
  v5 = [(_INExtensionContext *)&v8 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  v6 = v5;
  if (v5)
  {
    [(_INExtensionContext *)v5 _commonInit];
  }

  return v6;
}

- (_INExtensionContext)initWithInputItems:(id)items extension:(id)extension
{
  result = [(_INExtensionContext *)self initWithInputItems:items privateIntentHandlerProvider:extension];
  if (result)
  {
    result->_isPrivateExtension = 0;
  }

  return result;
}

- (_INExtensionContext)initWithInputItems:(id)items privateIntentHandlerProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = _INExtensionContext;
  v8 = [(_INExtensionContext *)&v11 initWithInputItems:items];
  v9 = v8;
  if (v8)
  {
    [(_INExtensionContext *)v8 _commonInit];
    objc_storeStrong(&v9->_extensionHandler, provider);
    v9->_isPrivateExtension = 1;
  }

  return v9;
}

@end