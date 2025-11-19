@interface NEIKEv2DeleteChildContext
- (id)description;
@end

@implementation NEIKEv2DeleteChildContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    childID = self->_childID;
    reasonError = self->_reasonError;
  }

  else
  {
    childID = 0;
    reasonError = 0;
  }

  v6 = [v3 initWithFormat:@"delete child with id %u, reason %@", childID, reasonError];

  return v6;
}

@end