@interface _MSSCellularDataEnabledInvocation
- (BOOL)enabled;
- (_MSSCellularDataEnabledInvocation)initWithSpecifier:(id)a3 changeHandler:(id)a4;
- (id)_cellularDataEnabledForSpecifier:(id)a3;
- (void)_setCellularDataEnabled:(id)a3 forSpecifier:(id)a4;
@end

@implementation _MSSCellularDataEnabledInvocation

- (BOOL)enabled
{
  v2 = [(_MSSCellularDataEnabledInvocation *)self _cellularDataEnabledForSpecifier:self->_specifier];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_cellularDataEnabledForSpecifier:(id)a3
{
  v4 = a3;
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

- (void)_setCellularDataEnabled:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
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

- (_MSSCellularDataEnabledInvocation)initWithSpecifier:(id)a3 changeHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
    objc_storeStrong(&v11->_specifier, a3);
    v13 = objc_retainBlock(v10);
    changeHandler = v12->_changeHandler;
    v12->_changeHandler = v13;

    WeakRetained = objc_loadWeakRetained(&v8[OBJC_IVAR___PSSpecifier_target]);
    objc_storeWeak(&v12->_target, WeakRetained);

    v12->_getter = *&v8[OBJC_IVAR___PSSpecifier_getter];
    v12->_setter = *&v8[OBJC_IVAR___PSSpecifier_setter];
    objc_storeWeak(&v8[OBJC_IVAR___PSSpecifier_target], v12);
    *&v8[OBJC_IVAR___PSSpecifier_getter] = "_cellularDataEnabledForSpecifier:";
    *&v8[OBJC_IVAR___PSSpecifier_setter] = "_setCellularDataEnabled:forSpecifier:";
  }

  return v12;
}

@end