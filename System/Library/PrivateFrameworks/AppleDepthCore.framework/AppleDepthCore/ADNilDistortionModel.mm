@interface ADNilDistortionModel
- (ADNilDistortionModel)initWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation ADNilDistortionModel

- (ADNilDistortionModel)initWithDictionary:(id)a3
{
  v4 = objc_opt_new();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 1;
  if (v4 && self != v4)
  {
    v6 = [(ADNilDistortionModel *)v4 isMemberOfClass:objc_opt_class()];
  }

  return v6;
}

@end