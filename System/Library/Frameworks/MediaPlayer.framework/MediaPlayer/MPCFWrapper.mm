@interface MPCFWrapper
- (MPCFWrapper)initWithCFType:(void *)a3;
- (void)dealloc;
@end

@implementation MPCFWrapper

- (void)dealloc
{
  if (!self->_nullRef)
  {
    CFRelease(self->_refValue);
  }

  v3.receiver = self;
  v3.super_class = MPCFWrapper;
  [(MPCFWrapper *)&v3 dealloc];
}

- (MPCFWrapper)initWithCFType:(void *)a3
{
  v3 = a3;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = MPCFWrapper;
    v4 = [(MPCFWrapper *)&v6 init];
    if (v4)
    {
      CFRetain(v3);
      v4->_refValue = v3;
    }

    self = v4;
    v3 = self;
  }

  else
  {
    self->_nullRef = 1;
  }

  return v3;
}

@end