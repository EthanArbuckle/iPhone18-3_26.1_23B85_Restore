@interface STSiriModelObject
- (STSiriModelObject)initWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
@end

@implementation STSiriModelObject

- (STSiriModelObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSiriModelObject;
  v5 = [(STSiriModelObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;
}

@end