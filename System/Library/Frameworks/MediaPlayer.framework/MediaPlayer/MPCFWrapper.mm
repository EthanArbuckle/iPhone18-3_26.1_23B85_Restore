@interface MPCFWrapper
- (MPCFWrapper)initWithCFType:(void *)type;
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

- (MPCFWrapper)initWithCFType:(void *)type
{
  selfCopy = type;
  if (type)
  {
    v6.receiver = self;
    v6.super_class = MPCFWrapper;
    v4 = [(MPCFWrapper *)&v6 init];
    if (v4)
    {
      CFRetain(selfCopy);
      v4->_refValue = selfCopy;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    self->_nullRef = 1;
  }

  return selfCopy;
}

@end