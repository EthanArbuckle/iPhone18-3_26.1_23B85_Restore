@interface NTKParmesanImageAnalysis
- (BOOL)isEqual:(id)equal;
@end

@implementation NTKParmesanImageAnalysis

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_bright == v5[9] && self->_brightForVibrant == v5[10] && self->_brightForGlass == v5[11])
    {
      v6 = self->_complexBackground == v5[8];

      return v6;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

@end