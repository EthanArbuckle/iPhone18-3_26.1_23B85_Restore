@interface TUIHostingIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToType:(id)type identifier:(id)identifier parameters:(id)parameters modelIdentifier:(id)modelIdentifier;
- (TUIHostingIdentifier)identifierWithoutModelIdentifier;
- (TUIHostingIdentifier)initWithType:(id)type identifier:(id)identifier parameters:(id)parameters modelIdentifier:(id)modelIdentifier;
- (id)description;
@end

@implementation TUIHostingIdentifier

- (TUIHostingIdentifier)initWithType:(id)type identifier:(id)identifier parameters:(id)parameters modelIdentifier:(id)modelIdentifier
{
  typeCopy = type;
  identifierCopy = identifier;
  parametersCopy = parameters;
  modelIdentifierCopy = modelIdentifier;
  v18.receiver = self;
  v18.super_class = TUIHostingIdentifier;
  v15 = [(TUIHostingIdentifier *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, type);
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v16->_parameters, parameters);
    objc_storeStrong(&v16->_modelIdentifier, modelIdentifier);
  }

  return v16;
}

- (TUIHostingIdentifier)identifierWithoutModelIdentifier
{
  if (self->_modelIdentifier)
  {
    selfCopy = [[TUIHostingIdentifier alloc] initWithType:self->_type identifier:self->_identifier parameters:self->_parameters modelIdentifier:0];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
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

- (BOOL)isEqualToType:(id)type identifier:(id)identifier parameters:(id)parameters modelIdentifier:(id)modelIdentifier
{
  typeCopy = type;
  identifierCopy = identifier;
  parametersCopy = parameters;
  modelIdentifierCopy = modelIdentifier;
  type = self->_type;
  if ((type == typeCopy || [(NSString *)type isEqualToString:typeCopy]) && ((identifier = self->_identifier, identifier == identifierCopy) || [(NSString *)identifier isEqualToString:identifierCopy]) && ((parameters = self->_parameters, parameters == parametersCopy) || [parameters isEqual:parametersCopy]))
  {
    modelIdentifier = self->_modelIdentifier;
    if (modelIdentifier == modelIdentifierCopy)
    {
      v18 = 1;
    }

    else
    {
      v18 = [(TUIIdentifier *)modelIdentifier isEqual:modelIdentifierCopy];
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
  tui_identifierToString = [(TUIIdentifier *)self->_modelIdentifier tui_identifierToString];
  v8 = [NSString stringWithFormat:@"<%@ type='%@' identifier='%@' modelIdentifier='%@'>", v4, type, identifier, tui_identifierToString];

  return v8;
}

@end