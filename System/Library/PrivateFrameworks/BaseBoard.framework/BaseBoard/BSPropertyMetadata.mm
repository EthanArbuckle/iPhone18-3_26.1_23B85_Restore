@interface BSPropertyMetadata
- (BOOL)isNumber;
- (id)description;
- (void)setClassType:(uint64_t)a1;
- (void)setDefaultValue:(uint64_t)a1;
@end

@implementation BSPropertyMetadata

- (BOOL)isNumber
{
  if (result)
  {
    v1 = *(result + 24);
    return !v1 || v1 == objc_opt_class();
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = self->_name;
    v7 = self->_defaultKey;
    defaultValue = self->_defaultValue;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    defaultValue = 0;
  }

  v9 = [v3 stringWithFormat:@"<%@:%p name=%@, defaultKey=%@, defaultValue=%@>", v5, self, v6, v7, defaultValue];

  return v9;
}

- (void)setClassType:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)setDefaultValue:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

@end