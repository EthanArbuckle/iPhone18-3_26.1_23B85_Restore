@interface NTKParmesanImageAnalysis
- (BOOL)isEqual:(id)a3;
@end

@implementation NTKParmesanImageAnalysis

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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