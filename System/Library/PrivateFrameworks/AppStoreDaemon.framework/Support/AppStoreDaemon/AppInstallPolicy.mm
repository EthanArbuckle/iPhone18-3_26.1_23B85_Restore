@interface AppInstallPolicy
- (BOOL)isEqual:(id)equal;
@end

@implementation AppInstallPolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self)
    {
      if (v5)
      {
        v7 = [v5[1] copy];
      }

      else
      {
        v7 = 0;
      }

      v8 = [(NSMutableDictionary *)self->_dictionary copy];
      LOBYTE(self) = [v8 isEqualToDictionary:v7];
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end