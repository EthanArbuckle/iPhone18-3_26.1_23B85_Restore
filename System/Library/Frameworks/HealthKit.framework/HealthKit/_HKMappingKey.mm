@interface _HKMappingKey
- (BOOL)isEqual:(id)a3;
- (id)initWithObject:(void *)a3 andKey:;
- (uint64_t)objectMatches:(uint64_t)result;
@end

@implementation _HKMappingKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      v6 = v4;
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

- (id)initWithObject:(void *)a3 andKey:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = _HKMappingKey;
    a1 = objc_msgSendSuper2(&v10, sel_init);
    if (a1)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", v5];
      v8 = a1[1];
      a1[1] = v7;

      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
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