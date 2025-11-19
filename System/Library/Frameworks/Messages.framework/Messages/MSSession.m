@interface MSSession
- (BOOL)isEqual:(id)a3;
- (MSSession)init;
- (MSSession)initWithCoder:(id)a3;
- (MSSession)initWithIdentifier:(id)a3;
- (id)description;
@end

@implementation MSSession

- (MSSession)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(MSSession *)self initWithIdentifier:v3];

  return v4;
}

- (MSSession)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSSession;
  v6 = [(MSSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (MSSession)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSSession;
  v5 = [(MSSession *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      identifier = self->_identifier;
      v7 = [(MSSession *)v4 identifier];
      v8 = [(NSUUID *)identifier isEqual:v7];
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
  v6 = [(NSUUID *)self->_identifier UUIDString];
  v7 = [v3 stringWithFormat:@"<%@ %lx> - %@", v5, self, v6];

  return v7;
}

@end