@interface MFStringAccumulator
- (id)string;
- (void)appendString:(id)a3;
@end

@implementation MFStringAccumulator

- (void)appendString:(id)a3
{
  v4 = a3;
  v5 = self->_mutable;
  v10 = v4;
  if (v5)
  {
    [(NSMutableString *)v5 appendString:v4];
  }

  else
  {
    if (self->_immutable)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@%@", self->_immutable, v4];
      v7 = self->_mutable;
      self->_mutable = v6;

      v8 = 0;
    }

    else
    {
      v8 = v4;
    }

    immutable = self->_immutable;
    self->_immutable = v8;
  }
}

- (id)string
{
  immutable = self->_immutable;
  if (!immutable)
  {
    immutable = self->_mutable;
  }

  return immutable;
}

@end