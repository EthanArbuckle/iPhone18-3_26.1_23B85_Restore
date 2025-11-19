@interface NSSymbolEffectOptions
+ (NSSymbolEffectOptions)options;
+ (NSSymbolEffectOptions)optionsWithNonRepeating;
+ (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)a3;
+ (NSSymbolEffectOptions)optionsWithRepeatCount:(NSInteger)count;
+ (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)a3 delay:(double)a4;
+ (NSSymbolEffectOptions)optionsWithRepeating;
+ (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)a3;
+ (NSSymbolEffectOptions)optionsWithSpeed:(double)speed;
+ (id)_optionsWithRepeatStyle:(id)a3;
- (NSSymbolEffectOptions)initWithCoder:(id)a3;
- (NSSymbolEffectOptions)optionsWithNonRepeating;
- (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)a3;
- (NSSymbolEffectOptions)optionsWithRepeatCount:(NSInteger)count;
- (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)a3 delay:(double)a4;
- (NSSymbolEffectOptions)optionsWithRepeating;
- (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)a3;
- (NSSymbolEffectOptions)optionsWithSpeed:(double)speed;
- (id)_optionsWithRepeatStyle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [a1 options];
  [v2 set_repeatBehavior:1];

  return v2;
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
  v2 = [a1 options];
  [v2 set_repeatBehavior:2];

  return v2;
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
  v4 = [a1 options];
  [v4 set_repeatBehavior:2];
  [v4 set_repeatCount:count];

  return v4;
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
  v4 = [a1 options];
  [v4 set_speed:speed];

  return v4;
}

- (NSSymbolEffectOptions)optionsWithSpeed:(double)speed
{
  v4 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v4 set_speed:speed];

  return v4;
}

+ (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)a3
{
  v4 = [a1 options];
  [v4 set_repeatBehavior:1];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 set_repeatDelay:v5];

  [v4 set_prefersContinuous:0];

  return v4;
}

- (NSSymbolEffectOptions)optionsWithRepeatingDelay:(double)a3
{
  v4 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v4 set_repeatBehavior:1];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 set_repeatDelay:v5];

  [v4 set_prefersContinuous:0];

  return v4;
}

+ (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)a3 delay:(double)a4
{
  v6 = [a1 options];
  [v6 set_repeatBehavior:2];
  [v6 set_repeatCount:a3];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v6 set_repeatDelay:v7];

  [v6 set_prefersContinuous:0];

  return v6;
}

- (NSSymbolEffectOptions)optionsWithRepeatCount:(int64_t)a3 delay:(double)a4
{
  v6 = [(NSSymbolEffectOptions *)self copyWithZone:0];
  [v6 set_repeatBehavior:2];
  [v6 set_repeatCount:a3];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v6 set_repeatDelay:v7];

  [v6 set_prefersContinuous:0];

  return v6;
}

+ (id)_optionsWithRepeatStyle:(id)a3
{
  v4 = [a3 _backing];
  v5 = [a1 optionsWithRepeatBehavior:v4];

  return v5;
}

- (id)_optionsWithRepeatStyle:(id)a3
{
  v4 = [a3 _backing];
  v5 = [(NSSymbolEffectOptions *)self optionsWithRepeatBehavior:v4];

  return v5;
}

+ (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)a3
{
  v4 = a3;
  v5 = [a1 options];
  [v5 set_repeatBehavior:{objc_msgSend(v4, "_repeatBehavior")}];
  [v5 set_repeatCount:{objc_msgSend(v4, "_repeatCount")}];
  v6 = [v4 _repeatDelay];
  [v5 set_repeatDelay:v6];

  v7 = [v4 _prefersContinuous];
  [v5 set_prefersContinuous:v7];

  return v5;
}

- (NSSymbolEffectOptions)optionsWithRepeatBehavior:(id)a3
{
  v4 = a3;
  v5 = [(NSSymbolEffectOptions *)self copy];
  [v5 set_repeatBehavior:{objc_msgSend(v4, "_repeatBehavior")}];
  [v5 set_repeatCount:{objc_msgSend(v4, "_repeatCount")}];
  v6 = [v4 _repeatDelay];
  [v5 set_repeatDelay:v6];

  v7 = [v4 _prefersContinuous];
  [v5 set_prefersContinuous:v7];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() options];
  [(NSSymbolEffectOptions *)self _speed];
  [v4 set_speed:?];
  [v4 set_prefersContinuous:{-[NSSymbolEffectOptions _prefersContinuous](self, "_prefersContinuous")}];
  [v4 set_repeatBehavior:{-[NSSymbolEffectOptions _repeatBehavior](self, "_repeatBehavior")}];
  [v4 set_repeatCount:{-[NSSymbolEffectOptions _repeatCount](self, "_repeatCount")}];
  v5 = [(NSSymbolEffectOptions *)self _repeatDelay];
  v6 = [v5 copyWithZone:0];
  [v4 set_repeatDelay:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(NSSymbolEffectOptions *)self _speed];
  [v5 encodeDouble:@"_speed" forKey:?];
  [v5 encodeInteger:-[NSSymbolEffectOptions _repeatBehavior](self forKey:{"_repeatBehavior"), @"_repeatBehavior"}];
  [v5 encodeInteger:-[NSSymbolEffectOptions _repeatCount](self forKey:{"_repeatCount"), @"_repeatCount"}];
  v4 = [(NSSymbolEffectOptions *)self _repeatDelay];
  [v5 encodeObject:v4 forKey:@"_repeatDelay"];

  [v5 encodeBool:-[NSSymbolEffectOptions _prefersContinuous](self forKey:{"_prefersContinuous"), @"_prefersContinuous"}];
}

- (NSSymbolEffectOptions)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = objc_opt_new();

  if (v5)
  {
    [v4 decodeDoubleForKey:@"_speed"];
    [(NSSymbolEffectOptions *)v5 set_speed:?];
    -[NSSymbolEffectOptions set_repeatBehavior:](v5, "set_repeatBehavior:", [v4 decodeIntegerForKey:@"_repeatBehavior"]);
    -[NSSymbolEffectOptions set_repeatCount:](v5, "set_repeatCount:", [v4 decodeIntegerForKey:@"_repeatCount"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_repeatDelay"];
    [(NSSymbolEffectOptions *)v5 set_repeatDelay:v6];

    if ([v4 containsValueForKey:@"_prefersContinuous"])
    {
      v7 = [v4 decodeBoolForKey:@"_prefersContinuous"];
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