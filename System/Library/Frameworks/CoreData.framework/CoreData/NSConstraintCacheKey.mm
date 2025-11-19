@interface NSConstraintCacheKey
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation NSConstraintCacheKey

- (void)dealloc
{
  self->_values = 0;
  v3.receiver = self;
  v3.super_class = NSConstraintCacheKey;
  [(NSConstraintCacheKey *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSConstraintCacheKey: %@>", self->_values];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = *(a3 + 1);
    v8 = [(NSArray *)self->_values count];
    if (v8)
    {
      v9 = 0;
      v10 = v8 - 1;
      do
      {
        v6 = [-[NSArray objectAtIndex:](self->_values objectAtIndex:{v9), "isEqual:", objc_msgSend(v7, "objectAtIndex:", v9)}];
        if (v6)
        {
          v11 = v10 == v9;
        }

        else
        {
          v11 = 1;
        }

        ++v9;
      }

      while (!v11);
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end