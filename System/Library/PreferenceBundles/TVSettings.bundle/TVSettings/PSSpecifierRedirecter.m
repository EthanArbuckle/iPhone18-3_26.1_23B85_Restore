@interface PSSpecifierRedirecter
- (PSSpecifierRedirecter)initWithSpecifier:(id)a3;
- (SEL)originalSpecifierGetter;
- (SEL)originalSpecifierSetter;
- (id)originalSpecifierTarget;
- (id)performGetter:(id)a3;
- (void)performSetter:(id)a3 specifier:(id)a4;
@end

@implementation PSSpecifierRedirecter

- (PSSpecifierRedirecter)initWithSpecifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PSSpecifierRedirecter;
  v5 = [(PSSpecifierRedirecter *)&v8 init];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&v4[OBJC_IVAR___PSSpecifier_target]);
    objc_storeWeak(&v5->_originalSpecifierTarget, WeakRetained);

    v5->_originalSpecifierGetter = *&v4[OBJC_IVAR___PSSpecifier_getter];
    v5->_originalSpecifierSetter = *&v4[OBJC_IVAR___PSSpecifier_setter];
  }

  return v5;
}

- (void)performSetter:(id)a3 specifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_originalSpecifierSetter)
  {
    originalSpecifierSetter = self->_originalSpecifierSetter;
  }

  else
  {
    originalSpecifierSetter = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_originalSpecifierTarget);
  v9 = sub_673C(originalSpecifierSetter, WeakRetained, v10, v6);
}

- (id)performGetter:(id)a3
{
  if (self->_originalSpecifierGetter)
  {
    originalSpecifierGetter = self->_originalSpecifierGetter;
  }

  else
  {
    originalSpecifierGetter = 0;
  }

  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_originalSpecifierTarget);
  v7 = sub_673C(originalSpecifierGetter, WeakRetained, v5, 0);

  return v7;
}

- (id)originalSpecifierTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_originalSpecifierTarget);

  return WeakRetained;
}

- (SEL)originalSpecifierGetter
{
  if (self->_originalSpecifierGetter)
  {
    return self->_originalSpecifierGetter;
  }

  else
  {
    return 0;
  }
}

- (SEL)originalSpecifierSetter
{
  if (self->_originalSpecifierSetter)
  {
    return self->_originalSpecifierSetter;
  }

  else
  {
    return 0;
  }
}

@end