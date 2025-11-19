@interface _BSCompoundAssertionState
- (id)description;
@end

@implementation _BSCompoundAssertionState

- (id)description
{
  v2 = @"NO";
  if (self->_active)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"active:%@ %@", v2, self->_context];
}

@end