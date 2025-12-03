@interface BSPropertyMetadata
- (BOOL)isNumber;
- (id)description;
- (void)setClassType:(uint64_t)type;
- (void)setDefaultValue:(uint64_t)value;
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

  defaultValue = [v3 stringWithFormat:@"<%@:%p name=%@, defaultKey=%@, defaultValue=%@>", v5, self, v6, v7, defaultValue];

  return defaultValue;
}

- (void)setClassType:(uint64_t)type
{
  if (type)
  {
    objc_storeStrong((type + 24), a2);
  }
}

- (void)setDefaultValue:(uint64_t)value
{
  if (value)
  {
    objc_storeStrong((value + 64), a2);
  }
}

@end