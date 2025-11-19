@interface NSSymbolEffectOptionsRepeatBehavior
+ (id)behavior;
+ (id)behaviorContinuous;
+ (id)behaviorPeriodic;
+ (id)behaviorPeriodicWithCount:(int64_t)a3;
+ (id)behaviorPeriodicWithCount:(int64_t)a3 delay:(double)a4;
+ (id)behaviorPeriodicWithDelay:(double)a3;
- (NSSymbolEffectOptionsRepeatBehavior)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSymbolEffectOptionsRepeatBehavior

+ (id)behavior
{
  v2 = objc_opt_new();
  v3 = *(v2 + 32);
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;

  *(v2 + 16) = 0;
  *(v2 + 8) = 0;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  *(v4 + 24) = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatCount];
  v5 = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatDelay];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  *(v4 + 16) = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatBehavior];
  *(v4 + 8) = [(NSSymbolEffectOptionsRepeatBehavior *)self _prefersContinuous];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatBehavior](self forKey:{"_repeatBehavior"), @"_repeatBehavior"}];
  [v5 encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatCount](self forKey:{"_repeatCount"), @"_repeatCount"}];
  v4 = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatDelay];
  [v5 encodeObject:v4 forKey:@"_repeatDelay"];

  [v5 encodeBool:-[NSSymbolEffectOptionsRepeatBehavior _prefersContinuous](self forKey:{"_prefersContinuous"), @"_prefersContinuous"}];
}

- (NSSymbolEffectOptionsRepeatBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5)
  {
    -[NSSymbolEffectOptionsRepeatBehavior set_repeatBehavior:](v5, "set_repeatBehavior:", [v4 decodeIntegerForKey:@"_repeatBehavior"]);
    -[NSSymbolEffectOptionsRepeatBehavior set_repeatCount:](v5, "set_repeatCount:", [v4 decodeIntegerForKey:@"_repeatCount"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_repeatDelay"];
    [(NSSymbolEffectOptionsRepeatBehavior *)v5 set_repeatDelay:v6];

    -[NSSymbolEffectOptionsRepeatBehavior set_prefersContinuous:](v5, "set_prefersContinuous:", [v4 decodeBoolForKey:@"_prefersContinuous"]);
    v7 = v5;
  }

  return v5;
}

+ (id)behaviorContinuous
{
  v2 = [a1 behavior];
  v3 = *(v2 + 32);
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;

  *(v2 + 16) = 1;
  *(v2 + 8) = 1;

  return v2;
}

+ (id)behaviorPeriodic
{
  v2 = [a1 behavior];
  v3 = *(v2 + 32);
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;

  *(v2 + 16) = 1;
  *(v2 + 8) = 0;

  return v2;
}

+ (id)behaviorPeriodicWithCount:(int64_t)a3
{
  v4 = [a1 behavior];
  v5 = *(v4 + 32);
  *(v4 + 24) = a3;
  *(v4 + 32) = 0;

  *(v4 + 16) = 2;
  *(v4 + 8) = 0;

  return v4;
}

+ (id)behaviorPeriodicWithDelay:(double)a3
{
  v4 = [a1 behavior];
  *(v4 + 24) = 1;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  *(v4 + 16) = 1;
  *(v4 + 8) = 0;

  return v4;
}

+ (id)behaviorPeriodicWithCount:(int64_t)a3 delay:(double)a4
{
  v6 = [a1 behavior];
  *(v6 + 24) = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  *(v6 + 16) = 2;
  *(v6 + 8) = 0;

  return v6;
}

@end