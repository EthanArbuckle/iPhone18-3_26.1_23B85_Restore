@interface TUIAXCustomActionInstantiation
- (BOOL)invoke;
- (TUIAXCustomActionInstantiation)initWithCustomAction:(id)action arguments:(id)arguments axElement:(id)element;
- (TUIAXElement)triggerAXElement;
@end

@implementation TUIAXCustomActionInstantiation

- (TUIAXCustomActionInstantiation)initWithCustomAction:(id)action arguments:(id)arguments axElement:(id)element
{
  actionCopy = action;
  argumentsCopy = arguments;
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = TUIAXCustomActionInstantiation;
  v12 = [(TUIAXCustomActionInstantiation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_customAction, action);
    objc_storeStrong(&v13->_additionalArguments, arguments);
    objc_storeWeak(&v13->_triggerAXElement, elementCopy);
  }

  return v13;
}

- (BOOL)invoke
{
  arguments = [(TUIElementBehaviorArgumentsMap *)self->_additionalArguments arguments];
  WeakRetained = objc_loadWeakRetained(&self->_triggerAXElement);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = [arguments objectForKeyedSubscript:@"sourceView"];

    if (!v6)
    {
      v7 = objc_loadWeakRetained(&self->_triggerAXElement);
      controlIdentifier = [(TUIAXCustomAction *)self->_customAction controlIdentifier];
      v9 = [v7 controlViewForOverrideIdentifier:controlIdentifier];

      if (v9)
      {
        v10 = [(TUIElementBehaviorArgumentsMap *)self->_additionalArguments mutableCopy];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_opt_new();
        }

        v13 = v12;

        [v13 setObject:v9 forKeyedSubscript:@"sourceView"];
        arguments = v13;
      }
    }
  }

  [(TUIAXCustomAction *)self->_customAction invokeWithArguments:arguments];

  return 1;
}

- (TUIAXElement)triggerAXElement
{
  WeakRetained = objc_loadWeakRetained(&self->_triggerAXElement);

  return WeakRetained;
}

@end