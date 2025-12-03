@interface AUv3HostIdentifier
- (AUv3HostIdentifier)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AUv3HostIdentifier

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUv3HostIdentifier;
  [(AUv3HostIdentifier *)&v2 dealloc];
}

- (AUv3HostIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AUv3HostIdentifier;
  v5 = [(AUv3HostIdentifier *)&v10 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

@end