@interface _HKMappingKey
- (BOOL)isEqual:(id)equal;
- (id)initWithObject:(void *)object andKey:;
- (uint64_t)objectMatches:(uint64_t)result;
@end

@implementation _HKMappingKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      v6 = equalCopy;
      if ([v6[1] isEqual:self->_addressOfObject])
      {
        v7 = [v6[2] isEqual:self->_key];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)initWithObject:(void *)object andKey:
{
  v5 = a2;
  objectCopy = object;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = _HKMappingKey;
    self = objc_msgSendSuper2(&v10, sel_init);
    if (self)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", v5];
      v8 = self[1];
      self[1] = v7;

      objc_storeStrong(self + 2, object);
    }
  }

  return self;
}

- (uint64_t)objectMatches:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = MEMORY[0x1E696AEC0];
    v4 = a2;
    v5 = [[v3 alloc] initWithFormat:@"%p", v4];

    v6 = [*(v2 + 8) isEqualToString:v5];
    return v6;
  }

  return result;
}

@end