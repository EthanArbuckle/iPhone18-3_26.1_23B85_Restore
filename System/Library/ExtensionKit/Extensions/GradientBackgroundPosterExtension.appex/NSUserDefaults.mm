@interface NSUserDefaults
- (BOOL)deleteSnaphotsAtLaunch;
- (BOOL)enableCustomGlitter;
- (BOOL)resumeFromLastPlayTime;
- (NSString)customGlitterVariant;
- (NSString)customVariant;
- (float)luminance;
- (void)setCustomGlitterVariant:(id)variant;
- (void)setCustomVariant:(id)variant;
- (void)setLuminance:(float)luminance;
@end

@implementation NSUserDefaults

- (BOOL)enableCustomGlitter
{
  selfCopy = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (float)luminance
{
  selfCopy = self;
  v3 = sub_1000417CC();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setLuminance:(float)luminance
{
  selfCopy = self;
  v4 = sub_1000417CC();
  *&v5 = luminance;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (NSString)customVariant
{
  selfCopy = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)selfCopy stringForKey:v3];

  if (v4)
  {
    sub_1000417FC();

    v5 = sub_1000417CC();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setCustomVariant:(id)variant
{
  if (variant)
  {
    sub_1000417FC();
    selfCopy = self;
    v5 = sub_1000417CC();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7 = sub_1000417CC();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (NSString)customGlitterVariant
{
  selfCopy = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)selfCopy stringForKey:v3];

  if (v4)
  {
    sub_1000417FC();

    v5 = sub_1000417CC();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setCustomGlitterVariant:(id)variant
{
  if (variant)
  {
    sub_1000417FC();
    selfCopy = self;
    v5 = sub_1000417CC();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7 = sub_1000417CC();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (BOOL)deleteSnaphotsAtLaunch
{
  selfCopy = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (BOOL)resumeFromLastPlayTime
{
  selfCopy = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

@end