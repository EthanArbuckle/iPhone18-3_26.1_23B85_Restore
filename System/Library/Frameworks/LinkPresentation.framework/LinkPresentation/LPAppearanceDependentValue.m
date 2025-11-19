@interface LPAppearanceDependentValue
- (LPAppearanceDependentValue)initWithProvider:(id)a3;
- (id)valueForAppearance:(id)a3;
@end

@implementation LPAppearanceDependentValue

- (LPAppearanceDependentValue)initWithProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPAppearanceDependentValue;
  v5 = [(LPAppearanceDependentValue *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    provider = v5->_provider;
    v5->_provider = v6;

    v8 = v5;
  }

  return v5;
}

- (id)valueForAppearance:(id)a3
{
  v3 = (*(self->_provider + 2))();

  return v3;
}

@end