@interface NSSymbolEffectOptions
+ (NSSymbolEffectOptions)options;
+ (NSSymbolEffectOptions)optionsWithNonRepeating;
+ (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)behavior;
+ (NSSymbolEffectOptions)optionsWithRepeatCount:(NSInteger)count;
+ (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)count delay:(double)delay;
+ (NSSymbolEffectOptions)optionsWithRepeating;
+ (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)delay;
+ (NSSymbolEffectOptions)optionsWithSpeed:(double)speed;
+ (id)_optionsWithRepeatStyle:(id)style;
- (NSSymbolEffectOptions)initWithCoder:(id)coder;
- (NSSymbolEffectOptions)optionsWithNonRepeating;
- (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)behavior;
- (NSSymbolEffectOptions)optionsWithRepeatCount:(NSInteger)count;
- (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)count delay:(double)delay;
- (NSSymbolEffectOptions)optionsWithRepeating;
- (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)delay;
- (NSSymbolEffectOptions)optionsWithSpeed:(double)speed;
- (id)_optionsWithRepeatStyle:(id)style;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSymbolEffectOptions

+ (NSSymbolEffectOptions)options
{
  v2 = objc_opt_new();
  [v2 set_speed:1.0];
  [v2 set_repeatBehavior:0];
  [v2 set_prefersContinuous:0];
  [v2 set_repeatCount:1];
  [v2 set_repeatDelay:0];

  return v2;
}

+ (NSSymbolEffectOptions)optionsWithRepeating
{
  options = [self options];
  [options set_repeatBehavior:1];

  return options;
}

- (NSSymbolEffectOptions)optionsWithRepeating
{
  v2 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v2 set_repeatBehavior:1];
  [v2 set_prefersContinuous:0];

  return v2;
}

+ (NSSymbolEffectOptions)optionsWithNonRepeating
{
  options = [self options];
  [options set_repeatBehavior:2];

  return options;
}

- (NSSymbolEffectOptions)optionsWithNonRepeating
{
  v2 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v2 set_repeatBehavior:2];
  [v2 set_repeatCount:1];
  [v2 set_prefersContinuous:0];

  return v2;
}

+ (NSSymbolEffectOptions)optionsWithRepeatCount:(NSInteger)count
{
  options = [self options];
  [options set_repeatBehavior:2];
  [options set_repeatCount:count];

  return options;
}

- (NSSymbolEffectOptions)optionsWithRepeatCount:(NSInteger)count
{
  v4 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v4 set_repeatBehavior:2];
  [v4 set_repeatCount:count];
  [v4 set_prefersContinuous:0];

  return v4;
}

+ (NSSymbolEffectOptions)optionsWithSpeed:(double)speed
{
  options = [self options];
  [options set_speed:speed];

  return options;
}

- (NSSymbolEffectOptions)optionsWithSpeed:(double)speed
{
  v4 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v4 set_speed:speed];

  return v4;
}

+ (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)delay
{
  options = [self options];
  [options set_repeatBehavior:1];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  [options set_repeatDelay:v5];

  [options set_prefersContinuous:0];

  return options;
}

- (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)delay
{
  v4 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v4 set_repeatBehavior:1];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  [v4 set_repeatDelay:v5];

  [v4 set_prefersContinuous:0];

  return v4;
}

+ (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)count delay:(double)delay
{
  options = [self options];
  [options set_repeatBehavior:2];
  [options set_repeatCount:count];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  [options set_repeatDelay:v7];

  [options set_prefersContinuous:0];

  return options;
}

- (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)count delay:(double)delay
{
  v6 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v6 set_repeatBehavior:2];
  [v6 set_repeatCount:count];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
  [v6 set_repeatDelay:v7];

  [v6 set_prefersContinuous:0];

  return v6;
}

+ (id)_optionsWithRepeatStyle:(id)style
{
  _backing = [style _backing];
  v5 = [self optionsWithRepeatBehavior:_backing];

  return v5;
}

- (id)_optionsWithRepeatStyle:(id)style
{
  _backing = [style _backing];
  v5 = [(NSSymbolEffectOptions *)self optionsWithRepeatBehavior:_backing];

  return v5;
}

+ (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)behavior
{
  behaviorCopy = behavior;
  options = [self options];
  [options set_repeatBehavior:{objc_msgSend(behaviorCopy, "_repeatBehavior")}];
  [options set_repeatCount:{objc_msgSend(behaviorCopy, "_repeatCount")}];
  _repeatDelay = [behaviorCopy _repeatDelay];
  [options set_repeatDelay:_repeatDelay];

  _prefersContinuous = [behaviorCopy _prefersContinuous];
  [options set_prefersContinuous:_prefersContinuous];

  return options;
}

- (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = [(NSSymbolEffectOptions *)self copy];
  [v5 set_repeatBehavior:{objc_msgSend(behaviorCopy, "_repeatBehavior")}];
  [v5 set_repeatCount:{objc_msgSend(behaviorCopy, "_repeatCount")}];
  _repeatDelay = [behaviorCopy _repeatDelay];
  [v5 set_repeatDelay:_repeatDelay];

  _prefersContinuous = [behaviorCopy _prefersContinuous];
  [v5 set_prefersContinuous:_prefersContinuous];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  options = [objc_opt_class() options];
  [(NSSymbolEffectOptions *)self _speed];
  [options set_speed:?];
  [options set_prefersContinuous:{-[NSSymbolEffectOptions _prefersContinuous](self, "_prefersContinuous")}];
  [options set_repeatBehavior:{-[NSSymbolEffectOptions _repeatBehavior](self, "_repeatBehavior")}];
  [options set_repeatCount:{-[NSSymbolEffectOptions _repeatCount](self, "_repeatCount")}];
  _repeatDelay = [(NSSymbolEffectOptions *)self _repeatDelay];
  v6 = [_repeatDelay copyWithZone:0];
  [options set_repeatDelay:v6];

  return options;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(NSSymbolEffectOptions *)self _speed];
  [coderCopy encodeDouble:@"_speed" forKey:?];
  [coderCopy encodeInteger:-[NSSymbolEffectOptions _repeatBehavior](self forKey:{"_repeatBehavior"), @"_repeatBehavior"}];
  [coderCopy encodeInteger:-[NSSymbolEffectOptions _repeatCount](self forKey:{"_repeatCount"), @"_repeatCount"}];
  _repeatDelay = [(NSSymbolEffectOptions *)self _repeatDelay];
  [coderCopy encodeObject:_repeatDelay forKey:@"_repeatDelay"];

  [coderCopy encodeBool:-[NSSymbolEffectOptions _prefersContinuous](self forKey:{"_prefersContinuous"), @"_prefersContinuous"}];
}

- (NSSymbolEffectOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_speed"];
    [(NSSymbolEffectOptions *)v5 set_speed:?];
    -[NSSymbolEffectOptions set_repeatBehavior:](v5, "set_repeatBehavior:", [coderCopy decodeIntegerForKey:@"_repeatBehavior"]);
    -[NSSymbolEffectOptions set_repeatCount:](v5, "set_repeatCount:", [coderCopy decodeIntegerForKey:@"_repeatCount"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_repeatDelay"];
    [(NSSymbolEffectOptions *)v5 set_repeatDelay:v6];

    if ([coderCopy containsValueForKey:@"_prefersContinuous"])
    {
      v7 = [coderCopy decodeBoolForKey:@"_prefersContinuous"];
    }

    else
    {
      v7 = 0;
    }

    [(NSSymbolEffectOptions *)v5 set_prefersContinuous:v7];
  }

  return v5;
}

@end