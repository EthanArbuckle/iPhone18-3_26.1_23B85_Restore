@interface ASKAtomicBox
- (ASKAtomicBox)initWithValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASKAtomicBox

- (ASKAtomicBox)initWithValue:(id)value
{
  valueCopy = value;
  v8.receiver = self;
  v8.super_class = ASKAtomicBox;
  v5 = [(ASKAtomicBox *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASKAtomicBox *)v5 setValue:valueCopy];
  }

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  value = [(ASKAtomicBox *)self value];
  v4 = [v2 stringWithFormat:@"AtomicBox(%@)", value];

  return v4;
}

- (unint64_t)hash
{
  value = [(ASKAtomicBox *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      value = [(ASKAtomicBox *)self value];
      value2 = [(ASKAtomicBox *)v5 value];

      v8 = [value isEqual:value2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end