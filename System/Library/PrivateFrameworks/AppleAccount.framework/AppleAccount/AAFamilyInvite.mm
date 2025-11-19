@interface AAFamilyInvite
- (BOOL)isEqual:(id)a3;
@end

@implementation AAFamilyInvite

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AAFamilyInvite *)v4 code];
      v6 = [v5 isEqualToString:self->_code];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end