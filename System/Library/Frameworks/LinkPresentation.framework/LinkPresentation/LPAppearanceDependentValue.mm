@interface LPAppearanceDependentValue
- (LPAppearanceDependentValue)initWithProvider:(id)provider;
- (id)valueForAppearance:(id)appearance;
@end

@implementation LPAppearanceDependentValue

- (LPAppearanceDependentValue)initWithProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = LPAppearanceDependentValue;
  v5 = [(LPAppearanceDependentValue *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(providerCopy);
    provider = v5->_provider;
    v5->_provider = v6;

    v8 = v5;
  }

  return v5;
}

- (id)valueForAppearance:(id)appearance
{
  v3 = (*(self->_provider + 2))();

  return v3;
}

@end