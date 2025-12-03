@interface AAFamilyInvite
- (BOOL)isEqual:(id)equal;
@end

@implementation AAFamilyInvite

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      code = [(AAFamilyInvite *)equalCopy code];
      v6 = [code isEqualToString:self->_code];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end