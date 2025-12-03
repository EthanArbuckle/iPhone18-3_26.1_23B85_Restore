@interface GuidanceModernBannerSignStyle
+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)style;
+ (id)sharedSignStyle;
- (id)accentColor;
@end

@implementation GuidanceModernBannerSignStyle

- (id)accentColor
{
  foregroundColor = [(GuidanceModernBannerSignStyle *)self foregroundColor];
  v3 = [foregroundColor colorWithAlphaComponent:0.959999979];

  return v3;
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)style
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
  result = [SignStyle arrowMetricsForStyle:0];
  retstr->var1 = xmmword_101212AD0;
  retstr->var16 = 30.0;
  return result;
}

+ (id)sharedSignStyle
{
  if (qword_10195F4F0 != -1)
  {
    dispatch_once(&qword_10195F4F0, &stru_101657760);
  }

  v3 = qword_10195F4E8;

  return v3;
}

@end