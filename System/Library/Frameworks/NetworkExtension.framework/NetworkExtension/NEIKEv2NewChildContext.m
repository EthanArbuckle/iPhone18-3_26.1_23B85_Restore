@interface NEIKEv2NewChildContext
- (id)description;
@end

@implementation NEIKEv2NewChildContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    childSA = self->_childSA;
    if (childSA)
    {
      childSA = childSA->_childID;
    }
  }

  else
  {
    childSA = 0;
  }

  v5 = [v3 initWithFormat:@"new child request with id %u", childSA];

  return v5;
}

@end