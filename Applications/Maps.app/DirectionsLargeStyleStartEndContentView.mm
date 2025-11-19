@interface DirectionsLargeStyleStartEndContentView
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3;
+ (id)overviewFontProvider;
+ (id)subtitleFontProvider;
@end

@implementation DirectionsLargeStyleStartEndContentView

+ (id)subtitleFontProvider
{
  v2 = objc_retainBlock(&stru_10165D908);

  return v2;
}

+ (id)overviewFontProvider
{
  v2 = objc_retainBlock(&stru_10165DA48);

  return v2;
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3
{
  retstr->var8 = 0.0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return [DirectionsLargeStyleStepView cellMetricsForIdiom:a4];
}

@end