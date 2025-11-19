@interface DSHardwareButtonEventHandler
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandler:(id)a3;
- (SEL)action;
- (void)setAction:(SEL)a3;
@end

@implementation DSHardwareButtonEventHandler

- (BOOL)isEqualToHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DSHardwareButtonEventHandler *)self target];
    v6 = [v4 target];

    v7 = [(DSHardwareButtonEventHandler *)self action];
    v8 = [v4 action];
    v9 = [(DSHardwareButtonEventHandler *)self preventPropagation];
    v10 = [v4 preventPropagation];
    v11 = [(DSHardwareButtonEventHandler *)self events];
    v12 = (v11 == [v4 events]) & ~(v9 ^ v10);
    if (v7 != v8)
    {
      v12 = 0;
    }

    v13 = v5 == v6 && v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DSHardwareButtonEventHandler *)self isEqualToHandler:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end