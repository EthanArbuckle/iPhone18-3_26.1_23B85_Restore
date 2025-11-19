@interface ABVCardParameter
- (ABVCardParameter)initWithName:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation ABVCardParameter

- (ABVCardParameter)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = ABVCardParameter;
  v4 = [(ABVCardParameter *)&v7 init];
  v4->_name = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4->_types = v5;
  if (a3)
  {
    [(NSMutableArray *)v5 addObject:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABVCardParameter;
  [(ABVCardParameter *)&v3 dealloc];
}

- (id)description
{
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"NONAME";
  }

  v4 = [MEMORY[0x1E696AD60] stringWithString:name];
  v5 = v4;
  if (self->_value)
  {
    [v4 appendFormat:@"=%@", self->_value];
  }

  if (self->_primary)
  {
    [v5 appendString:@" Primary"];
  }

  return v5;
}

@end