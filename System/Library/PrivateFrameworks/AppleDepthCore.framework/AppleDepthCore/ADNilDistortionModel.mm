@interface ADNilDistortionModel
- (ADNilDistortionModel)initWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
@end

@implementation ADNilDistortionModel

- (ADNilDistortionModel)initWithDictionary:(id)dictionary
{
  v4 = objc_opt_new();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v6 = 1;
  if (equalCopy && self != equalCopy)
  {
    v6 = [(ADNilDistortionModel *)equalCopy isMemberOfClass:objc_opt_class()];
  }

  return v6;
}

@end