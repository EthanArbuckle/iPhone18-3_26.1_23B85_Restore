@interface ASCredentialServiceIdentifier
- (ASCredentialServiceIdentifier)initWithCoder:(id)a3;
- (ASCredentialServiceIdentifier)initWithIdentifier:(NSString *)identifier type:(ASCredentialServiceIdentifierType)type;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCredentialServiceIdentifier

- (ASCredentialServiceIdentifier)initWithIdentifier:(NSString *)identifier type:(ASCredentialServiceIdentifierType)type
{
  v6 = identifier;
  v12.receiver = self;
  v12.super_class = ASCredentialServiceIdentifier;
  v7 = [(ASCredentialServiceIdentifier *)&v12 init];
  if (v7)
  {
    v8 = [(NSString *)v6 copy];
    v9 = v7->_identifier;
    v7->_identifier = v8;

    v7->_type = type;
    v10 = v7;
  }

  return v7;
}

- (ASCredentialServiceIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ASCredentialServiceIdentifierValue"];
  v6 = v5;
  v7 = &stru_1F28DE020;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 decodeInt64ForKey:@"ASCredentialServiceIdentifierType"];
  if (v9 >= 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(ASCredentialServiceIdentifier *)self initWithIdentifier:v8 type:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"ASCredentialServiceIdentifierValue"];
  [v5 encodeInt64:self->_type forKey:@"ASCredentialServiceIdentifierType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;
  type = self->_type;

  return [v4 initWithIdentifier:identifier type:type];
}

- (id)description
{
  type = self->_type;
  if (type)
  {
    if (type == 1)
    {
      v4 = @"url";
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v4 = [v5 description];
    }
  }

  else
  {
    v4 = @"domain";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p type=%@; identifier=%@>", objc_opt_class(), self, v4, self->_identifier];;

  return v6;
}

@end