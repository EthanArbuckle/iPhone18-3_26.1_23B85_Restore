@interface NavPedestrianSignLayout
+ (id)sharedPedestrianSignLayout;
- (CGSize)maneuverViewSizeForSign:(id)a3;
- (double)baselineMarginBetweenLabelsForSign:(id)a3;
- (double)labelBaselineToInlineShieldTopForSign:(id)a3;
- (double)maneuverViewTopMarginForSign:(id)a3;
- (double)navSignView:(id)a3 alternateFontLineSpacingForMajorText:(BOOL)a4;
- (double)shieldViewTopMarginForSign:(id)a3;
- (double)textBottomMarginForSign:(id)a3;
- (double)textTopMarginForSign:(id)a3;
- (id)navSignView:(id)a3 alternateFontForMajorText:(BOOL)a4;
- (id)navSignView:(id)a3 preferredFontForMajorText:(BOOL)a4;
@end

@implementation NavPedestrianSignLayout

- (double)shieldViewTopMarginForSign:(id)a3
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 shieldViewTopMarginForSign:a3];
  return v3 * 0.800000012;
}

- (double)maneuverViewTopMarginForSign:(id)a3
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 maneuverViewTopMarginForSign:a3];
  return v3 * 0.800000012;
}

- (CGSize)maneuverViewSizeForSign:(id)a3
{
  v7.receiver = self;
  v7.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v7 maneuverViewSizeForSign:a3];
  v4 = v3 * 0.800000012;
  v6 = v5 * 0.800000012;
  result.height = v6;
  result.width = v4;
  return result;
}

- (double)navSignView:(id)a3 alternateFontLineSpacingForMajorText:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = NavPedestrianSignLayout;
  [(NavSignLayoutBase *)&v6 navSignView:a3 alternateFontLineSpacingForMajorText:a4];
  return v4 * 0.800000012;
}

- (id)navSignView:(id)a3 alternateFontForMajorText:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = NavPedestrianSignLayout;
  v4 = [(NavManeverSignLayoutBase *)&v10 navSignView:a3 alternateFontForMajorText:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fontDescriptor];
    [v5 pointSize];
    v8 = [UIFont fontWithDescriptor:v6 size:v7 * 0.829999983];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)navSignView:(id)a3 preferredFontForMajorText:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = NavPedestrianSignLayout;
  v4 = [(NavManeverSignLayoutBase *)&v10 navSignView:a3 preferredFontForMajorText:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fontDescriptor];
    [v5 pointSize];
    v8 = [UIFont fontWithDescriptor:v6 size:v7 * 0.829999983];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)labelBaselineToInlineShieldTopForSign:(id)a3
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavSignLayoutBase *)&v5 labelBaselineToInlineShieldTopForSign:a3];
  return v3 * 0.800000012;
}

- (double)baselineMarginBetweenLabelsForSign:(id)a3
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 baselineMarginBetweenLabelsForSign:a3];
  return v3 * 0.800000012;
}

- (double)textBottomMarginForSign:(id)a3
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 textBottomMarginForSign:a3];
  return v3 * 0.800000012;
}

- (double)textTopMarginForSign:(id)a3
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 textTopMarginForSign:a3];
  return v3 * 0.800000012;
}

+ (id)sharedPedestrianSignLayout
{
  if (qword_10195F6A0 != -1)
  {
    dispatch_once(&qword_10195F6A0, &stru_10165CCE0);
  }

  v3 = qword_10195F698;

  return v3;
}

@end