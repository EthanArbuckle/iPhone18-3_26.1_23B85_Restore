@interface AUv3HostIdentifier
- (AUv3HostIdentifier)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUv3HostIdentifier

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUv3HostIdentifier;
  [(AUv3HostIdentifier *)&v2 dealloc];
}

- (AUv3HostIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AUv3HostIdentifier;
  v5 = [(AUv3HostIdentifier *)&v10 init];
  if (v5)
  {
    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_version forKey:@"version"];
  [v4 encodeObject:self->_name forKey:@"name"];
}

@end