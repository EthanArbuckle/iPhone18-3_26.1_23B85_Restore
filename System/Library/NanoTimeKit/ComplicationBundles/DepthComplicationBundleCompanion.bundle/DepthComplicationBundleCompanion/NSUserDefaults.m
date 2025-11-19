@interface NSUserDefaults
- (BOOL)compOverrideEnabled;
- (double)compOverrideDepth;
- (double)compOverrideHistDepth;
- (double)compOverrideHistDuration;
- (double)compOverrideHistTemp;
- (double)compOverrideTemp;
- (int64_t)compOverrideHistNumberOfDives;
@end

@implementation NSUserDefaults

- (double)compOverrideDepth
{
  v2 = self;
  v3 = sub_35398();
  [(NSUserDefaults *)v2 doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (double)compOverrideHistDepth
{
  v2 = self;
  v3 = sub_35398();
  [(NSUserDefaults *)v2 doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (double)compOverrideTemp
{
  v2 = self;
  v3 = sub_35398();
  [(NSUserDefaults *)v2 doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (double)compOverrideHistTemp
{
  v2 = self;
  v3 = sub_35398();
  [(NSUserDefaults *)v2 doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (int64_t)compOverrideHistNumberOfDives
{
  v2 = self;
  v3 = sub_35398();
  v4 = [(NSUserDefaults *)v2 integerForKey:v3];

  return v4;
}

- (double)compOverrideHistDuration
{
  v2 = self;
  v3 = sub_35398();
  [(NSUserDefaults *)v2 doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (BOOL)compOverrideEnabled
{
  v2 = self;
  v3 = sub_35398();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

@end