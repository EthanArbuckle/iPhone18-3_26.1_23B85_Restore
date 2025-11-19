@interface TUIHostingIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToType:(id)a3 identifier:(id)a4 parameters:(id)a5 modelIdentifier:(id)a6;
- (TUIHostingIdentifier)identifierWithoutModelIdentifier;
- (TUIHostingIdentifier)initWithType:(id)a3 identifier:(id)a4 parameters:(id)a5 modelIdentifier:(id)a6;
- (id)description;
@end

@implementation TUIHostingIdentifier

- (TUIHostingIdentifier)initWithType:(id)a3 identifier:(id)a4 parameters:(id)a5 modelIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TUIHostingIdentifier;
  v15 = [(TUIHostingIdentifier *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, a3);
    objc_storeStrong(&v16->_identifier, a4);
    objc_storeStrong(&v16->_parameters, a5);
    objc_storeStrong(&v16->_modelIdentifier, a6);
  }

  return v16;
}

- (TUIHostingIdentifier)identifierWithoutModelIdentifier
{
  if (self->_modelIdentifier)
  {
    v2 = [[TUIHostingIdentifier alloc] initWithType:self->_type identifier:self->_identifier parameters:self->_parameters modelIdentifier:0];
  }

  else
  {
    v2 = self;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    type = self->_type;
    if ((type == v7[1] || [(NSString *)type isEqualToString:?]) && ((identifier = self->_identifier, identifier == v7[2]) || [(NSString *)identifier isEqualToString:?]) && ((parameters = self->_parameters, parameters == v7[4]) || [parameters isEqual:?]))
    {
      modelIdentifier = self->_modelIdentifier;
      if (modelIdentifier == v7[3])
      {
        v6 = 1;
      }

      else
      {
        v6 = [(TUIIdentifier *)modelIdentifier isEqual:?];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToType:(id)a3 identifier:(id)a4 parameters:(id)a5 modelIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  type = self->_type;
  if ((type == v10 || [(NSString *)type isEqualToString:v10]) && ((identifier = self->_identifier, identifier == v11) || [(NSString *)identifier isEqualToString:v11]) && ((parameters = self->_parameters, parameters == v12) || [parameters isEqual:v12]))
  {
    modelIdentifier = self->_modelIdentifier;
    if (modelIdentifier == v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = [(TUIIdentifier *)modelIdentifier isEqual:v13];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  type = self->_type;
  identifier = self->_identifier;
  v7 = [(TUIIdentifier *)self->_modelIdentifier tui_identifierToString];
  v8 = [NSString stringWithFormat:@"<%@ type='%@' identifier='%@' modelIdentifier='%@'>", v4, type, identifier, v7];

  return v8;
}

@end