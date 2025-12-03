@interface NavPedestrianSignLayout
+ (id)sharedPedestrianSignLayout;
- (CGSize)maneuverViewSizeForSign:(id)sign;
- (double)baselineMarginBetweenLabelsForSign:(id)sign;
- (double)labelBaselineToInlineShieldTopForSign:(id)sign;
- (double)maneuverViewTopMarginForSign:(id)sign;
- (double)navSignView:(id)view alternateFontLineSpacingForMajorText:(BOOL)text;
- (double)shieldViewTopMarginForSign:(id)sign;
- (double)textBottomMarginForSign:(id)sign;
- (double)textTopMarginForSign:(id)sign;
- (id)navSignView:(id)view alternateFontForMajorText:(BOOL)text;
- (id)navSignView:(id)view preferredFontForMajorText:(BOOL)text;
@end

@implementation NavPedestrianSignLayout

- (double)shieldViewTopMarginForSign:(id)sign
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 shieldViewTopMarginForSign:sign];
  return v3 * 0.800000012;
}

- (double)maneuverViewTopMarginForSign:(id)sign
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 maneuverViewTopMarginForSign:sign];
  return v3 * 0.800000012;
}

- (CGSize)maneuverViewSizeForSign:(id)sign
{
  v7.receiver = self;
  v7.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v7 maneuverViewSizeForSign:sign];
  v4 = v3 * 0.800000012;
  v6 = v5 * 0.800000012;
  result.height = v6;
  result.width = v4;
  return result;
}

- (double)navSignView:(id)view alternateFontLineSpacingForMajorText:(BOOL)text
{
  v6.receiver = self;
  v6.super_class = NavPedestrianSignLayout;
  [(NavSignLayoutBase *)&v6 navSignView:view alternateFontLineSpacingForMajorText:text];
  return v4 * 0.800000012;
}

- (id)navSignView:(id)view alternateFontForMajorText:(BOOL)text
{
  v10.receiver = self;
  v10.super_class = NavPedestrianSignLayout;
  v4 = [(NavManeverSignLayoutBase *)&v10 navSignView:view alternateFontForMajorText:text];
  v5 = v4;
  if (v4)
  {
    fontDescriptor = [v4 fontDescriptor];
    [v5 pointSize];
    v8 = [UIFont fontWithDescriptor:fontDescriptor size:v7 * 0.829999983];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)navSignView:(id)view preferredFontForMajorText:(BOOL)text
{
  v10.receiver = self;
  v10.super_class = NavPedestrianSignLayout;
  v4 = [(NavManeverSignLayoutBase *)&v10 navSignView:view preferredFontForMajorText:text];
  v5 = v4;
  if (v4)
  {
    fontDescriptor = [v4 fontDescriptor];
    [v5 pointSize];
    v8 = [UIFont fontWithDescriptor:fontDescriptor size:v7 * 0.829999983];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)labelBaselineToInlineShieldTopForSign:(id)sign
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavSignLayoutBase *)&v5 labelBaselineToInlineShieldTopForSign:sign];
  return v3 * 0.800000012;
}

- (double)baselineMarginBetweenLabelsForSign:(id)sign
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 baselineMarginBetweenLabelsForSign:sign];
  return v3 * 0.800000012;
}

- (double)textBottomMarginForSign:(id)sign
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 textBottomMarginForSign:sign];
  return v3 * 0.800000012;
}

- (double)textTopMarginForSign:(id)sign
{
  v5.receiver = self;
  v5.super_class = NavPedestrianSignLayout;
  [(NavManeverSignLayoutBase *)&v5 textTopMarginForSign:sign];
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