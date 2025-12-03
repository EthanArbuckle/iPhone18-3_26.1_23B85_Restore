@interface ASDBundle
+ (id)bundleWithIdentifier:(id)identifier;
- (ASDBundle)initWithCoder:(id)coder;
- (ASDBundle)initWithIdentifier:(id)identifier;
@end

@implementation ASDBundle

+ (id)bundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

- (ASDBundle)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ASDBundle;
  v5 = [(ASDBundle *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (ASDBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];

  if (v5)
  {
    self = [(ASDBundle *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end