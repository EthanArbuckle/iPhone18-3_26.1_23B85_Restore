@interface NavManeverSignLayoutBase
- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewArrowMetricsForSign:(SEL)a3;
- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewJunctionArrowMetricsForSign:(SEL)a3;
- (BOOL)_shouldShowExitShieldForSign:(id)a3;
- (BOOL)_shouldShowManeuverViewForSign:(id)a3;
- (BOOL)navSignView:(id)a3 shouldAlignToTrailingForMajorText:(BOOL)a4;
- (CGSize)maneuverViewSizeForSign:(id)a3;
- (double)baselineMarginBetweenLabelsForSign:(id)a3;
- (double)navSignView:(id)a3 textTrailingMarginForMajorText:(BOOL)a4;
- (double)textBottomMarginForSign:(id)a3;
- (double)textTopMarginForSign:(id)a3;
- (id)navSignView:(id)a3 alternateFontForMajorText:(BOOL)a4;
- (id)navSignView:(id)a3 preferredFontForMajorText:(BOOL)a4;
- (int64_t)maneuverViewPositionForSign:(id)a3;
@end

@implementation NavManeverSignLayoutBase

- (int64_t)maneuverViewPositionForSign:(id)a3
{
  v3 = [a3 minorLabel];
  v4 = [v3 lineCount] > 2;

  return v4;
}

- (CGSize)maneuverViewSizeForSign:(id)a3
{
  v3 = 48.0;
  v4 = 58.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewJunctionArrowMetricsForSign:(SEL)a3
{
  *&retstr->var59 = 0u;
  *&retstr->var61 = 0u;
  *&retstr->var55 = 0u;
  *&retstr->var57 = 0u;
  *&retstr->var51 = 0u;
  *&retstr->var53 = 0u;
  *&retstr->var47 = 0u;
  *&retstr->var49 = 0u;
  *&retstr->var40 = 0u;
  *&retstr->var45 = 0u;
  *&retstr->var36 = 0u;
  *&retstr->var38 = 0u;
  *&retstr->var32 = 0u;
  *&retstr->var34 = 0u;
  *&retstr->var28 = 0u;
  *&retstr->var30 = 0u;
  *&retstr->var24 = 0u;
  *&retstr->var26 = 0u;
  *&retstr->var20 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  retstr->var5 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var1.height = 0u;
  *&retstr->var3 = 0u;
  *&retstr->var0 = 0u;
  return [SignStyle junctionArrowMetricsForStyle:0 scaledToMatchReferenceSize:0 forView:58.0, 58.0];
}

- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewArrowMetricsForSign:(SEL)a3
{
  *&retstr->var59 = 0u;
  *&retstr->var61 = 0u;
  *&retstr->var55 = 0u;
  *&retstr->var57 = 0u;
  *&retstr->var51 = 0u;
  *&retstr->var53 = 0u;
  *&retstr->var47 = 0u;
  *&retstr->var49 = 0u;
  *&retstr->var40 = 0u;
  *&retstr->var45 = 0u;
  *&retstr->var36 = 0u;
  *&retstr->var38 = 0u;
  *&retstr->var32 = 0u;
  *&retstr->var34 = 0u;
  *&retstr->var28 = 0u;
  *&retstr->var30 = 0u;
  *&retstr->var24 = 0u;
  *&retstr->var26 = 0u;
  *&retstr->var20 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  retstr->var5 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var1.height = 0u;
  *&retstr->var3 = 0u;
  *&retstr->var0 = 0u;
  return [SignStyle arrowMetricsForStyle:0 scaledToMatchReferenceSize:0 forView:58.0, 58.0];
}

- (id)navSignView:(id)a3 alternateFontForMajorText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 maneuverSign];
  v8 = [v7 maneuverSignType];

  if ((v8 - 1) > 1)
  {
    v14.receiver = self;
    v14.super_class = NavManeverSignLayoutBase;
    v11 = [(NavSignLayoutBase *)&v14 navSignView:v6 alternateFontForMajorText:v4];
  }

  else
  {
    if (v4)
    {
      v9 = UIFontWeightHeavy;
      v10 = 27.0;
    }

    else
    {
      v9 = UIFontWeightMedium;
      v10 = 24.0;
    }

    v11 = [UIFont systemFontOfSize:v10 weight:v9];
  }

  v12 = v11;

  return v12;
}

- (id)navSignView:(id)a3 preferredFontForMajorText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 maneuverSign];
  v8 = [v7 maneuverSignType];

  if ((v8 - 1) > 1)
  {
    v13.receiver = self;
    v13.super_class = NavManeverSignLayoutBase;
    v10 = [(NavSignLayoutBase *)&v13 navSignView:v6 preferredFontForMajorText:v4];
  }

  else
  {
    v9 = &UIFontWeightMedium;
    if (v4)
    {
      v9 = &UIFontWeightHeavy;
    }

    v10 = [UIFont systemFontOfSize:27.0 weight:*v9];
  }

  v11 = v10;

  return v11;
}

- (double)baselineMarginBetweenLabelsForSign:(id)a3
{
  v4 = a3;
  v5 = [v4 maneuverSign];
  v6 = [v5 maneuverSignType];

  if ((v6 - 1) >= 2)
  {
    v10.receiver = self;
    v10.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v10 baselineMarginBetweenLabelsForSign:v4];
    v7 = v8;
  }

  else
  {
    v7 = 32.0;
  }

  return v7;
}

- (double)textBottomMarginForSign:(id)a3
{
  v4 = a3;
  v5 = [v4 maneuverSign];
  v6 = [v5 maneuverSignType];

  if ((v6 - 1) > 1)
  {
    v11.receiver = self;
    v11.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v11 textBottomMarginForSign:v4];
    v8 = v9;
  }

  else
  {
    v7 = [v4 hasOnlySingleLineText];

    if (v7)
    {
      return 30.0;
    }

    else
    {
      return 23.0;
    }
  }

  return v8;
}

- (double)textTopMarginForSign:(id)a3
{
  v4 = a3;
  v5 = [v4 maneuverSign];
  v6 = [v5 maneuverSignType];

  if ((v6 - 1) > 1)
  {
    v11.receiver = self;
    v11.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v11 textTopMarginForSign:v4];
    v8 = v9;
  }

  else
  {
    v7 = [v4 hasOnlySingleLineText];

    if (v7)
    {
      return 50.0;
    }

    else
    {
      return 41.0;
    }
  }

  return v8;
}

- (BOOL)navSignView:(id)a3 shouldAlignToTrailingForMajorText:(BOOL)a4
{
  if (a4)
  {
    return ![(NavManeverSignLayoutBase *)self _shouldShowExitShieldForSign:a3];
  }

  v5.receiver = self;
  v5.super_class = NavManeverSignLayoutBase;
  return [(NavSignLayoutBase *)&v5 navSignView:a3 shouldAlignToTrailingForMajorText:?];
}

- (double)navSignView:(id)a3 textTrailingMarginForMajorText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v4 || (v7 = 5.0, ![(NavManeverSignLayoutBase *)self _shouldShowExitShieldForSign:v6]))
  {
    v10.receiver = self;
    v10.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v10 navSignView:v6 textTrailingMarginForMajorText:v4];
    v7 = v8;
  }

  return v7;
}

- (BOOL)_shouldShowManeuverViewForSign:(id)a3
{
  v3 = [a3 maneuverSign];
  v4 = [v3 hasManeuverArtwork];

  return v4;
}

- (BOOL)_shouldShowExitShieldForSign:(id)a3
{
  v4 = [a3 maneuverSign];
  if ([v4 hasShieldInfo] && (objc_msgSend(v4, "suppressShieldView") & 1) == 0)
  {
    v5 = ![(NavManeverSignLayoutBase *)self forceHideShieldViewForSign:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end