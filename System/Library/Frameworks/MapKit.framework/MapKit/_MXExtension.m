@interface _MXExtension
- (BOOL)_isIntentExtension;
- (BOOL)_isMapsExtension;
- (BOOL)_setEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)canSupportIntent:(id)a3;
- (BOOL)canSupportIntentClass:(Class)a3;
- (BOOL)isEnabled;
- (NSDictionary)attributes;
- (NSDictionary)infoDictionary;
- (NSExtension)extension;
- (NSSet)capabilities;
- (NSString)containingAppDisplayName;
- (NSString)displayName;
- (NSString)extensionPointIdentifier;
- (_MXExtension)initWithExtensionIdentifier:(id)a3 extensionProvider:(id)a4;
- (_MXExtensionProvider)provider;
- (id)_containingAppIdentifer;
- (id)_iconWithFormat:(int)a3;
- (id)confirmIntent:(id)a3 expectResponseClass:(Class)a4 withCompletion:(id)a5;
- (id)description;
- (id)handleIntent:(id)a3 expectResponseClass:(Class)a4 withCompletion:(id)a5;
- (id)handleRequest:(id)a3 requestDispatcher:(id)a4 completion:(id)a5;
- (id)resolveIntentSlot:(id)a3 forIntent:(id)a4 completionBlock:(id)a5;
- (id)siblingExtensions;
- (id)startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4;
- (id)startSendingUpdatesForRequest:(id)a3 requestDispatcher:(id)a4 toObserver:(id)a5;
- (unint64_t)type;
- (void)_loadCacheItems:(id)a3;
- (void)startExtensionServiceWithInputItems:(id)a3 begin:(id)a4 completion:(id)a5;
@end

@implementation _MXExtension

- (_MXExtensionProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (id)_iconWithFormat:(int)a3
{
  v3 = *&a3;
  v4 = [(_MXExtension *)self extension];
  v5 = [v4 _iconWithFormat:v3];

  return v5;
}

- (id)_containingAppIdentifer
{
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 _containingAppIdentifer];

  return v3;
}

- (id)siblingExtensions
{
  v3 = [(_MXExtension *)self provider];
  v4 = [(_MXExtension *)self _containingAppIdentifer];
  v5 = [v3 siblingExtensionsWithContainingAppIdentifer:v4];

  return v5;
}

- (BOOL)_isIntentExtension
{
  v3 = [(_MXExtension *)self extensionPointIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x1E696E580]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_MXExtension *)self extensionPointIdentifier];
    v4 = [v5 isEqualToString:*MEMORY[0x1E696E588]];
  }

  return v4;
}

- (BOOL)_isMapsExtension
{
  v3 = [(_MXExtension *)self extensionPointIdentifier];
  if ([v3 isEqualToString:@"com.apple.maps.services"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_MXExtension *)self extensionPointIdentifier];
    v4 = [v5 isEqualToString:@"com.apple.maps.ui-services"];
  }

  return v4;
}

- (BOOL)_setEnabled:(BOOL)a3 error:(id *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v8 = WeakRetained;
  if (a3)
  {
    v9 = [WeakRetained _enableExtension:self error:a4];
  }

  else
  {
    v9 = [WeakRetained _disableExtension:self error:a4];
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
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 _containingAppDisplayName];

  return v3;
}

- (NSString)displayName
{
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 _displayName];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p> ", objc_opt_class(), self];
  [v3 appendFormat:@"{ bundle identifier: %@; ", self->_identifier];
  v4 = [(_MXExtension *)self extension];
  v5 = [v4 extensionPointIdentifier];
  v6 = [(_MXExtension *)self type];
  v7 = @"Non-UI";
  if (v6 == 1)
  {
    v7 = @"UI";
  }

  [v3 appendFormat:@"ExtensionPointName: %@; %@ }", v5, v7];

  v8 = [v3 copy];

  return v8;
}

- (NSSet)capabilities
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(_MXExtension *)self attributes];
  v3 = [v2 objectForKey:@"MapsExtensionCapabilities"];

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
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 _mapExtensionType];

  return v3;
}

- (BOOL)isEnabled
{
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 optedIn];

  return v3;
}

- (NSDictionary)attributes
{
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 attributes];

  return v3;
}

- (NSDictionary)infoDictionary
{
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 infoDictionary];

  return v3;
}

- (NSString)extensionPointIdentifier
{
  v2 = [(_MXExtension *)self extension];
  v3 = [v2 extensionPointIdentifier];

  return v3;
}

- (_MXExtension)initWithExtensionIdentifier:(id)a3 extensionProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _MXExtension;
  v8 = [(_MXExtension *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeWeak(&v8->_provider, v7);
  }

  return v8;
}

- (void)startExtensionServiceWithInputItems:(id)a3 begin:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104___MXExtension_ridesharing_willBeDepreicatedSoon__startExtensionServiceWithInputItems_begin_completion___block_invoke;
  v13[3] = &unk_1E76C9B98;
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  [(_MXExtensionService *)v11 connectExtensionWithHandler:v13];
}

- (BOOL)canSupportIntentClass:(Class)a3
{
  v4 = [(_MXExtension *)self extension];
  LOBYTE(a3) = [v4 _canSupportIntentClass:a3];

  return a3;
}

- (BOOL)canSupportIntent:(id)a3
{
  v4 = a3;
  v5 = [(_MXExtension *)self extension];
  v6 = [v5 _canSupportIntent:v4];

  return v6;
}

- (id)startSendingUpdatesForRequest:(id)a3 requestDispatcher:(id)a4 toObserver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v12 = [(_MXExtensionService *)v11 startSendingUpdatesForRequest:v10 requestDispatcher:v9 toObserver:v8];

  return v12;
}

- (id)handleRequest:(id)a3 requestDispatcher:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87___MXExtension_MXExtensionRequestHandling__handleRequest_requestDispatcher_completion___block_invoke;
  v16[3] = &unk_1E76C9B70;
  v17 = v11;
  v18 = v8;
  v12 = v11;
  v13 = v8;
  v14 = [(_MXExtensionService *)v12 handleRequest:v10 requestDispatcher:v9 completion:v16];

  return v14;
}

- (void)_loadCacheItems:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42___MXExtension_INIntent___loadCacheItems___block_invoke;
  v3[3] = &unk_1E76CD760;
  v3[4] = self;
  [MEMORY[0x1E696EA10] deserializeCacheItems:a3 completion:v3];
}

- (id)startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v9 = [(_MXExtensionService *)v8 startSendingUpdatesForIntent:v7 toObserver:v6];

  return v9;
}

- (id)handleIntent:(id)a3 expectResponseClass:(Class)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 identifier];
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74___MXExtension_INIntent__handleIntent_expectResponseClass_withCompletion___block_invoke;
  v17[3] = &unk_1E76CD6E8;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v8;
  v12 = v10;
  v13 = v11;
  v14 = v8;
  v15 = [(_MXExtensionService *)v13 handleIntent:v9 expectResponseClass:a4 withCompletion:v17];

  return v15;
}

- (id)confirmIntent:(id)a3 expectResponseClass:(Class)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 identifier];
  v11 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75___MXExtension_INIntent__confirmIntent_expectResponseClass_withCompletion___block_invoke;
  v17[3] = &unk_1E76CD6E8;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v8;
  v12 = v10;
  v13 = v11;
  v14 = v8;
  v15 = [(_MXExtensionService *)v13 confirmIntent:v9 expectResponseClass:a4 withCompletion:v17];

  return v15;
}

- (id)resolveIntentSlot:(id)a3 forIntent:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 identifier];
  v12 = [[_MXExtensionService alloc] initWithExtensionProxy:self];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70___MXExtension_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke;
  v18[3] = &unk_1E76CD6C0;
  v20 = v11;
  v21 = v8;
  v19 = v12;
  v13 = v11;
  v14 = v12;
  v15 = v8;
  v16 = [(_MXExtensionService *)v14 resolveIntentSlot:v10 forIntent:v9 completionBlock:v18];

  return v16;
}

@end