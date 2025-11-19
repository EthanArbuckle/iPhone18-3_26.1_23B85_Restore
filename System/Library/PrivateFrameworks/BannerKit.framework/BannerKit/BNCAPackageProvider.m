@interface BNCAPackageProvider
- (BNCAPackageProvider)initWithCoder:(id)a3;
- (BNCAPackageProvider)initWithPackageName:(id)a3 inBundle:(id)a4 state:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BNCAPackageProvider

- (BNCAPackageProvider)initWithPackageName:(id)a3 inBundle:(id)a4 state:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 length])
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNCAPackageProvider initWithPackageName:a2 inBundle:self state:?];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [BNCAPackageProvider initWithPackageName:a2 inBundle:self state:?];
LABEL_3:
  if (![v11 length])
  {
    [BNCAPackageProvider initWithPackageName:a2 inBundle:self state:?];
  }

  v20.receiver = self;
  v20.super_class = BNCAPackageProvider;
  v12 = [(BNCAPackageProvider *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [v10 copy];
    bundle = v12->_bundle;
    v12->_bundle = v15;

    v17 = [v11 copy];
    state = v12->_state;
    v12->_state = v17;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_bundle forKey:@"bundle"];
  [v5 encodeObject:self->_state forKey:@"state"];
}

- (BNCAPackageProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];

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