@interface NavManeverSignLayoutBase
- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewArrowMetricsForSign:(SEL)sign;
- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewJunctionArrowMetricsForSign:(SEL)sign;
- (BOOL)_shouldShowExitShieldForSign:(id)sign;
- (BOOL)_shouldShowManeuverViewForSign:(id)sign;
- (BOOL)navSignView:(id)view shouldAlignToTrailingForMajorText:(BOOL)text;
- (CGSize)maneuverViewSizeForSign:(id)sign;
- (double)baselineMarginBetweenLabelsForSign:(id)sign;
- (double)navSignView:(id)view textTrailingMarginForMajorText:(BOOL)text;
- (double)textBottomMarginForSign:(id)sign;
- (double)textTopMarginForSign:(id)sign;
- (id)navSignView:(id)view alternateFontForMajorText:(BOOL)text;
- (id)navSignView:(id)view preferredFontForMajorText:(BOOL)text;
- (int64_t)maneuverViewPositionForSign:(id)sign;
@end

@implementation NavManeverSignLayoutBase

- (int64_t)maneuverViewPositionForSign:(id)sign
{
  minorLabel = [sign minorLabel];
  v4 = [minorLabel lineCount] > 2;

  return v4;
}

- (CGSize)maneuverViewSizeForSign:(id)sign
{
  v3 = 48.0;
  v4 = 58.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewJunctionArrowMetricsForSign:(SEL)sign
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

- ($84D9B426F26CE1F36C5948DD9DEACC84)maneuverViewArrowMetricsForSign:(SEL)sign
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

- (id)navSignView:(id)view alternateFontForMajorText:(BOOL)text
{
  textCopy = text;
  viewCopy = view;
  maneuverSign = [viewCopy maneuverSign];
  maneuverSignType = [maneuverSign maneuverSignType];

  if ((maneuverSignType - 1) > 1)
  {
    v14.receiver = self;
    v14.super_class = NavManeverSignLayoutBase;
    v11 = [(NavSignLayoutBase *)&v14 navSignView:viewCopy alternateFontForMajorText:textCopy];
  }

  else
  {
    if (textCopy)
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

- (id)navSignView:(id)view preferredFontForMajorText:(BOOL)text
{
  textCopy = text;
  viewCopy = view;
  maneuverSign = [viewCopy maneuverSign];
  maneuverSignType = [maneuverSign maneuverSignType];

  if ((maneuverSignType - 1) > 1)
  {
    v13.receiver = self;
    v13.super_class = NavManeverSignLayoutBase;
    v10 = [(NavSignLayoutBase *)&v13 navSignView:viewCopy preferredFontForMajorText:textCopy];
  }

  else
  {
    v9 = &UIFontWeightMedium;
    if (textCopy)
    {
      v9 = &UIFontWeightHeavy;
    }

    v10 = [UIFont systemFontOfSize:27.0 weight:*v9];
  }

  v11 = v10;

  return v11;
}

- (double)baselineMarginBetweenLabelsForSign:(id)sign
{
  signCopy = sign;
  maneuverSign = [signCopy maneuverSign];
  maneuverSignType = [maneuverSign maneuverSignType];

  if ((maneuverSignType - 1) >= 2)
  {
    v10.receiver = self;
    v10.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v10 baselineMarginBetweenLabelsForSign:signCopy];
    v7 = v8;
  }

  else
  {
    v7 = 32.0;
  }

  return v7;
}

- (double)textBottomMarginForSign:(id)sign
{
  signCopy = sign;
  maneuverSign = [signCopy maneuverSign];
  maneuverSignType = [maneuverSign maneuverSignType];

  if ((maneuverSignType - 1) > 1)
  {
    v11.receiver = self;
    v11.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v11 textBottomMarginForSign:signCopy];
    v8 = v9;
  }

  else
  {
    hasOnlySingleLineText = [signCopy hasOnlySingleLineText];

    if (hasOnlySingleLineText)
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

- (double)textTopMarginForSign:(id)sign
{
  signCopy = sign;
  maneuverSign = [signCopy maneuverSign];
  maneuverSignType = [maneuverSign maneuverSignType];

  if ((maneuverSignType - 1) > 1)
  {
    v11.receiver = self;
    v11.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v11 textTopMarginForSign:signCopy];
    v8 = v9;
  }

  else
  {
    hasOnlySingleLineText = [signCopy hasOnlySingleLineText];

    if (hasOnlySingleLineText)
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

- (BOOL)navSignView:(id)view shouldAlignToTrailingForMajorText:(BOOL)text
{
  if (text)
  {
    return ![(NavManeverSignLayoutBase *)self _shouldShowExitShieldForSign:view];
  }

  v5.receiver = self;
  v5.super_class = NavManeverSignLayoutBase;
  return [(NavSignLayoutBase *)&v5 navSignView:view shouldAlignToTrailingForMajorText:?];
}

- (double)navSignView:(id)view textTrailingMarginForMajorText:(BOOL)text
{
  textCopy = text;
  viewCopy = view;
  if (!textCopy || (v7 = 5.0, ![(NavManeverSignLayoutBase *)self _shouldShowExitShieldForSign:viewCopy]))
  {
    v10.receiver = self;
    v10.super_class = NavManeverSignLayoutBase;
    [(NavSignLayoutBase *)&v10 navSignView:viewCopy textTrailingMarginForMajorText:textCopy];
    v7 = v8;
  }

  return v7;
}

- (BOOL)_shouldShowManeuverViewForSign:(id)sign
{
  maneuverSign = [sign maneuverSign];
  hasManeuverArtwork = [maneuverSign hasManeuverArtwork];

  return hasManeuverArtwork;
}

- (BOOL)_shouldShowExitShieldForSign:(id)sign
{
  maneuverSign = [sign maneuverSign];
  if ([maneuverSign hasShieldInfo] && (objc_msgSend(maneuverSign, "suppressShieldView") & 1) == 0)
  {
    v5 = ![(NavManeverSignLayoutBase *)self forceHideShieldViewForSign:maneuverSign];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end