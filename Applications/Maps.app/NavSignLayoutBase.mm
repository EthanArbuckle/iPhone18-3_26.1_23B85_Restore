@interface NavSignLayoutBase
- (double)navSignView:(id)view alternateFontLineSpacingForMajorText:(BOOL)text;
- (id)navSignView:(id)view alternateFontForMajorText:(BOOL)text;
- (id)navSignView:(id)view preferredFontForMajorText:(BOOL)text;
@end

@implementation NavSignLayoutBase

- (double)navSignView:(id)view alternateFontLineSpacingForMajorText:(BOOL)text
{
  result = 33.0;
  if (!text)
  {
    return 30.0;
  }

  return result;
}

- (id)navSignView:(id)view alternateFontForMajorText:(BOOL)text
{
  v4 = 27.0;
  if (text)
  {
    v4 = 30.0;
  }

  v5 = &UIFontWeightHeavy;
  if (!text)
  {
    v5 = &UIFontWeightMedium;
  }

  v6 = [UIFont systemFontOfSize:view weight:v4, *v5];

  return v6;
}

- (id)navSignView:(id)view preferredFontForMajorText:(BOOL)text
{
  v4 = &UIFontWeightHeavy;
  if (!text)
  {
    v4 = &UIFontWeightMedium;
  }

  return [UIFont systemFontOfSize:view weight:30.0, *v4];
}

@end