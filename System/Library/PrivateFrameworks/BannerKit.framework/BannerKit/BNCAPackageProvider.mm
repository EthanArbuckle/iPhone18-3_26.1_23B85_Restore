@interface BNCAPackageProvider
- (BNCAPackageProvider)initWithCoder:(id)coder;
- (BNCAPackageProvider)initWithPackageName:(id)name inBundle:(id)bundle state:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BNCAPackageProvider

- (BNCAPackageProvider)initWithPackageName:(id)name inBundle:(id)bundle state:(id)state
{
  nameCopy = name;
  bundleCopy = bundle;
  stateCopy = state;
  if ([nameCopy length])
  {
    if (bundleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNCAPackageProvider initWithPackageName:a2 inBundle:self state:?];
    if (bundleCopy)
    {
      goto LABEL_3;
    }
  }

  [BNCAPackageProvider initWithPackageName:a2 inBundle:self state:?];
LABEL_3:
  if (![stateCopy length])
  {
    [BNCAPackageProvider initWithPackageName:a2 inBundle:self state:?];
  }

  v20.receiver = self;
  v20.super_class = BNCAPackageProvider;
  v12 = [(BNCAPackageProvider *)&v20 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [bundleCopy copy];
    bundle = v12->_bundle;
    v12->_bundle = v15;

    v17 = [stateCopy copy];
    state = v12->_state;
    v12->_state = v17;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_bundle forKey:@"bundle"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
}

- (BNCAPackageProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];

  v8 = [(BNCAPackageProvider *)self initWithPackageName:v5 inBundle:v6 state:v7];
  return v8;
}

- (void)initWithPackageName:(uint64_t)a1 inBundle:(uint64_t)a2 state:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNCAPackageProvider.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"[name length] > 0"}];
}

- (void)initWithPackageName:(uint64_t)a1 inBundle:(uint64_t)a2 state:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNCAPackageProvider.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];
}

- (void)initWithPackageName:(uint64_t)a1 inBundle:(uint64_t)a2 state:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNCAPackageProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"[state length] > 0"}];
}

@end