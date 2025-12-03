@interface FMStoredConfiguration
- (id)description;
- (id)init:(int64_t)init prevValues:(id)values values:(id)a5;
@end

@implementation FMStoredConfiguration

- (id)init:(int64_t)init prevValues:(id)values values:(id)a5
{
  valuesCopy = values;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FMStoredConfiguration;
  v11 = [(FMStoredConfiguration *)&v15 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_version = init;
    objc_storeStrong(&v11->_prevValues, values);
    objc_storeStrong(p_isa + 3, a5);
    v13 = p_isa;
  }

  return p_isa;
}

- (id)description
{
  version = [(FMStoredConfiguration *)self version];
  prevValues = [(FMStoredConfiguration *)self prevValues];
  values = [(FMStoredConfiguration *)self values];
  v6 = [NSString stringWithFormat:@"Version: %lld, prevValues: %@, values: %@", version, prevValues, values];

  return v6;
}

@end