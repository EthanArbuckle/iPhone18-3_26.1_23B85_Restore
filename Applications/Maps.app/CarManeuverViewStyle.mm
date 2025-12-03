@interface CarManeuverViewStyle
+ (CarManeuverViewStyle)styleWithVariant:(unint64_t)variant destination:(unint64_t)destination layoutType:(unint64_t)type;
- ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetrics;
- ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetrics;
- (CGSize)arrowReferenceSize;
- (CarManeuverViewStyle)initWithVariant:(unint64_t)variant destination:(unint64_t)destination layoutType:(unint64_t)type;
- (UIColor)arrowMainColor;
- (UIColor)distanceColor;
- (UIColor)instructionsColor;
- (UIColor)invalidArrowColor;
- (UIFont)distanceFont;
- (UIFont)instructionsAlternateFont;
- (UIFont)instructionsPreferredFont;
- (double)instructionsAlternateFontLineSpacing;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)instructionsMaxNumberOfLinesWithPreferredFont;
- (int64_t)instructionsMaxNumberOfTotalLines;
- (int64_t)labelLineBreakMode;
@end

@implementation CarManeuverViewStyle

- (int64_t)labelLineBreakMode
{
  if ([(CarManeuverViewStyle *)self isSecondary])
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetrics
{
  v4 = self->_variant == 2;
  [(CarManeuverViewStyle *)self arrowReferenceSize];
  *&retstr->var0 = 0u;
  *&retstr->var1.height = 0u;
  *&retstr->var3 = 0u;
  retstr->var5 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var20 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var24 = 0u;
  *&retstr->var26 = 0u;
  *&retstr->var28 = 0u;
  *&retstr->var30 = 0u;
  *&retstr->var32 = 0u;
  *&retstr->var34 = 0u;
  *&retstr->var36 = 0u;
  *&retstr->var38 = 0u;
  *&retstr->var40 = 0u;
  *&retstr->var45 = 0u;
  *&retstr->var47 = 0u;
  *&retstr->var49 = 0u;
  *&retstr->var51 = 0u;
  *&retstr->var53 = 0u;
  *&retstr->var55 = 0u;
  *&retstr->var57 = 0u;
  *&retstr->var59 = 0u;
  *&retstr->var61 = 0u;

  return [SignStyle arrowMetricsForStyle:v4 scaledToMatchReferenceSize:0 forView:?];
}

- (CGSize)arrowReferenceSize
{
  variant = self->_variant;
  v3 = 0.0;
  if (variant <= 2)
  {
    v3 = dbl_101215DF8[variant];
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetrics
{
  v4 = self->_variant == 2;
  [(CarManeuverViewStyle *)self arrowReferenceSize];
  *&retstr->var0 = 0u;
  *&retstr->var1.height = 0u;
  *&retstr->var3 = 0u;
  retstr->var5 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var20 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var24 = 0u;
  *&retstr->var26 = 0u;
  *&retstr->var28 = 0u;
  *&retstr->var30 = 0u;
  *&retstr->var32 = 0u;
  *&retstr->var34 = 0u;
  *&retstr->var36 = 0u;
  *&retstr->var38 = 0u;
  *&retstr->var40 = 0u;
  *&retstr->var45 = 0u;
  *&retstr->var47 = 0u;
  *&retstr->var49 = 0u;
  *&retstr->var51 = 0u;
  *&retstr->var53 = 0u;
  *&retstr->var55 = 0u;
  *&retstr->var57 = 0u;
  *&retstr->var59 = 0u;
  *&retstr->var61 = 0u;

  return [SignStyle junctionArrowMetricsForStyle:v4 scaledToMatchReferenceSize:0 forView:?];
}

- (UIColor)arrowMainColor
{
  _requiresAdaptiveStyling = [(CarManeuverViewStyle *)self _requiresAdaptiveStyling];

  return sub_10009E9A4(_requiresAdaptiveStyling);
}

- (UIColor)invalidArrowColor
{
  if ([(CarManeuverViewStyle *)self _requiresAdaptiveStyling])
  {
    +[UIColor carPlayDashboardJunctionColor];
  }

  else
  {
    +[UIColor carPlayJunctionColor];
  }
  v2 = ;

  return v2;
}

- (UIFont)instructionsPreferredFont
{
  layoutType = [(CarManeuverViewStyle *)self layoutType];
  v4 = _os_feature_enabled_impl();
  v5 = v4;
  if (layoutType == 2)
  {
    if (v4)
    {
      v6 = &UIFontTextStyleFootnote;
LABEL_7:
      v8 = [UIFont _maps_fontWithTextStyle:*v6 weight:0 compatibleWithTraitCollection:UIFontWeightMedium];
      goto LABEL_13;
    }

    v9 = UIFontWeightMedium;
    v10 = 13.0;
  }

  else
  {
    isSecondary = [(CarManeuverViewStyle *)self isSecondary];
    if (v5)
    {
      v6 = &UIFontTextStyleCaption1;
      if (!isSecondary)
      {
        v6 = &UIFontTextStyleCallout;
      }

      goto LABEL_7;
    }

    v10 = 16.0;
    if (isSecondary)
    {
      v10 = 12.0;
    }

    v9 = UIFontWeightMedium;
  }

  v8 = [UIFont systemFontOfSize:v10 weight:v9];
LABEL_13:

  return v8;
}

- (UIFont)instructionsAlternateFont
{
  layoutType = [(CarManeuverViewStyle *)self layoutType];
  v4 = _os_feature_enabled_impl();
  v5 = v4;
  if (layoutType == 2)
  {
    if (v4)
    {
      v6 = &UIFontTextStyleCaption1;
LABEL_7:
      v8 = [UIFont _maps_fontWithTextStyle:*v6 weight:0 compatibleWithTraitCollection:UIFontWeightMedium];
      goto LABEL_13;
    }

    v9 = UIFontWeightMedium;
    v10 = 12.0;
  }

  else
  {
    isSecondary = [(CarManeuverViewStyle *)self isSecondary];
    if (v5)
    {
      v6 = &UIFontTextStyleCaption1;
      if (!isSecondary)
      {
        v6 = &UIFontTextStyleSubheadline;
      }

      goto LABEL_7;
    }

    v10 = 15.0;
    if (isSecondary)
    {
      v10 = 12.0;
    }

    v9 = UIFontWeightMedium;
  }

  v8 = [UIFont systemFontOfSize:v10 weight:v9];
LABEL_13:

  return v8;
}

- (double)instructionsAlternateFontLineSpacing
{
  isSecondary = [(CarManeuverViewStyle *)self isSecondary];
  result = 16.0;
  if (isSecondary)
  {
    return 12.0;
  }

  return result;
}

- (int64_t)instructionsMaxNumberOfLinesWithPreferredFont
{
  if ([(CarManeuverViewStyle *)self isSecondary])
  {
    return 1;
  }

  if ([(CarManeuverViewStyle *)self destination]- 3 > 1)
  {
    return 2;
  }

  if ([(CarManeuverViewStyle *)self alignmentStyle])
  {
    return 2;
  }

  return 1;
}

- (int64_t)instructionsMaxNumberOfTotalLines
{
  if ([(CarManeuverViewStyle *)self isSecondary])
  {
    v3 = [(CarManeuverViewStyle *)self compressionStage]== 1;
    goto LABEL_3;
  }

  if ([(CarManeuverViewStyle *)self layoutType]== 2)
  {
    return 1;
  }

  if ([(CarManeuverViewStyle *)self destination]- 3 <= 1)
  {
    v3 = [(CarManeuverViewStyle *)self alignmentStyle]== 0;
LABEL_3:
    if (v3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  compressionStage = [(CarManeuverViewStyle *)self compressionStage];
  if (compressionStage - 1 > 5)
  {
    return 5;
  }

  else
  {
    return qword_101215DC8[compressionStage - 1];
  }
}

- (UIColor)instructionsColor
{
  variant = [(CarManeuverViewStyle *)self variant];
  _requiresAdaptiveStyling = [(CarManeuverViewStyle *)self _requiresAdaptiveStyling];
  if (variant == 2)
  {
    sub_10009E9A4(_requiresAdaptiveStyling);
  }

  else
  {
    sub_10009FA44(_requiresAdaptiveStyling);
  }
  v5 = ;

  return v5;
}

- (UIFont)distanceFont
{
  if ([(CarManeuverViewStyle *)self layoutType]== 2)
  {
    if ([(CarManeuverViewStyle *)self hasLaneGuidance]|| [(CarManeuverViewStyle *)self hasShield])
    {
      v3 = UIFontWeightBold;
      v4 = 13.0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if ([(CarManeuverViewStyle *)self variant]== 1)
  {
    v5 = &UIFontWeightBold;
LABEL_11:
    v3 = *v5;
    v4 = 17.0;
    goto LABEL_12;
  }

  if ([(CarManeuverViewStyle *)self isSecondary])
  {
    v3 = UIFontWeightHeavy;
    v4 = 12.0;
    goto LABEL_12;
  }

  if ([(CarManeuverViewStyle *)self hasLaneGuidance])
  {
LABEL_10:
    v5 = &UIFontWeightHeavy;
    goto LABEL_11;
  }

  hasShield = [(CarManeuverViewStyle *)self hasShield];
  layoutType = [(CarManeuverViewStyle *)self layoutType];
  v3 = UIFontWeightHeavy;
  if (hasShield)
  {
    v4 = 17.0;
  }

  else
  {
    v4 = 20.0;
  }

  if (layoutType == 1)
  {
    v4 = 16.0;
  }

LABEL_12:
  v6 = [UIFont monospacedDigitSystemFontOfSize:v4 weight:v3];

  return v6;
}

- (UIColor)distanceColor
{
  _requiresAdaptiveStyling = [(CarManeuverViewStyle *)self _requiresAdaptiveStyling];

  return sub_10009E9A4(_requiresAdaptiveStyling);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() styleWithVariant:-[CarManeuverViewStyle variant](self destination:"variant") layoutType:{-[CarManeuverViewStyle destination](self, "destination"), -[CarManeuverViewStyle layoutType](self, "layoutType")}];
  [v4 setHasLaneGuidance:{-[CarManeuverViewStyle hasLaneGuidance](self, "hasLaneGuidance")}];
  [v4 setHasShield:{-[CarManeuverViewStyle hasShield](self, "hasShield")}];
  [v4 setSecondarySignVisible:{-[CarManeuverViewStyle secondarySignVisible](self, "secondarySignVisible")}];
  [v4 setCompressionStage:{-[CarManeuverViewStyle compressionStage](self, "compressionStage")}];
  return v4;
}

- (CarManeuverViewStyle)initWithVariant:(unint64_t)variant destination:(unint64_t)destination layoutType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = CarManeuverViewStyle;
  result = [(CarManeuverViewStyle *)&v9 init];
  if (result)
  {
    result->_layoutType = type;
    result->_destination = destination;
    result->_variant = variant;
    result->_blurMode = 0;
  }

  return result;
}

+ (CarManeuverViewStyle)styleWithVariant:(unint64_t)variant destination:(unint64_t)destination layoutType:(unint64_t)type
{
  v5 = [objc_alloc(objc_opt_class()) initWithVariant:variant destination:destination layoutType:type];

  return v5;
}

@end