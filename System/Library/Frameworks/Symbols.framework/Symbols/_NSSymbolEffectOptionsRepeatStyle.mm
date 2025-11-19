@interface _NSSymbolEffectOptionsRepeatStyle
+ (id)style;
+ (id)styleContinuous;
+ (id)stylePeriodic;
+ (id)stylePeriodicWithCount:(int64_t)a3;
+ (id)stylePeriodicWithCount:(int64_t)a3 delay:(double)a4;
+ (id)stylePeriodicWithDelay:(double)a3;
- (_NSSymbolEffectOptionsRepeatStyle)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSSymbolEffectOptionsRepeatStyle

+ (id)style
{
  v2 = objc_opt_new();
  v3 = +[NSSymbolEffectOptionsRepeatBehavior behavior];
  v4 = v2[1];
  v2[1] = v3;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NSSymbolEffectOptionsRepeatBehavior *)self->_backing copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  backing = self->_backing;
  v6 = a3;
  [v6 encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatBehavior](backing forKey:{"_repeatBehavior"), @"_repeatBehavior"}];
  [v6 encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatCount](self->_backing forKey:{"_repeatCount"), @"_repeatCount"}];
  v5 = [(NSSymbolEffectOptionsRepeatBehavior *)self->_backing _repeatDelay];
  [v6 encodeObject:v5 forKey:@"_repeatDelay"];

  [v6 encodeBool:-[NSSymbolEffectOptionsRepeatBehavior _prefersContinuous](self->_backing forKey:{"_prefersContinuous"), @"_prefersContinuous"}];
}

- (_NSSymbolEffectOptionsRepeatStyle)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5 && (v6 = [[NSSymbolEffectOptionsRepeatBehavior alloc] initWithCoder:v4]) != 0)
  {
    v7 = v5[1];
    v5[1] = v6;

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)styleContinuous
{
  v2 = objc_opt_new();
  v3 = +[NSSymbolEffectOptionsRepeatBehavior behaviorContinuous];
  v4 = v2[1];
  v2[1] = v3;

  return v2;
}

+ (id)stylePeriodic
{
  v2 = objc_opt_new();
  v3 = +[NSSymbolEffectOptionsRepeatBehavior behaviorPeriodic];
  v4 = v2[1];
  v2[1] = v3;

  return v2;
}

+ (id)stylePeriodicWithCount:(int64_t)a3
{
  v4 = objc_opt_new();
  v5 = [NSSymbolEffectOptionsRepeatBehavior behaviorPeriodicWithCount:a3];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)stylePeriodicWithDelay:(double)a3
{
  v4 = objc_opt_new();
  v5 = [NSSymbolEffectOptionsRepeatBehavior behaviorPeriodicWithDelay:a3];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)stylePeriodicWithCount:(int64_t)a3 delay:(double)a4
{
  v6 = objc_opt_new();
  v7 = [NSSymbolEffectOptionsRepeatBehavior behaviorPeriodicWithCount:a3 delay:a4];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

@end