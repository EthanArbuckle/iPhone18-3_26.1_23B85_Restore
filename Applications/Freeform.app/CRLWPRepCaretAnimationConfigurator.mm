@interface CRLWPRepCaretAnimationConfigurator
+ (double)animationCycleForHide:(BOOL)a3;
+ (double)animationDurationForHide:(BOOL)a3;
+ (void)initialize;
@end

@implementation CRLWPRepCaretAnimationConfigurator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (*&qword_1019F1048 < -99999.0)
    {
      v2 = +[NSUserDefaults standardUserDefaults];
      v3 = [v2 integerForKey:@"NSTextInsertionPointBlinkPeriod"];

      if (v3)
      {
        v4 = v3 / 1000.0;
      }

      else
      {
        v4 = 0.56;
      }

      qword_1019F1048 = *&v4;
    }

    if (*&qword_1019F1050 < -99999.0)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      v6 = [v5 integerForKey:@"NSTextInsertionPointBlinkPeriodOn"];

      if (v6)
      {
        v7 = v6 / 1000.0;
      }

      else
      {
        v7 = 0.5;
      }

      qword_1019F1050 = *&v7;
    }

    if (*&qword_1019F1058 < -99999.0)
    {
      v8 = +[NSUserDefaults standardUserDefaults];
      v9 = [v8 integerForKey:@"NSTextInsertionPointBlinkPeriodOff"];

      if (v9)
      {
        v10 = v9 / 1000.0;
      }

      else
      {
        v10 = 0.5;
      }

      qword_1019F1058 = *&v10;
    }
  }
}

+ (double)animationDurationForHide:(BOOL)a3
{
  result = 0.15;
  if (a3)
  {
    return 0.25;
  }

  return result;
}

+ (double)animationCycleForHide:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 caretShouldFade];
  v5 = &qword_1019F1058;
  if (!v3)
  {
    v5 = &qword_1019F1050;
  }

  if (!v4)
  {
    v5 = &qword_1019F1048;
  }

  return *v5;
}

@end