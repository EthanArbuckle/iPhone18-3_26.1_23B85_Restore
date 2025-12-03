@interface NEIKEv2RekeyChildContext
- (id)description;
@end

@implementation NEIKEv2RekeyChildContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    childID = self->_childID;
  }

  else
  {
    childID = 0;
  }

  childID = [v3 initWithFormat:@"rekey child context with child id %u", childID];

  return childID;
}

@end