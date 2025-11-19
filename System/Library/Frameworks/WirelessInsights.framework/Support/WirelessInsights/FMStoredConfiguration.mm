@interface FMStoredConfiguration
- (id)description;
- (id)init:(int64_t)a3 prevValues:(id)a4 values:(id)a5;
@end

@implementation FMStoredConfiguration

- (id)init:(int64_t)a3 prevValues:(id)a4 values:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FMStoredConfiguration;
  v11 = [(FMStoredConfiguration *)&v15 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_version = a3;
    objc_storeStrong(&v11->_prevValues, a4);
    objc_storeStrong(p_isa + 3, a5);
    v13 = p_isa;
  }

  return p_isa;
}

- (id)description
{
  v3 = [(FMStoredConfiguration *)self version];
  v4 = [(FMStoredConfiguration *)self prevValues];
  v5 = [(FMStoredConfiguration *)self values];
  v6 = [NSString stringWithFormat:@"Version: %lld, prevValues: %@, values: %@", v3, v4, v5];

  return v6;
}

@end