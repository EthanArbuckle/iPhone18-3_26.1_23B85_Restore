@interface TUIHoverIdentifier
- (BOOL)isEqual:(id)equal;
- (TUIHoverIdentifier)initWithName:(id)name;
- (TUIHoverIdentifier)initWithName:(id)name identifier:(id)identifier;
- (id)anonymousIdentifier;
- (id)description;
@end

@implementation TUIHoverIdentifier

- (TUIHoverIdentifier)initWithName:(id)name identifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = TUIHoverIdentifier;
  v9 = [(TUIHoverIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

- (TUIHoverIdentifier)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TUIHoverIdentifier;
  v6 = [(TUIHoverIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = self->_name;
  tui_identifierToString = [(TUIIdentifier *)self->_identifier tui_identifierToString];
  v7 = [NSString stringWithFormat:@"<%@ name=%@ identifier=%@>", v4, name, tui_identifierToString];

  return v7;
}

- (id)anonymousIdentifier
{
  if (self->_identifier)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[TUIHoverIdentifier alloc] initWithName:self->_name];
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = equalCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  v9 = v7 == self;
  if (v7)
  {
    v10 = v7 == self;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    name = self->_name;
    if (name == v8->_name || [(NSString *)name isEqualToString:?])
    {
      identifier = self->_identifier;
      if (identifier == v8->_identifier)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(TUIIdentifier *)identifier isEqual:?];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end