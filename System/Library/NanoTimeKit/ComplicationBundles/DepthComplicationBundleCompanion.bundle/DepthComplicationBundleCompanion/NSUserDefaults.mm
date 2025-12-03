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
  selfCopy = self;
  v3 = sub_35398();
  [(NSUserDefaults *)selfCopy doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (double)compOverrideHistDepth
{
  selfCopy = self;
  v3 = sub_35398();
  [(NSUserDefaults *)selfCopy doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (double)compOverrideTemp
{
  selfCopy = self;
  v3 = sub_35398();
  [(NSUserDefaults *)selfCopy doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (double)compOverrideHistTemp
{
  selfCopy = self;
  v3 = sub_35398();
  [(NSUserDefaults *)selfCopy doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (int64_t)compOverrideHistNumberOfDives
{
  selfCopy = self;
  v3 = sub_35398();
  v4 = [(NSUserDefaults *)selfCopy integerForKey:v3];

  return v4;
}

- (double)compOverrideHistDuration
{
  selfCopy = self;
  v3 = sub_35398();
  [(NSUserDefaults *)selfCopy doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (BOOL)compOverrideEnabled
{
  selfCopy = self;
  v3 = sub_35398();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

@end