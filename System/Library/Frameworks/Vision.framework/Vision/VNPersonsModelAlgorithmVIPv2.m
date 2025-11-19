@interface VNPersonsModelAlgorithmVIPv2
- (BOOL)isEqual:(id)a3;
@end

@implementation VNPersonsModelAlgorithmVIPv2

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end