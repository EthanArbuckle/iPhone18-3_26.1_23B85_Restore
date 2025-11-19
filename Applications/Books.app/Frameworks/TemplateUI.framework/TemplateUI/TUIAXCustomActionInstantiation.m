@interface TUIAXCustomActionInstantiation
- (BOOL)invoke;
- (TUIAXCustomActionInstantiation)initWithCustomAction:(id)a3 arguments:(id)a4 axElement:(id)a5;
- (TUIAXElement)triggerAXElement;
@end

@implementation TUIAXCustomActionInstantiation

- (TUIAXCustomActionInstantiation)initWithCustomAction:(id)a3 arguments:(id)a4 axElement:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUIAXCustomActionInstantiation;
  v12 = [(TUIAXCustomActionInstantiation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_customAction, a3);
    objc_storeStrong(&v13->_additionalArguments, a4);
    objc_storeWeak(&v13->_triggerAXElement, v11);
  }

  return v13;
}

- (BOOL)invoke
{
  v3 = [(TUIElementBehaviorArgumentsMap *)self->_additionalArguments arguments];
  WeakRetained = objc_loadWeakRetained(&self->_triggerAXElement);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = [v3 objectForKeyedSubscript:@"sourceView"];

    if (!v6)
    {
      v7 = objc_loadWeakRetained(&self->_triggerAXElement);
      v8 = [(TUIAXCustomAction *)self->_customAction controlIdentifier];
      v9 = [v7 controlViewForOverrideIdentifier:v8];

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
        v3 = v13;
      }
    }
  }

  [(TUIAXCustomAction *)self->_customAction invokeWithArguments:v3];

  return 1;
}

- (TUIAXElement)triggerAXElement
{
  WeakRetained = objc_loadWeakRetained(&self->_triggerAXElement);

  return WeakRetained;
}

@end