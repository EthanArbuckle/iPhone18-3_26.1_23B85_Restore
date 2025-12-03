@interface MFStringAccumulator
- (id)string;
- (void)appendString:(id)string;
@end

@implementation MFStringAccumulator

- (void)appendString:(id)string
{
  stringCopy = string;
  v5 = self->_mutable;
  v10 = stringCopy;
  if (v5)
  {
    [(NSMutableString *)v5 appendString:stringCopy];
  }

  else
  {
    if (self->_immutable)
    {
      stringCopy = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@%@", self->_immutable, stringCopy];
      v7 = self->_mutable;
      self->_mutable = stringCopy;

      v8 = 0;
    }

    else
    {
      v8 = stringCopy;
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