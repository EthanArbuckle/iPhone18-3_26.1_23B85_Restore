@interface TUIHoverIdentifier
- (BOOL)isEqual:(id)a3;
- (TUIHoverIdentifier)initWithName:(id)a3;
- (TUIHoverIdentifier)initWithName:(id)a3 identifier:(id)a4;
- (id)anonymousIdentifier;
- (id)description;
@end

@implementation TUIHoverIdentifier

- (TUIHoverIdentifier)initWithName:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUIHoverIdentifier;
  v9 = [(TUIHoverIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

- (TUIHoverIdentifier)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIHoverIdentifier;
  v6 = [(TUIHoverIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = self->_name;
  v6 = [(TUIIdentifier *)self->_identifier tui_identifierToString];
  v7 = [NSString stringWithFormat:@"<%@ name=%@ identifier=%@>", v4, name, v6];

  return v7;
}

- (id)anonymousIdentifier
{
  if (self->_identifier)
  {
    v2 = self;
  }

  else
  {
    v2 = [[TUIHoverIdentifier alloc] initWithName:self->_name];
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
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