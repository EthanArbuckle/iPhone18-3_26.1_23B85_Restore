@interface NSUserDefaults
- (BOOL)deleteSnaphotsAtLaunch;
- (BOOL)enableCustomGlitter;
- (BOOL)resumeFromLastPlayTime;
- (NSString)customGlitterVariant;
- (NSString)customVariant;
- (float)luminance;
- (void)setCustomGlitterVariant:(id)a3;
- (void)setCustomVariant:(id)a3;
- (void)setLuminance:(float)a3;
@end

@implementation NSUserDefaults

- (BOOL)enableCustomGlitter
{
  v2 = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (float)luminance
{
  v2 = self;
  v3 = sub_1000417CC();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setLuminance:(float)a3
{
  v6 = self;
  v4 = sub_1000417CC();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (NSString)customVariant
{
  v2 = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)v2 stringForKey:v3];

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

- (void)setCustomVariant:(id)a3
{
  if (a3)
  {
    sub_1000417FC();
    v4 = self;
    v5 = sub_1000417CC();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7 = sub_1000417CC();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (NSString)customGlitterVariant
{
  v2 = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)v2 stringForKey:v3];

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

- (void)setCustomGlitterVariant:(id)a3
{
  if (a3)
  {
    sub_1000417FC();
    v4 = self;
    v5 = sub_1000417CC();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7 = sub_1000417CC();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (BOOL)deleteSnaphotsAtLaunch
{
  v2 = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (BOOL)resumeFromLastPlayTime
{
  v2 = self;
  v3 = sub_1000417CC();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

@end