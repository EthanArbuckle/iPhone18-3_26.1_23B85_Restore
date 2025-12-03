@interface VNPersonsModelAlgorithmVIPv2
- (BOOL)isEqual:(id)equal;
@end

@implementation VNPersonsModelAlgorithmVIPv2

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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