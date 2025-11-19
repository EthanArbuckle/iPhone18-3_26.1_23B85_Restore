@interface NavSignLayoutBase
- (double)navSignView:(id)a3 alternateFontLineSpacingForMajorText:(BOOL)a4;
- (id)navSignView:(id)a3 alternateFontForMajorText:(BOOL)a4;
- (id)navSignView:(id)a3 preferredFontForMajorText:(BOOL)a4;
@end

@implementation NavSignLayoutBase

- (double)navSignView:(id)a3 alternateFontLineSpacingForMajorText:(BOOL)a4
{
  result = 33.0;
  if (!a4)
  {
    return 30.0;
  }

  return result;
}

- (id)navSignView:(id)a3 alternateFontForMajorText:(BOOL)a4
{
  v4 = 27.0;
  if (a4)
  {
    v4 = 30.0;
  }

  v5 = &UIFontWeightHeavy;
  if (!a4)
  {
    v5 = &UIFontWeightMedium;
  }

  v6 = [UIFont systemFontOfSize:a3 weight:v4, *v5];

  return v6;
}

- (id)navSignView:(id)a3 preferredFontForMajorText:(BOOL)a4
{
  v4 = &UIFontWeightHeavy;
  if (!a4)
  {
    v4 = &UIFontWeightMedium;
  }

  return [UIFont systemFontOfSize:a3 weight:30.0, *v4];
}

@end