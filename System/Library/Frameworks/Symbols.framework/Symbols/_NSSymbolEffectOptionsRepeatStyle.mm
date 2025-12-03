@interface _NSSymbolEffectOptionsRepeatStyle
+ (id)style;
+ (id)styleContinuous;
+ (id)stylePeriodic;
+ (id)stylePeriodicWithCount:(int64_t)count;
+ (id)stylePeriodicWithCount:(int64_t)count delay:(double)delay;
+ (id)stylePeriodicWithDelay:(double)delay;
- (_NSSymbolEffectOptionsRepeatStyle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NSSymbolEffectOptionsRepeatBehavior *)self->_backing copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  backing = self->_backing;
  coderCopy = coder;
  [coderCopy encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatBehavior](backing forKey:{"_repeatBehavior"), @"_repeatBehavior"}];
  [coderCopy encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatCount](self->_backing forKey:{"_repeatCount"), @"_repeatCount"}];
  _repeatDelay = [(NSSymbolEffectOptionsRepeatBehavior *)self->_backing _repeatDelay];
  [coderCopy encodeObject:_repeatDelay forKey:@"_repeatDelay"];

  [coderCopy encodeBool:-[NSSymbolEffectOptionsRepeatBehavior _prefersContinuous](self->_backing forKey:{"_prefersContinuous"), @"_prefersContinuous"}];
}

- (_NSSymbolEffectOptionsRepeatStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5 && (v6 = [[NSSymbolEffectOptionsRepeatBehavior alloc] initWithCoder:coderCopy]) != 0)
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

+ (id)stylePeriodicWithCount:(int64_t)count
{
  v4 = objc_opt_new();
  v5 = [NSSymbolEffectOptionsRepeatBehavior behaviorPeriodicWithCount:count];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)stylePeriodicWithDelay:(double)delay
{
  v4 = objc_opt_new();
  v5 = [NSSymbolEffectOptionsRepeatBehavior behaviorPeriodicWithDelay:delay];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)stylePeriodicWithCount:(int64_t)count delay:(double)delay
{
  v6 = objc_opt_new();
  v7 = [NSSymbolEffectOptionsRepeatBehavior behaviorPeriodicWithCount:count delay:delay];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

@end