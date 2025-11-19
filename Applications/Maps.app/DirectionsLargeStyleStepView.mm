@interface DirectionsLargeStyleStepView
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3;
+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6;
@end

@implementation DirectionsLargeStyleStepView

+ (double)heightForWidth:(double)a3 route:(id)a4 step:(id)a5 idiom:(int64_t)a6
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_class();
  if (v12)
  {
    [v12 cellMetricsForIdiom:a6];
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
  }

  v13 = [a1 _labelListViewClassForRoute:v11 step:v10];
  v17[2] = v21;
  v17[3] = v22;
  v18 = v23;
  v17[0] = v19;
  v17[1] = v20;
  [a1 _textWidthForWidth:v17 metrics:a3];
  [v13 heightForWidth:v11 route:v10 step:a6 idiom:?];
  v15 = v14;

  return fmax(v15 + 64.0, *(&v20 + 1));
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)a3
{
  retstr->var8 = 0.0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v7.receiver = a2;
  v7.super_class = &OBJC_METACLASS___DirectionsLargeStyleStepView;
  result = [($8452678F12DBC466148836A9D382CAFC *)&v7 cellMetricsForIdiom:?];
  if (a4 != 5)
  {
    *&retstr->var7 = vdupq_n_s64(0x4055800000000000uLL);
    *&retstr->var3 = xmmword_101212920;
  }

  return result;
}

@end