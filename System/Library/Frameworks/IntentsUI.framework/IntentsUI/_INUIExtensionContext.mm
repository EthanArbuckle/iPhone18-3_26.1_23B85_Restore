@interface _INUIExtensionContext
- (CGSize)_bestAllowedSizeForAllowedSizesDictionary:(id)dictionary;
- (CGSize)hostedViewMaximumAllowedSize;
- (CGSize)hostedViewMinimumAllowedSize;
- (_INUIExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (_INUIRemoteViewControllerServing)viewController;
- (id)_errorHandlingHostProxy;
- (id)interfaceParametersDescription;
- (void)_requestHandlingOfIntent:(id)intent;
- (void)_willBeginEditing;
- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion;
- (void)desiresInteractivity:(id)interactivity;
- (void)queryRepresentedPropertiesWithCompletion:(id)completion;
- (void)setExtensionContextState:(id)state completion:(id)completion;
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

- (void)queryRepresentedPropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66___INUIExtensionContext_queryRepresentedPropertiesWithCompletion___block_invoke;
  v6[3] = &unk_27872BD68;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)desiresInteractivity:(id)interactivity
{
  interactivityCopy = interactivity;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46___INUIExtensionContext_desiresInteractivity___block_invoke;
  v6[3] = &unk_27872BD68;
  v6[4] = self;
  v7 = interactivityCopy;
  v5 = interactivityCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion
{
  parametersCopy = parameters;
  interactionCopy = interaction;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101___INUIExtensionContext_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke;
  v18[3] = &unk_27872BA00;
  v18[4] = self;
  v19 = parametersCopy;
  behaviorCopy = behavior;
  contextCopy = context;
  v20 = interactionCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = interactionCopy;
  v17 = parametersCopy;
  dispatch_async(MEMORY[0x277D85CD0], v18);
}

- (void)_willBeginEditing
{
  _errorHandlingHostProxy = [(_INUIExtensionContext *)self _errorHandlingHostProxy];
  [_errorHandlingHostProxy willBeginEditing];
}

- (void)_requestHandlingOfIntent:(id)intent
{
  intentCopy = intent;
  if (INThisProcessHasEntitlement())
  {
    _errorHandlingHostProxy = [(_INUIExtensionContext *)self _errorHandlingHostProxy];
    [_errorHandlingHostProxy requestHandlingOfIntent:intentCopy];
  }
}

- (id)interfaceParametersDescription
{
  v30 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  interfaceSections = [(_INUIExtensionContextState *)self->_currentExtensionContextState interfaceSections];
  v5 = [interfaceSections count];

  if (v5)
  {
    v6 = 0;
    selfCopy = self;
    do
    {
      interfaceSections2 = [(_INUIExtensionContextState *)self->_currentExtensionContextState interfaceSections];
      v8 = [interfaceSections2 objectAtIndex:v6];

      if (v6)
      {
        [string appendString:@"\n\n"];
      }

      [string appendFormat:@"Section %zd:\n", ++v6];
      [string appendString:@"\tParameters:\n"];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      parameters = [v8 parameters];
      v10 = [parameters countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(parameters);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = NSStringFromClass([v14 parameterClass]);
            parameterKeyPath = [v14 parameterKeyPath];
            [string appendFormat:@"\t\t%@ - %@\n", v15, parameterKeyPath];
          }

          v11 = [parameters countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      interactiveBehavior = [v8 interactiveBehavior];
      v18 = @"None";
      if ((interactiveBehavior - 1) <= 2)
      {
        v18 = off_27872BA20[interactiveBehavior - 1];
      }

      [string appendFormat:@"\tInteractive Behavior: %@", v18];

      self = selfCopy;
      interfaceSections3 = [(_INUIExtensionContextState *)selfCopy->_currentExtensionContextState interfaceSections];
      v20 = [interfaceSections3 count];
    }

    while (v6 < v20);
  }

  v21 = [string copy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (CGSize)_bestAllowedSizeForAllowedSizesDictionary:(id)dictionary
{
  v3 = _INUIUtilitiesBestFittingSizeForSizeBySystemVersionDictionary(dictionary);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)hostedViewMaximumAllowedSize
{
  hostedViewMaximumAllowedSizes = [(_INUIExtensionContextState *)self->_currentExtensionContextState hostedViewMaximumAllowedSizes];
  [(_INUIExtensionContext *)self _bestAllowedSizeForAllowedSizesDictionary:hostedViewMaximumAllowedSizes];
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
  hostedViewMinimumAllowedSizes = [(_INUIExtensionContextState *)self->_currentExtensionContextState hostedViewMinimumAllowedSizes];
  [(_INUIExtensionContext *)self _bestAllowedSizeForAllowedSizesDictionary:hostedViewMinimumAllowedSizes];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setExtensionContextState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  currentExtensionContextState = self->_currentExtensionContextState;
  self->_currentExtensionContextState = stateCopy;

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

- (id)_errorHandlingHostProxy
{
  _auxiliaryConnection = [(_INUIExtensionContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_439];

  return v3;
}

- (_INUIExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v10.receiver = self;
  v10.super_class = _INUIExtensionContext;
  v5 = [(_INUIExtensionContext *)&v10 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  v6 = v5;
  if (v5)
  {
    currentExtensionContextState = v5->_currentExtensionContextState;
    v5->_currentExtensionContextState = 0;

    mEMORY[0x277CD3F08] = [MEMORY[0x277CD3F08] sharedPreferences];
    [mEMORY[0x277CD3F08] _updateWithExtensionContext:v6];
  }

  return v6;
}

@end