@interface STSiriModelObject
- (STSiriModelObject)initWithCoder:(id)coder;
- (void)setIdentifier:(id)identifier;
@end

@implementation STSiriModelObject

- (STSiriModelObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STSiriModelObject;
  v5 = [(STSiriModelObject *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;
}

@end