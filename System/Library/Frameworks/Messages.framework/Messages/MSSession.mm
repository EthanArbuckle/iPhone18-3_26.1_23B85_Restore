@interface MSSession
- (BOOL)isEqual:(id)equal;
- (MSSession)init;
- (MSSession)initWithCoder:(id)coder;
- (MSSession)initWithIdentifier:(id)identifier;
- (id)description;
@end

@implementation MSSession

- (MSSession)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(MSSession *)self initWithIdentifier:uUID];

  return v4;
}

- (MSSession)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MSSession;
  v6 = [(MSSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (MSSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MSSession;
  v5 = [(MSSession *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      identifier = self->_identifier;
      identifier = [(MSSession *)equalCopy identifier];
      v8 = [(NSUUID *)identifier isEqual:identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v7 = [v3 stringWithFormat:@"<%@ %lx> - %@", v5, self, uUIDString];

  return v7;
}

@end