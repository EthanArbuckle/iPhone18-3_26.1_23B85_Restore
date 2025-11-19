@interface _INUIExtensionContext
- (CGSize)_bestAllowedSizeForAllowedSizesDictionary:(id)a3;
- (CGSize)hostedViewMaximumAllowedSize;
- (CGSize)hostedViewMinimumAllowedSize;
- (_INUIExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (_INUIRemoteViewControllerServing)viewController;
- (id)_errorHandlingHostProxy;
- (id)interfaceParametersDescription;
- (void)_requestHandlingOfIntent:(id)a3;
- (void)_willBeginEditing;
- (void)configureForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7;
- (void)desiresInteractivity:(id)a3;
- (void)queryRepresentedPropertiesWithCompletion:(id)a3;
- (void)setExtensionContextState:(id)a3 completion:(id)a4;
- (void)viewWasCancelled;
@end

@implementation _INUIExtensionContext

- (_INUIRemoteViewControllerServing)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)viewWasCancelled
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___INUIExtensionContext_viewWasCancelled__block_invoke;
  block[3] = &unk_27872BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)queryRepresentedPropertiesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66___INUIExtensionContext_queryRepresentedPropertiesWithCompletion___block_invoke;
  v6[3] = &unk_27872BD68;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)desiresInteractivity:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46___INUIExtensionContext_desiresInteractivity___block_invoke;
  v6[3] = &unk_27872BD68;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)configureForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101___INUIExtensionContext_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke;
  v18[3] = &unk_27872BA00;
  v18[4] = self;
  v19 = v12;
  v22 = a5;
  v23 = a6;
  v20 = v13;
  v21 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v18);
}

- (void)_willBeginEditing
{
  v2 = [(_INUIExtensionContext *)self _errorHandlingHostProxy];
  [v2 willBeginEditing];
}

- (void)_requestHandlingOfIntent:(id)a3
{
  v5 = a3;
  if (INThisProcessHasEntitlement())
  {
    v4 = [(_INUIExtensionContext *)self _errorHandlingHostProxy];
    [v4 requestHandlingOfIntent:v5];
  }
}

- (id)interfaceParametersDescription
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(_INUIExtensionContextState *)self->_currentExtensionContextState interfaceSections];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v24 = self;
    do
    {
      v7 = [(_INUIExtensionContextState *)self->_currentExtensionContextState interfaceSections];
      v8 = [v7 objectAtIndex:v6];

      if (v6)
      {
        [v3 appendString:@"\n\n"];
      }

      [v3 appendFormat:@"Section %zd:\n", ++v6];
      [v3 appendString:@"\tParameters:\n"];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [v8 parameters];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = NSStringFromClass([v14 parameterClass]);
            v16 = [v14 parameterKeyPath];
            [v3 appendFormat:@"\t\t%@ - %@\n", v15, v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      v17 = [v8 interactiveBehavior];
      v18 = @"None";
      if ((v17 - 1) <= 2)
      {
        v18 = off_27872BA20[v17 - 1];
      }

      [v3 appendFormat:@"\tInteractive Behavior: %@", v18];

      self = v24;
      v19 = [(_INUIExtensionContextState *)v24->_currentExtensionContextState interfaceSections];
      v20 = [v19 count];
    }

    while (v6 < v20);
  }

  v21 = [v3 copy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (CGSize)_bestAllowedSizeForAllowedSizesDictionary:(id)a3
{
  v3 = _INUIUtilitiesBestFittingSizeForSizeBySystemVersionDictionary(a3);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)hostedViewMaximumAllowedSize
{
  v3 = [(_INUIExtensionContextState *)self->_currentExtensionContextState hostedViewMaximumAllowedSizes];
  [(_INUIExtensionContext *)self _bestAllowedSizeForAllowedSizesDictionary:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)hostedViewMinimumAllowedSize
{
  v3 = [(_INUIExtensionContextState *)self->_currentExtensionContextState hostedViewMinimumAllowedSizes];
  [(_INUIExtensionContext *)self _bestAllowedSizeForAllowedSizesDictionary:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setExtensionContextState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v9 = a4;
  currentExtensionContextState = self->_currentExtensionContextState;
  self->_currentExtensionContextState = v6;

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (id)_errorHandlingHostProxy
{
  v2 = [(_INUIExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_439];

  return v3;
}

- (_INUIExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v10.receiver = self;
  v10.super_class = _INUIExtensionContext;
  v5 = [(_INUIExtensionContext *)&v10 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5];
  v6 = v5;
  if (v5)
  {
    currentExtensionContextState = v5->_currentExtensionContextState;
    v5->_currentExtensionContextState = 0;

    v8 = [MEMORY[0x277CD3F08] sharedPreferences];
    [v8 _updateWithExtensionContext:v6];
  }

  return v6;
}

@end