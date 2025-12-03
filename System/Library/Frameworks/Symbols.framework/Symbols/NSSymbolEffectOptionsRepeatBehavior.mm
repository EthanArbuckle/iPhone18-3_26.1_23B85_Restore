@interface NSSymbolEffectOptionsRepeatBehavior
+ (id)behavior;
+ (id)behaviorContinuous;
+ (id)behaviorPeriodic;
+ (id)behaviorPeriodicWithCount:(int64_t)count;
+ (id)behaviorPeriodicWithCount:(int64_t)count delay:(double)delay;
+ (id)behaviorPeriodicWithDelay:(double)delay;
- (NSSymbolEffectOptionsRepeatBehavior)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  *(v4 + 24) = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatCount];
  _repeatDelay = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatDelay];
  v6 = *(v4 + 32);
  *(v4 + 32) = _repeatDelay;

  *(v4 + 16) = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatBehavior];
  *(v4 + 8) = [(NSSymbolEffectOptionsRepeatBehavior *)self _prefersContinuous];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatBehavior](self forKey:{"_repeatBehavior"), @"_repeatBehavior"}];
  [coderCopy encodeInteger:-[NSSymbolEffectOptionsRepeatBehavior _repeatCount](self forKey:{"_repeatCount"), @"_repeatCount"}];
  _repeatDelay = [(NSSymbolEffectOptionsRepeatBehavior *)self _repeatDelay];
  [coderCopy encodeObject:_repeatDelay forKey:@"_repeatDelay"];

  [coderCopy encodeBool:-[NSSymbolEffectOptionsRepeatBehavior _prefersContinuous](self forKey:{"_prefersContinuous"), @"_prefersContinuous"}];
}

- (NSSymbolEffectOptionsRepeatBehavior)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5)
  {
    -[NSSymbolEffectOptionsRepeatBehavior set_repeatBehavior:](v5, "set_repeatBehavior:", [coderCopy decodeIntegerForKey:@"_repeatBehavior"]);
    -[NSSymbolEffectOptionsRepeatBehavior set_repeatCount:](v5, "set_repeatCount:", [coderCopy decodeIntegerForKey:@"_repeatCount"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_repeatDelay"];
    [(NSSymbolEffectOptionsRepeatBehavior *)v5 set_repeatDelay:v6];

    -[NSSymbolEffectOptionsRepeatBehavior set_prefersContinuous:](v5, "set_prefersContinuous:", [coderCopy decodeBoolForKey:@"_prefersContinuous"]);
    v7 = v5;
  }

  return v5;
}

+ (id)behaviorContinuous
{
  behavior = [self behavior];
  v3 = *(behavior + 32);
  *(behavior + 24) = 1;
  *(behavior + 32) = 0;

  *(behavior + 16) = 1;
  *(behavior + 8) = 1;

  return behavior;
}

+ (id)behaviorPeriodic
{
  behavior = [self behavior];
  v3 = *(behavior + 32);
  *(behavior + 24) = 1;
  *(behavior + 32) = 0;

  *(behavior + 16) = 1;
  *(behavior + 8) = 0;

  return behavior;
}

+ (id)behaviorPeriodicWithCount:(int64_t)count
{
  behavior = [self behavior];
  v5 = *(behavior + 32);
  *(behavior + 24) = count;
  *(behavior + 32) = 0;

  *(behavior + 16) = 2;
  *(behavior + 8) = 0;

  return behavior;
}

+ (id)behaviorPeriodicWithDelay:(double)delay
{
  behavior = [self behavior];
  *(behavior + 24) = 1;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  v6 = *(behavior + 32);
  *(behavior + 32) = v5;

  *(behavior + 16) = 1;
  *(behavior + 8) = 0;

  return behavior;
}

+ (id)behaviorPeriodicWithCount:(int64_t)count delay:(double)delay
{
  behavior = [self behavior];
  *(behavior + 24) = count;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  v8 = *(behavior + 32);
  *(behavior + 32) = v7;

  *(behavior + 16) = 2;
  *(behavior + 8) = 0;

  return behavior;
}

@end