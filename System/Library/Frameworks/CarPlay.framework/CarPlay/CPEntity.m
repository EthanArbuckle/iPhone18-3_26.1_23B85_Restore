@interface CPEntity
- (CPEntity)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPEntity

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CPEntity;
  v2 = [(CPEntity *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

- (CPEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPEntity *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPEntityIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPEntity *)self identifier];
  [v4 encodeObject:v5 forKey:@"CPEntityIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPEntity;
  v4 = [(CPEntity *)&v8 description];
  v5 = [(CPEntity *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {UUID: %@}", v4, v5];

  return v6;
}

@end