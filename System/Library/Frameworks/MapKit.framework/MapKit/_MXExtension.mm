@interface _MXExtension
- (BOOL)_isIntentExtension;
- (BOOL)_isMapsExtension;
- (BOOL)_setEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)canSupportIntent:(id)intent;
- (BOOL)canSupportIntentClass:(Class)class;
- (BOOL)isEnabled;
- (NSDictionary)attributes;
- (NSDictionary)infoDictionary;
- (NSExtension)extension;
- (NSSet)capabilities;
- (NSString)containingAppDisplayName;
- (NSString)displayName;
- (NSString)extensionPointIdentifier;
- (_MXExtension)initWithExtensionIdentifier:(id)identifier extensionProvider:(id)provider;
- (_MXExtensionProvider)provider;
- (id)_containingAppIdentifer;
- (id)_iconWithFormat:(int)format;
- (id)confirmIntent:(id)intent expectResponseClass:(Class)class withCompletion:(id)completion;
- (id)description;
- (id)handleIntent:(id)intent expectResponseClass:(Class)class withCompletion:(id)completion;
- (id)handleRequest:(id)request requestDispatcher:(id)dispatcher completion:(id)completion;
- (id)resolveIntentSlot:(id)slot forIntent:(id)intent completionBlock:(id)block;
- (id)siblingExtensions;
- (id)startSendingUpdatesForIntent:(id)intent toObserver:(id)observer;
- (id)startSendingUpdatesForRequest:(id)request requestDispatcher:(id)dispatcher toObserver:(id)observer;
- (unint64_t)type;
- (void)_loadCacheItems:(id)items;
- (void)startExtensionServiceWithInputItems:(id)items begin:(id)begin completion:(id)completion;
@end

@implementation _MXExtension

- (_MXExtensionProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (id)_iconWithFormat:(int)format
{
  v3 = *&format;
  extension = [(_MXExtension *)self extension];
  v5 = [extension _iconWithFormat:v3];

  return v5;
}

- (id)_containingAppIdentifer
{
  extension = [(_MXExtension *)self extension];
  _containingAppIdentifer = [extension _containingAppIdentifer];

  return _containingAppIdentifer;
}

- (id)siblingExtensions
{
  provider = [(_MXExtension *)self provider];
  _containingAppIdentifer = [(_MXExtension *)self _containingAppIdentifer];
  v5 = [provider siblingExtensionsWithContainingAppIdentifer:_containingAppIdentifer];

  return v5;
}

- (BOOL)_isIntentExtension
{
  extensionPointIdentifier = [(_MXExtension *)self extensionPointIdentifier];
  if ([extensionPointIdentifier isEqualToString:*MEMORY[0x1E696E580]])
  {
    v4 = 1;
  }

  else
  {
    extensionPointIdentifier2 = [(_MXExtension *)self extensionPointIdentifier];
    v4 = [extensionPointIdentifier2 isEqualToString:*MEMORY[0x1E696E588]];
  }

  return v4;
}

- (BOOL)_isMapsExtension
{
  extensionPointIdentifier = [(_MXExtension *)self extensionPointIdentifier];
  if ([extensionPointIdentifier isEqualToString:@"com.apple.maps.services"])
  {
    v4 = 1;
  }

  else
  {
    extensionPointIdentifier2 = [(_MXExtension *)self extensionPointIdentifier];
    v4 = [extensionPointIdentifier2 isEqualToString:@"com.apple.maps.ui-services"];
  }

  return v4;
}

- (BOOL)_setEnabled:(BOOL)enabled error:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v8 = WeakRetained;
  if (enabled)
  {
    v9 = [WeakRetained _enableExtension:self error:error];
  }

  else
  {
    v9 = [WeakRetained _disableExtension:self error:error];
  }

  v10 = v9;

  return v10;
}

- (NSExtension)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v4 = [WeakRetained _extensionWithIdentifier:self->_identifier];

  return v4;
}

- (NSString)containingAppDisplayName
{
  extension = [(_MXExtension *)self extension];
  _containingAppDisplayName = [extension _containingAppDisplayName];

  return _containingAppDisplayName;
}

- (NSString)displayName
{
  extension = [(_MXExtension *)self extension];
  _displayName = [extension _displayName];

  return _displayName;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p> ", objc_opt_class(), self];
  [v3 appendFormat:@"{ bundle identifier: %@; ", self->_identifier];
  extension = [(_MXExtension *)self extension];
  extensionPointIdentifier = [extension extensionPointIdentifier];
  type = [(_MXExtension *)self type];
  v7 = @"Non-UI";
  if (type == 1)
  {
    v7 = @"UI";
  }

  [v3 appendFormat:@"ExtensionPointName: %@; %@ }", extensionPointIdentifier, v7];

  v8 = [v3 copy];

  return v8;
}

- (NSSet)capabilities
{
  v17 = *MEMORY[0x1E69E9840];
  attributes = [(_MXExtension *)self attributes];
  v3 = [attributes objectForKey:@"MapsExtensionCapabilities"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = [MEMORY[0x1E695DFD8] setWithArray:{v4, v12}];
  }

  else
  {
LABEL_13:
    v9 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = v9;

  return v10;
}

- (unint64_t)type
{
  extension = [(_MXExtension *)self extension];
  _mapExtensionType = [extension _mapExtensionType];

  return _mapExtensionType;
}

- (BOOL)isEnabled
{
  extension = [(_MXExtension *)self extension];
  optedIn = [extension optedIn];

  return optedIn;
}

- (NSDictionary)attributes
{
  extension = [(_MXExtension *)self extension];
  attributes = [extension attributes];

  return attributes;
}

- (NSDictionary)infoDictionary
{
  extension = [(_MXExtension *)self extension];
  infoDictionary = [extension infoDictionary];

  return infoDictionary;
}

- (NSString)extensionPointIdentifier
{
  extension = [(_MXExtension *)self extension];
  extensionPointIdentifier = [extension extensionPointIdentifier];

  return extensionPointIdentifier;
}

- (_MXExtension)initWithExtensionIdentifier:(id)identifier extensionProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = _MXExtension;
  v8 = [(_MXExtension *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeWeak(&v8->_provider, providerCopy);
  }

  return v8;
}

- (void)startExtensionServiceWithInputItems:(id)items begin:(id)begin completion:(id)completion
{
  beginCopy = begin;
  completionCopy = completion;
  v9 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104___MXExtension_ridesharing_willBeDepreicatedSoon__startExtensionServiceWithInputItems_begin_completion___block_invoke;
  v13[3] = &unk_1E76C9B98;
  v14 = v9;
  v15 = beginCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = v9;
  v12 = beginCopy;
  [(_MXExtensionService *)v11 connectExtensionWithHandler:v13];
}

- (BOOL)canSupportIntentClass:(Class)class
{
  extension = [(_MXExtension *)self extension];
  LOBYTE(class) = [extension _canSupportIntentClass:class];

  return class;
}

- (BOOL)canSupportIntent:(id)intent
{
  intentCopy = intent;
  extension = [(_MXExtension *)self extension];
  v6 = [extension _canSupportIntent:intentCopy];

  return v6;
}

- (id)startSendingUpdatesForRequest:(id)request requestDispatcher:(id)dispatcher toObserver:(id)observer
{
  observerCopy = observer;
  dispatcherCopy = dispatcher;
  requestCopy = request;
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v12 = [(_MXExtensionService *)v11 startSendingUpdatesForRequest:requestCopy requestDispatcher:dispatcherCopy toObserver:observerCopy];

  return v12;
}

- (id)handleRequest:(id)request requestDispatcher:(id)dispatcher completion:(id)completion
{
  completionCopy = completion;
  dispatcherCopy = dispatcher;
  requestCopy = request;
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87___MXExtension_MXExtensionRequestHandling__handleRequest_requestDispatcher_completion___block_invoke;
  v16[3] = &unk_1E76C9B70;
  v17 = v11;
  v18 = completionCopy;
  v12 = v11;
  v13 = completionCopy;
  v14 = [(_MXExtensionService *)v12 handleRequest:requestCopy requestDispatcher:dispatcherCopy completion:v16];

  return v14;
}

- (void)_loadCacheItems:(id)items
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42___MXExtension_INIntent___loadCacheItems___block_invoke;
  v3[3] = &unk_1E76CD760;
  v3[4] = self;
  [MEMORY[0x1E696EA10] deserializeCacheItems:items completion:v3];
}

- (id)startSendingUpdatesForIntent:(id)intent toObserver:(id)observer
{
  observerCopy = observer;
  intentCopy = intent;
  v8 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v9 = [(_MXExtensionService *)v8 startSendingUpdatesForIntent:intentCopy toObserver:observerCopy];

  return v9;
}

- (id)handleIntent:(id)intent expectResponseClass:(Class)class withCompletion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  identifier = [intentCopy identifier];
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74___MXExtension_INIntent__handleIntent_expectResponseClass_withCompletion___block_invoke;
  v17[3] = &unk_1E76CD6E8;
  v17[4] = self;
  v18 = v11;
  v19 = identifier;
  v20 = completionCopy;
  v12 = identifier;
  v13 = v11;
  v14 = completionCopy;
  v15 = [(_MXExtensionService *)v13 handleIntent:intentCopy expectResponseClass:class withCompletion:v17];

  return v15;
}

- (id)confirmIntent:(id)intent expectResponseClass:(Class)class withCompletion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  identifier = [intentCopy identifier];
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75___MXExtension_INIntent__confirmIntent_expectResponseClass_withCompletion___block_invoke;
  v17[3] = &unk_1E76CD6E8;
  v17[4] = self;
  v18 = v11;
  v19 = identifier;
  v20 = completionCopy;
  v12 = identifier;
  v13 = v11;
  v14 = completionCopy;
  v15 = [(_MXExtensionService *)v13 confirmIntent:intentCopy expectResponseClass:class withCompletion:v17];

  return v15;
}

- (id)resolveIntentSlot:(id)slot forIntent:(id)intent completionBlock:(id)block
{
  blockCopy = block;
  intentCopy = intent;
  slotCopy = slot;
  identifier = [intentCopy identifier];
  v12 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70___MXExtension_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke;
  v18[3] = &unk_1E76CD6C0;
  v20 = identifier;
  v21 = blockCopy;
  v19 = v12;
  v13 = identifier;
  v14 = v12;
  v15 = blockCopy;
  v16 = [(_MXExtensionService *)v14 resolveIntentSlot:slotCopy forIntent:intentCopy completionBlock:v18];

  return v16;
}

@end