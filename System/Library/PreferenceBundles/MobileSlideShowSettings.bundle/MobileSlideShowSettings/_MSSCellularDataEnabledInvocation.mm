@interface _MSSCellularDataEnabledInvocation
- (BOOL)enabled;
- (_MSSCellularDataEnabledInvocation)initWithSpecifier:(id)specifier changeHandler:(id)handler;
- (id)_cellularDataEnabledForSpecifier:(id)specifier;
- (void)_setCellularDataEnabled:(id)enabled forSpecifier:(id)specifier;
@end

@implementation _MSSCellularDataEnabledInvocation

- (BOOL)enabled
{
  v2 = [(_MSSCellularDataEnabledInvocation *)self _cellularDataEnabledForSpecifier:self->_specifier];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)_cellularDataEnabledForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v6 = WeakRetained;
  getter = self->_getter;
  if (getter)
  {
    [WeakRetained getter];
  }

  else
  {
    [WeakRetained 0];
  }
  v8 = ;

  return v8;
}

- (void)_setCellularDataEnabled:(id)enabled forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v9 = WeakRetained;
  setter = self->_setter;
  if (setter)
  {
    v11 = self->_setter;
    [WeakRetained setter];
  }

  else
  {
    [WeakRetained 0];
  }

  v12 = *(self->_changeHandler + 2);

  v12();
}

- (_MSSCellularDataEnabledInvocation)initWithSpecifier:(id)specifier changeHandler:(id)handler
{
  specifierCopy = specifier;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (specifierCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MSSCellularDataSettingsController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"specifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v18 = +[NSAssertionHandler currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"MSSCellularDataSettingsController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"changeHandler"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = _MSSCellularDataEnabledInvocation;
  v11 = [(_MSSCellularDataEnabledInvocation *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_specifier, specifier);
    v13 = objc_retainBlock(v10);
    changeHandler = v12->_changeHandler;
    v12->_changeHandler = v13;

    WeakRetained = objc_loadWeakRetained(&specifierCopy[OBJC_IVAR___PSSpecifier_target]);
    objc_storeWeak(&v12->_target, WeakRetained);

    v12->_getter = *&specifierCopy[OBJC_IVAR___PSSpecifier_getter];
    v12->_setter = *&specifierCopy[OBJC_IVAR___PSSpecifier_setter];
    objc_storeWeak(&specifierCopy[OBJC_IVAR___PSSpecifier_target], v12);
    *&specifierCopy[OBJC_IVAR___PSSpecifier_getter] = "_cellularDataEnabledForSpecifier:";
    *&specifierCopy[OBJC_IVAR___PSSpecifier_setter] = "_setCellularDataEnabled:forSpecifier:";
  }

  return v12;
}

@end