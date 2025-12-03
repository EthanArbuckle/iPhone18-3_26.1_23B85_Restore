@interface RestoreBootstrapInfo
- (id)description;
@end

@implementation RestoreBootstrapInfo

- (id)description
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 16, 1);
    preflightOnly = self->_preflightOnly;
  }

  else
  {
    v3 = 0;
    preflightOnly = 0;
  }

  preflightOnly = [NSString stringWithFormat:@"{ reason: %@ preflightOnly: %d }", v3, preflightOnly];

  return preflightOnly;
}

@end