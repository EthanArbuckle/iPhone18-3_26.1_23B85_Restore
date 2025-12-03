@interface PSSpecifierRedirecter
- (PSSpecifierRedirecter)initWithSpecifier:(id)specifier;
- (SEL)originalSpecifierGetter;
- (SEL)originalSpecifierSetter;
- (id)originalSpecifierTarget;
- (id)performGetter:(id)getter;
- (void)performSetter:(id)setter specifier:(id)specifier;
@end

@implementation PSSpecifierRedirecter

- (PSSpecifierRedirecter)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = PSSpecifierRedirecter;
  v5 = [(PSSpecifierRedirecter *)&v8 init];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&specifierCopy[OBJC_IVAR___PSSpecifier_target]);
    objc_storeWeak(&v5->_originalSpecifierTarget, WeakRetained);

    v5->_originalSpecifierGetter = *&specifierCopy[OBJC_IVAR___PSSpecifier_getter];
    v5->_originalSpecifierSetter = *&specifierCopy[OBJC_IVAR___PSSpecifier_setter];
  }

  return v5;
}

- (void)performSetter:(id)setter specifier:(id)specifier
{
  setterCopy = setter;
  specifierCopy = specifier;
  if (self->_originalSpecifierSetter)
  {
    originalSpecifierSetter = self->_originalSpecifierSetter;
  }

  else
  {
    originalSpecifierSetter = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_originalSpecifierTarget);
  v9 = sub_673C(originalSpecifierSetter, WeakRetained, setterCopy, specifierCopy);
}

- (id)performGetter:(id)getter
{
  if (self->_originalSpecifierGetter)
  {
    originalSpecifierGetter = self->_originalSpecifierGetter;
  }

  else
  {
    originalSpecifierGetter = 0;
  }

  getterCopy = getter;
  WeakRetained = objc_loadWeakRetained(&self->_originalSpecifierTarget);
  v7 = sub_673C(originalSpecifierGetter, WeakRetained, getterCopy, 0);

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