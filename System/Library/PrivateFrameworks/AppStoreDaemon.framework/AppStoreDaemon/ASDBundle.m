@interface ASDBundle
+ (id)bundleWithIdentifier:(id)a3;
- (ASDBundle)initWithCoder:(id)a3;
- (ASDBundle)initWithIdentifier:(id)a3;
@end

@implementation ASDBundle

+ (id)bundleWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

- (ASDBundle)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDBundle;
  v5 = [(ASDBundle *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (ASDBundle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];

  if (v5)
  {
    self = [(ASDBundle *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end