@interface CPEntity
- (CPEntity)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPEntity

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CPEntity;
  v2 = [(CPEntity *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

- (CPEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPEntity *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPEntityIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPEntity *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"CPEntityIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPEntity;
  v4 = [(CPEntity *)&v8 description];
  identifier = [(CPEntity *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {UUID: %@}", v4, identifier];

  return v6;
}

@end